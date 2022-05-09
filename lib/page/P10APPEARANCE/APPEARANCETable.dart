import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/09-Wording.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'APPEARANCECon.dart';
import 'APPEARANCEVar.dart';

String _searchResult = '';
late BuildContext APPEARANCEContexttable;

class APPEARANCEDataTable extends StatefulWidget {
  APPEARANCEDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _APPEARANCEDataTableState createState() => _APPEARANCEDataTableState();
}

class _APPEARANCEDataTableState extends State<APPEARANCEDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<WORDINGDataSetBloc>().add(AppearanceGetPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    APPEARANCEContexttable = context;
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
                      const Text('APPEARANCE'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<APPEARANCEDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<WORDINGDataSetBloc>()
                                      .add(AppearanceUpPressed()));
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
                              APPEARANCE.nc = false;
                              APPEARANCE.iscon01 = true;
                              APPEARANCE.con01 = '';
                              APPEARANCE.con02 = '';
                              APPEARANCE.con03 = '';
                              APPEARANCE.con04 = '';
                              APPEARANCE.conMAX01 = '';
                              APPEARANCE.conMAX02 = '';
                              APPEARANCE.conMAX03 = '';
                              APPEARANCE.conMAX04 = '';
                              APPEARANCE.conMAX05 = '';
                              APPEARANCE.conMAX06 = '';
                              APPEARANCE.conMAX07 = '';
                              APPEARANCE.conMAX08 = '';
                              APPEARANCE.conMAX09 = '';
                              APPEARANCE.conMAX10 = '';
                              APPEARANCE.conMAX11 = '';
                              APPEARANCE.conMAX12 = '';
                              APPEARANCE.conMIN01 = '';
                              APPEARANCE.conMIN02 = '';
                              APPEARANCE.conMIN03 = '';
                              APPEARANCE.conMIN04 = '';
                              APPEARANCE.conMIN05 = '';
                              APPEARANCE.conMIN06 = '';
                              APPEARANCE.conMIN07 = '';
                              APPEARANCE.conMIN08 = '';
                              APPEARANCE.conMIN09 = '';
                              APPEARANCE.conMIN10 = '';
                              APPEARANCE.conMIN11 = '';
                              APPEARANCE.conMIN12 = '';
                              APPEARANCEConsoleBox();
                            },
                            // style: ButtonStyle(
                            //   backgroundAPPEARANCE:
                            //       MaterialStateProperty.all(APPEARANCEs.red),
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
                    DataColumn(
                        label: const Text('Field03'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f03, columnIndex, ascending)),
                    DataColumn(
                        label: const Text('Field04'),
                        onSort: (int columnIndex, bool ascending) =>
                            _sort<String>(
                                (dataset d) => d.f04, columnIndex, ascending)),
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
          DataCell(Text(data.f03)),
          DataCell(Text(data.f04)),
          DataCell(Row(
            children: [
              InkWell(
                onTap: () {
                  APPEARANCE.nc = false;
                  APPEARANCE.con01 = data.f01;
                  APPEARANCE.con02 = data.f02;
                  APPEARANCE.con03 = data.f03;
                  APPEARANCE.con04 = data.f04;
                  APPEARANCE.conMAX01 = data.f05;
                  APPEARANCE.conMIN01 = data.f06;
                  APPEARANCE.conMAX02 = data.f07;
                  APPEARANCE.conMIN02 = data.f08;
                  APPEARANCE.conMAX03 = data.f09;
                  APPEARANCE.conMIN03 = data.f10;
                  APPEARANCE.conMAX04 = data.f11;
                  APPEARANCE.conMIN04 = data.f12;
                  APPEARANCE.conMAX05 = data.f13;
                  APPEARANCE.conMIN05 = data.f14;
                  APPEARANCE.conMAX06 = data.f15;
                  APPEARANCE.conMIN06 = data.f16;
                  APPEARANCE.conMAX07 = data.f17;
                  APPEARANCE.conMIN07 = data.f18;
                  APPEARANCE.conMAX08 = data.f19;
                  APPEARANCE.conMIN08 = data.f20;
                  APPEARANCE.conMAX09 = data.f21;
                  APPEARANCE.conMIN09 = data.f22;
                  APPEARANCE.conMAX10 = data.f23;
                  APPEARANCE.conMIN10 = data.f24;
                  APPEARANCE.conMAX11 = data.f25;
                  APPEARANCE.conMIN11 = data.f26;
                  APPEARANCE.conMAX12 = data.f27;
                  APPEARANCE.conMIN12 = data.f28;

                  APPEARANCEConsoleBox();
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
