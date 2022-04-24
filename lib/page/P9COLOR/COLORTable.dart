import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/09-Wording.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'COLORCon.dart';
import 'COLORVar.dart';

String _searchResult = '';
late BuildContext COLORContexttable;

class COLORDataTable extends StatefulWidget {
  COLORDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _COLORDataTableState createState() => _COLORDataTableState();
}

class _COLORDataTableState extends State<COLORDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<WORDINGDataSetBloc>().add(ColorGetPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    COLORContexttable = context;
    final _MyData _data = _MyData(context, widget.data ?? []);

    void _sort<T>(Comparable<T> Function(dataset d) getField, int columnIndex,
        bool ascending) {
      _data._sort<T>(getField, ascending);
      setState(() {
        _sortColumnIndex = columnIndex;
        _sortAscending = ascending;
      });
    }

    return SingleChildScrollView(
      child: SizedBox(
        width: 1200,
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: const Icon(Icons.search),
                title: TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                    onChanged: (value) {
                      setState(() {
                        _searchResult = value;
                      });
                    }),
                trailing: IconButton(
                  icon: const Icon(Icons.cancel),
                  onPressed: () {
                    setState(() {
                      controller.clear();
                      _searchResult = '';
                    });
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: 1200,
                child: PaginatedDataTable(
                  source: _data,
                  header: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('COLOR'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<COLORDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<WORDINGDataSetBloc>()
                                      .add(ColorUpPressed()));
                              // BlocProvider.of<BlocPageRebuild>(context)
                              //     .rebuildPage();
                            },
                            child: const Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              COLOR.nc = false;
                              COLOR.iscon01 = true;
                              COLOR.con01 = '';
                              COLOR.con02 = '';
                              COLOR.con03 = '';
                              COLOR.con04 = '';
                              COLOR.conMAX01 = '';
                              COLOR.conMAX02 = '';
                              COLOR.conMAX03 = '';
                              COLOR.conMAX04 = '';
                              COLOR.conMAX05 = '';
                              COLOR.conMAX06 = '';
                              COLOR.conMAX07 = '';
                              COLOR.conMAX08 = '';
                              COLOR.conMAX09 = '';
                              COLOR.conMAX10 = '';
                              COLOR.conMAX11 = '';
                              COLOR.conMAX12 = '';
                              COLOR.conMIN01 = '';
                              COLOR.conMIN02 = '';
                              COLOR.conMIN03 = '';
                              COLOR.conMIN04 = '';
                              COLOR.conMIN05 = '';
                              COLOR.conMIN06 = '';
                              COLOR.conMIN07 = '';
                              COLOR.conMIN08 = '';
                              COLOR.conMIN09 = '';
                              COLOR.conMIN10 = '';
                              COLOR.conMIN11 = '';
                              COLOR.conMIN12 = '';
                              COLORConsoleBox();
                            },
                            // style: ButtonStyle(
                            //   backgroundColor:
                            //       MaterialStateProperty.all(Colors.red),
                            // ),

                            child: const Text("NEW"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  columns: [
                    DataColumn(
                        label: const Text('ID'),
                        onSort: (int columnIndex, bool ascending) => _sort<num>(
                            (dataset d) => d.id, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field01'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f01, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field02'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f02, columnIndex, ascending)),
                    // DataColumn(
                    //     label: const Text('Field03'),
                    //     onSort: (int columnIndex, bool ascending) =>
                    //         _sort<String>(
                    //             (dataset d) => d.f03, columnIndex, ascending)),
                    // DataColumn(
                    //     label: const Text('Field04'),
                    //     onSort: (int columnIndex, bool ascending) =>
                    //         _sort<String>(
                    //             (dataset d) => d.f04, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field05'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f05, columnIndex, ascending)),
                  ],
                  columnSpacing: 100,
                  horizontalMargin: 10,
                  rowsPerPage: 5,
                  sortColumnIndex: _sortColumnIndex,
                  sortAscending: _sortAscending,
                  showCheckboxColumn: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// The "soruce" of the table
class _MyData extends DataTableSource {
  // Generate some made-up data
  final BuildContext context;
  late List<dataset> _data;
  late List<dataset> input;
  List<dataset> _data_exp = [];

  int _selectedCount = 0;
  _MyData.empty(this.context) {
    _data = [];
  }
  _MyData(this.context, this.input) {
    _data = input;
    _data_exp = [];

    for (int i = 0; i < _data.length; i++) {
      if (_data[i].f01.toLowerCase().contains(_searchResult) ||
          _data[i].f02.toLowerCase().contains(_searchResult) ||
          _data[i].f03.toLowerCase().contains(_searchResult) ||
          _data[i].f04.toLowerCase().contains(_searchResult) ||
          _data[i].f05.toLowerCase().contains(_searchResult)) {
        _data_exp.add(_data[i]);
      }
    }
  }

  void _sort<T>(Comparable<T> Function(dataset d) getField, bool ascending) {
    _data_exp.sort((dataset a, dataset b) {
      final Comparable<T> aValue = getField(a);
      final Comparable<T> bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });
    notifyListeners();
  }

  @override
  bool get isRowCountApproximate => false;
  @override
  int get rowCount => _data_exp.length;
  @override
  int get selectedRowCount => 0;
  @override
  DataRow getRow(int index) {
    final dataset data = _data_exp[index];

    return DataRow.byIndex(
        index: index,
        selected: data.selected,
        onSelectChanged: (value) {
          if (data.selected != value) {
            //function
          }
        },
        cells: [
          DataCell(Text(data.id.toString())),
          DataCell(Text(data.f01)),
          DataCell(Text(data.f02)),
          // DataCell(Text(data.f03)),
          // DataCell(Text(data.f04)),
          DataCell(Row(
            children: [
              InkWell(
                onTap: () {
                  COLOR.nc = false;
                  COLOR.con01 = data.f01;
                  COLOR.con02 = data.f02;
                  COLOR.con03 = data.f03;
                  COLOR.con04 = data.f04;
                  COLOR.conMAX01 = data.f05;
                  COLOR.conMIN01 = data.f06;
                  COLOR.conMAX02 = data.f07;
                  COLOR.conMIN02 = data.f08;
                  COLOR.conMAX03 = data.f09;
                  COLOR.conMIN03 = data.f10;
                  COLOR.conMAX04 = data.f11;
                  COLOR.conMIN04 = data.f12;
                  COLOR.conMAX05 = data.f13;
                  COLOR.conMIN05 = data.f14;
                  COLOR.conMAX06 = data.f15;
                  COLOR.conMIN06 = data.f16;
                  COLOR.conMAX07 = data.f17;
                  COLOR.conMIN07 = data.f18;
                  COLOR.conMAX08 = data.f19;
                  COLOR.conMIN08 = data.f20;
                  COLOR.conMAX09 = data.f21;
                  COLOR.conMIN09 = data.f22;
                  COLOR.conMAX10 = data.f23;
                  COLOR.conMIN10 = data.f24;
                  COLOR.conMAX11 = data.f25;
                  COLOR.conMIN11 = data.f26;
                  COLOR.conMAX12 = data.f27;
                  COLOR.conMIN12 = data.f28;

                  COLORConsoleBox();
                  // print(data.f01);
                },
                child: const Icon(
                  Icons.edit,
                ),
              ),
              // InkWell(
              //   onTap: () {
              //     print(data.f02);
              //   },
              //   child: const Icon(
              //     Icons.delete,
              //   ),
              // )
            ],
          )),
        ]);
  }
}
