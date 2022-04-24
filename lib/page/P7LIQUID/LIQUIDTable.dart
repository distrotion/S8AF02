import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/07-Liquid.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'LIQUIDCon.dart';
import 'LIQUIDVar.dart';

String _searchResult = '';
late BuildContext LIQUIDContexttable;

class LIQUIDDataTable extends StatefulWidget {
  LIQUIDDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _LIQUIDDataTableState createState() => _LIQUIDDataTableState();
}

class _LIQUIDDataTableState extends State<LIQUIDDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<LIQUIDDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    LIQUIDContexttable = context;
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
                      const Text('LIQUID FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<LIQUIDDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<LIQUIDDataSetBloc>()
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
                              LIQUID.nc = true;
                              LIQUID.iscon01 = true;
                              LIQUID.con01 = '';
                              LIQUID.con02 = '';
                              LIQUID.con03 = '';
                              LIQUID.con04 = '';
                              LIQUID.conMAX01 = '';
                              LIQUID.conMAX02 = '';
                              LIQUID.conMAX03 = '';
                              LIQUID.conMAX04 = '';
                              LIQUID.conMAX05 = '';
                              LIQUID.conMAX06 = '';
                              LIQUID.conMAX07 = '';
                              LIQUID.conMAX08 = '';
                              LIQUID.conMAX09 = '';
                              LIQUID.conMAX10 = '';
                              LIQUID.conMAX11 = '';
                              LIQUID.conMAX12 = '';
                              LIQUID.conMIN01 = '';
                              LIQUID.conMIN02 = '';
                              LIQUID.conMIN03 = '';
                              LIQUID.conMIN04 = '';
                              LIQUID.conMIN05 = '';
                              LIQUID.conMIN06 = '';
                              LIQUID.conMIN07 = '';
                              LIQUID.conMIN08 = '';
                              LIQUID.conMIN09 = '';
                              LIQUID.conMIN10 = '';
                              LIQUID.conMIN11 = '';
                              LIQUID.conMIN12 = '';
                              LIQUIDConsoleBox();
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
                  LIQUID.nc = false;
                  LIQUID.con01 = data.f01;
                  LIQUID.con02 = data.f02;
                  LIQUID.con03 = data.f03;
                  LIQUID.con04 = data.f04;
                  LIQUID.conMAX01 = data.f05;
                  LIQUID.conMIN01 = data.f06;
                  LIQUID.conMAX02 = data.f07;
                  LIQUID.conMIN02 = data.f08;
                  LIQUID.conMAX03 = data.f09;
                  LIQUID.conMIN03 = data.f10;
                  LIQUID.conMAX04 = data.f11;
                  LIQUID.conMIN04 = data.f12;
                  LIQUID.conMAX05 = data.f13;
                  LIQUID.conMIN05 = data.f14;
                  LIQUID.conMAX06 = data.f15;
                  LIQUID.conMIN06 = data.f16;
                  LIQUID.conMAX07 = data.f17;
                  LIQUID.conMIN07 = data.f18;
                  LIQUID.conMAX08 = data.f19;
                  LIQUID.conMIN08 = data.f20;
                  LIQUID.conMAX09 = data.f21;
                  LIQUID.conMIN09 = data.f22;
                  LIQUID.conMAX10 = data.f23;
                  LIQUID.conMIN10 = data.f24;
                  LIQUID.conMAX11 = data.f25;
                  LIQUID.conMIN11 = data.f26;
                  LIQUID.conMAX12 = data.f27;
                  LIQUID.conMIN12 = data.f28;

                  LIQUIDConsoleBox();
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
