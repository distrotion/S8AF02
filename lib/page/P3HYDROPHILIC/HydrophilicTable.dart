import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/03-HydroPhilic.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'HydrophilicCon.dart';
import 'HydrophilicVar.dart';

String _searchResult = '';
late BuildContext HydrophilicContexttable;

class HydrophilicDataTable extends StatefulWidget {
  HydrophilicDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _HydrophilicDataTableState createState() => _HydrophilicDataTableState();
}

class _HydrophilicDataTableState extends State<HydrophilicDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<HydrophilicDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    HydrophilicContexttable = context;
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
                      const Text('HYDROPHILIC FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<HYDROPHILICDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<HydrophilicDataSetBloc>()
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
                              HYDROPHILIC.nc = true;
                              HYDROPHILIC.iscon01 = true;
                              HYDROPHILIC.con01 = '';
                              HYDROPHILIC.con02 = '';
                              HYDROPHILIC.con03 = '';
                              HYDROPHILIC.con04 = '';
                              HYDROPHILIC.conMAX01 = '';
                              HYDROPHILIC.conMAX02 = '';
                              HYDROPHILIC.conMAX03 = '';
                              HYDROPHILIC.conMAX04 = '';
                              HYDROPHILIC.conMAX05 = '';
                              HYDROPHILIC.conMAX06 = '';
                              HYDROPHILIC.conMIN01 = '';
                              HYDROPHILIC.conMIN02 = '';
                              HYDROPHILIC.conMIN03 = '';
                              HYDROPHILIC.conMIN04 = '';
                              HYDROPHILIC.conMIN05 = '';
                              HYDROPHILIC.conMIN06 = '';
                              HYDROPHILICConsoleBox();
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
                  HYDROPHILIC.nc = false;
                  HYDROPHILIC.con01 = data.f01;
                  HYDROPHILIC.con02 = data.f02;
                  HYDROPHILIC.con03 = data.f03;
                  HYDROPHILIC.con04 = data.f04;
                  HYDROPHILIC.conMAX01 = data.f05;
                  HYDROPHILIC.conMIN01 = data.f06;
                  HYDROPHILIC.conMAX02 = data.f07;
                  HYDROPHILIC.conMIN02 = data.f08;
                  HYDROPHILIC.conMAX03 = data.f09;
                  HYDROPHILIC.conMIN03 = data.f10;
                  HYDROPHILIC.conMAX04 = data.f11;
                  HYDROPHILIC.conMIN04 = data.f12;
                  HYDROPHILIC.conMAX05 = data.f13;
                  HYDROPHILIC.conMIN05 = data.f14;
                  HYDROPHILIC.conMAX06 = data.f15;
                  HYDROPHILIC.conMIN06 = data.f16;

                  HYDROPHILICConsoleBox();
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
