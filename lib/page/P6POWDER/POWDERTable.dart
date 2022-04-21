import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/06-Powder.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'POWDERCon.dart';
import 'POWDERVar.dart';

String _searchResult = '';
late BuildContext POWDERContexttable;

class POWDERDataTable extends StatefulWidget {
  POWDERDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _POWDERDataTableState createState() => _POWDERDataTableState();
}

class _POWDERDataTableState extends State<POWDERDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<POWDERDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    POWDERContexttable = context;
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
                      const Text('POWDER FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<POWDERDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<POWDERDataSetBloc>()
                                      .add(GetDataPressed()));
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
                              POWDER.nc = true;
                              POWDER.iscon01 = true;
                              POWDER.con01 = '';
                              POWDER.con02 = '';
                              POWDER.con03 = '';
                              POWDER.con04 = '';
                              POWDER.conMAX01 = '';
                              POWDER.conMAX02 = '';
                              POWDER.conMAX03 = '';
                              POWDER.conMAX04 = '';
                              POWDER.conMAX05 = '';
                              POWDER.conMAX06 = '';
                              POWDER.conMAX07 = '';
                              POWDER.conMAX08 = '';
                              POWDER.conMAX09 = '';
                              POWDER.conMAX10 = '';
                              POWDER.conMAX11 = '';
                              POWDER.conMAX12 = '';
                              POWDER.conMIN01 = '';
                              POWDER.conMIN02 = '';
                              POWDER.conMIN03 = '';
                              POWDER.conMIN04 = '';
                              POWDER.conMIN05 = '';
                              POWDER.conMIN06 = '';
                              POWDER.conMIN07 = '';
                              POWDER.conMIN08 = '';
                              POWDER.conMIN09 = '';
                              POWDER.conMIN10 = '';
                              POWDER.conMIN11 = '';
                              POWDER.conMIN12 = '';
                              POWDERConsoleBox();
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
                  POWDER.nc = false;
                  POWDER.con01 = data.f01;
                  POWDER.con02 = data.f02;
                  POWDER.con03 = data.f03;
                  POWDER.con04 = data.f04;
                  POWDER.conMAX01 = data.f05;
                  POWDER.conMIN01 = data.f06;
                  POWDER.conMAX02 = data.f07;
                  POWDER.conMIN02 = data.f08;
                  POWDER.conMAX03 = data.f09;
                  POWDER.conMIN03 = data.f10;
                  POWDER.conMAX04 = data.f11;
                  POWDER.conMIN04 = data.f12;
                  POWDER.conMAX05 = data.f13;
                  POWDER.conMIN05 = data.f14;
                  POWDER.conMAX06 = data.f15;
                  POWDER.conMIN06 = data.f16;
                  POWDER.conMAX07 = data.f17;
                  POWDER.conMIN07 = data.f18;
                  POWDER.conMAX08 = data.f19;
                  POWDER.conMIN08 = data.f20;
                  POWDER.conMAX09 = data.f21;
                  POWDER.conMIN09 = data.f22;
                  POWDER.conMAX10 = data.f23;
                  POWDER.conMIN10 = data.f24;
                  POWDER.conMAX11 = data.f25;
                  POWDER.conMIN11 = data.f26;
                  POWDER.conMAX12 = data.f27;
                  POWDER.conMIN12 = data.f28;

                  POWDERConsoleBox();
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
