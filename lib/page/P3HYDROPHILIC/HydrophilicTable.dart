import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/03-HydroPhilic.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
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
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
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
                              HYDROPHILIC.conMAX07 = '';
                              HYDROPHILIC.conMAX08 = '';
                              HYDROPHILIC.conMAX09 = '';
                              HYDROPHILIC.conMAX10 = '';
                              HYDROPHILIC.conMAX11 = '';
                              HYDROPHILIC.conMAX12 = '';
                              HYDROPHILIC.conMIN01 = '';
                              HYDROPHILIC.conMIN02 = '';
                              HYDROPHILIC.conMIN03 = '';
                              HYDROPHILIC.conMIN04 = '';
                              HYDROPHILIC.conMIN05 = '';
                              HYDROPHILIC.conMIN06 = '';
                              HYDROPHILIC.conMIN07 = '';
                              HYDROPHILIC.conMIN08 = '';
                              HYDROPHILIC.conMIN09 = '';
                              HYDROPHILIC.conMIN10 = '';
                              HYDROPHILIC.conMIN11 = '';
                              HYDROPHILIC.conMIN12 = '';
                              HYDROPHILIC.conMAX13 = '';
                              HYDROPHILIC.conMIN13 = '';
                              HYDROPHILIC.conMAX14 = '';
                              HYDROPHILIC.conMIN14 = '';
                              HYDROPHILIC.conMAX15 = '';
                              HYDROPHILIC.conMIN15 = '';
                              HYDROPHILIC.conMAX16 = '';
                              HYDROPHILIC.conMIN16 = '';
                              HYDROPHILIC.conMAX17 = '';
                              HYDROPHILIC.conMIN17 = '';
                              HYDROPHILIC.conMAX18 = '';
                              HYDROPHILIC.conMIN18 = '';
                              HYDROPHILIC.conMAX19 = '';
                              HYDROPHILIC.conMIN19 = '';
                              HYDROPHILIC.conMAX20 = '';
                              HYDROPHILIC.conMIN20 = '';
                              HYDROPHILIC.conMAX21 = '';
                              HYDROPHILIC.conMIN21 = '';
                              HYDROPHILIC.conMAX22 = '';
                              HYDROPHILIC.conMIN22 = '';
                              HYDROPHILIC.conMAX23 = '';
                              HYDROPHILIC.conMIN23 = '';
                              HYDROPHILIC.conMAX24 = '';
                              HYDROPHILIC.conMIN24 = '';
                              HYDROPHILIC.conMAX25 = '';
                              HYDROPHILIC.conMIN25 = '';
                              HYDROPHILIC.conMAX26 = '';
                              HYDROPHILIC.conMIN26 = '';
                              HYDROPHILIC.conMAX27 = '';
                              HYDROPHILIC.conMIN27 = '';
                              HYDROPHILIC.conMAX28 = '';
                              HYDROPHILIC.conMIN28 = '';
                              HYDROPHILIC.conMAX29 = '';
                              HYDROPHILIC.conMIN29 = '';
                              HYDROPHILIC.conMAX30 = '';
                              HYDROPHILIC.conMIN30 = '';
                              //
                              HYDROPHILIC.con03COA = '';
                              HYDROPHILIC.con04COA = '';
                              HYDROPHILIC.conMAX01COA = '';
                              HYDROPHILIC.conMIN01COA = '';
                              HYDROPHILIC.conMAX02COA = '';
                              HYDROPHILIC.conMIN02COA = '';
                              HYDROPHILIC.conMAX03COA = '';
                              HYDROPHILIC.conMIN03COA = '';
                              HYDROPHILIC.conMAX04COA = '';
                              HYDROPHILIC.conMIN04COA = '';
                              HYDROPHILIC.conMAX05COA = '';
                              HYDROPHILIC.conMIN05COA = '';
                              HYDROPHILIC.conMAX06COA = '';
                              HYDROPHILIC.conMIN06COA = '';
                              HYDROPHILIC.conMAX07COA = '';
                              HYDROPHILIC.conMIN07COA = '';
                              HYDROPHILIC.conMAX08COA = '';
                              HYDROPHILIC.conMIN08COA = '';
                              HYDROPHILIC.conMAX09COA = '';
                              HYDROPHILIC.conMIN09COA = '';
                              HYDROPHILIC.conMAX10COA = '';
                              HYDROPHILIC.conMIN10COA = '';
                              HYDROPHILIC.conMAX11COA = '';
                              HYDROPHILIC.conMIN11COA = '';
                              HYDROPHILIC.conMAX12COA = '';
                              HYDROPHILIC.conMIN12COA = '';
                              HYDROPHILIC.conMAX13COA = '';
                              HYDROPHILIC.conMIN13COA = '';
                              HYDROPHILIC.conMAX14COA = '';
                              HYDROPHILIC.conMIN14COA = '';
                              HYDROPHILIC.conMAX15COA = '';
                              HYDROPHILIC.conMIN15COA = '';
                              HYDROPHILIC.conMAX16COA = '';
                              HYDROPHILIC.conMIN16COA = '';
                              HYDROPHILIC.conMAX17COA = '';
                              HYDROPHILIC.conMIN17COA = '';
                              HYDROPHILIC.conMAX18COA = '';
                              HYDROPHILIC.conMIN18COA = '';
                              HYDROPHILIC.conMAX19COA = '';
                              HYDROPHILIC.conMIN19COA = '';
                              HYDROPHILIC.conMAX20COA = '';
                              HYDROPHILIC.conMIN20COA = '';
                              HYDROPHILIC.conMAX21COA = '';
                              HYDROPHILIC.conMIN21COA = '';
                              HYDROPHILIC.conMAX22COA = '';
                              HYDROPHILIC.conMIN22COA = '';
                              HYDROPHILIC.conMAX23COA = '';
                              HYDROPHILIC.conMIN23COA = '';
                              HYDROPHILIC.conMAX24COA = '';
                              HYDROPHILIC.conMIN24COA = '';
                              HYDROPHILIC.conMAX25COA = '';
                              HYDROPHILIC.conMIN25COA = '';
                              HYDROPHILIC.conMAX26COA = '';
                              HYDROPHILIC.conMIN26COA = '';
                              HYDROPHILIC.conMAX27COA = '';
                              HYDROPHILIC.conMIN27COA = '';
                              HYDROPHILIC.conMAX28COA = '';
                              HYDROPHILIC.conMIN28COA = '';
                              HYDROPHILIC.conMAX29COA = '';
                              HYDROPHILIC.conMIN29COA = '';
                              HYDROPHILIC.conMAX30COA = '';
                              HYDROPHILIC.conMIN30COA = '';
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
                  HYDROPHILIC.conMAX07 = data.f17;
                  HYDROPHILIC.conMIN07 = data.f18;
                  HYDROPHILIC.conMAX08 = data.f19;
                  HYDROPHILIC.conMIN08 = data.f20;
                  HYDROPHILIC.conMAX09 = data.f21;
                  HYDROPHILIC.conMIN09 = data.f22;
                  HYDROPHILIC.conMAX10 = data.f23;
                  HYDROPHILIC.conMIN10 = data.f24;
                  HYDROPHILIC.conMAX11 = data.f25;
                  HYDROPHILIC.conMIN11 = data.f26;
                  HYDROPHILIC.conMAX12 = data.f27;
                  HYDROPHILIC.conMIN12 = data.f28;
                  HYDROPHILIC.conMAX13 = data.f29;
                  HYDROPHILIC.conMIN13 = data.f30;
                  HYDROPHILIC.conMAX14 = data.f31;
                  HYDROPHILIC.conMIN14 = data.f32;
                  HYDROPHILIC.conMAX15 = data.f33;
                  HYDROPHILIC.conMIN15 = data.f34;
                  HYDROPHILIC.conMAX16 = data.f35;
                  HYDROPHILIC.conMIN16 = data.f36;
                  HYDROPHILIC.conMAX17 = data.f37;
                  HYDROPHILIC.conMIN17 = data.f38;
                  HYDROPHILIC.conMAX18 = data.f39;
                  HYDROPHILIC.conMIN18 = data.f40;
                  HYDROPHILIC.conMAX19 = data.f41;
                  HYDROPHILIC.conMIN19 = data.f42;
                  HYDROPHILIC.conMAX20 = data.f43;
                  HYDROPHILIC.conMIN20 = data.f44;
                  HYDROPHILIC.conMAX21 = data.f45;
                  HYDROPHILIC.conMIN21 = data.f46;
                  HYDROPHILIC.conMAX22 = data.f47;
                  HYDROPHILIC.conMIN22 = data.f48;
                  HYDROPHILIC.conMAX23 = data.f49;
                  HYDROPHILIC.conMIN23 = data.f50;
                  HYDROPHILIC.conMAX24 = data.f51;
                  HYDROPHILIC.conMIN24 = data.f52;
                  HYDROPHILIC.conMAX25 = data.f53;
                  HYDROPHILIC.conMIN25 = data.f54;
                  HYDROPHILIC.conMAX26 = data.f55;
                  HYDROPHILIC.conMIN26 = data.f56;
                  HYDROPHILIC.conMAX27 = data.f57;
                  HYDROPHILIC.conMIN27 = data.f58;
                  HYDROPHILIC.conMAX28 = data.f59;
                  HYDROPHILIC.conMIN28 = data.f60;
                  HYDROPHILIC.conMAX29 = data.f61;
                  HYDROPHILIC.conMIN29 = data.f62;
                  HYDROPHILIC.conMAX30 = data.f63;
                  HYDROPHILIC.conMIN30 = data.f64;
                  //
                  HYDROPHILIC.con03COA = data.f65;
                  HYDROPHILIC.con04COA = data.f66;
                  HYDROPHILIC.conMAX01COA = data.f67;
                  HYDROPHILIC.conMIN01COA = data.f68;
                  HYDROPHILIC.conMAX02COA = data.f69;
                  HYDROPHILIC.conMIN02COA = data.f70;
                  HYDROPHILIC.conMAX03COA = data.f71;
                  HYDROPHILIC.conMIN03COA = data.f72;
                  HYDROPHILIC.conMAX04COA = data.f73;
                  HYDROPHILIC.conMIN04COA = data.f74;
                  HYDROPHILIC.conMAX05COA = data.f75;
                  HYDROPHILIC.conMIN05COA = data.f76;
                  HYDROPHILIC.conMAX06COA = data.f77;
                  HYDROPHILIC.conMIN06COA = data.f78;
                  HYDROPHILIC.conMAX07COA = data.f79;
                  HYDROPHILIC.conMIN07COA = data.f80;
                  HYDROPHILIC.conMAX08COA = data.f81;
                  HYDROPHILIC.conMIN08COA = data.f82;
                  HYDROPHILIC.conMAX09COA = data.f83;
                  HYDROPHILIC.conMIN09COA = data.f84;
                  HYDROPHILIC.conMAX10COA = data.f85;
                  HYDROPHILIC.conMIN10COA = data.f86;
                  HYDROPHILIC.conMAX11COA = data.f87;
                  HYDROPHILIC.conMIN11COA = data.f88;
                  HYDROPHILIC.conMAX12COA = data.f89;
                  HYDROPHILIC.conMIN12COA = data.f90;
                  HYDROPHILIC.conMAX13COA = data.f91;
                  HYDROPHILIC.conMIN13COA = data.f92;
                  HYDROPHILIC.conMAX14COA = data.f93;
                  HYDROPHILIC.conMIN14COA = data.f94;
                  HYDROPHILIC.conMAX15COA = data.f95;
                  HYDROPHILIC.conMIN15COA = data.f96;
                  HYDROPHILIC.conMAX16COA = data.f97;
                  HYDROPHILIC.conMIN16COA = data.f98;
                  HYDROPHILIC.conMAX17COA = data.f99;
                  HYDROPHILIC.conMIN17COA = data.f100;
                  HYDROPHILIC.conMAX18COA = data.f101;
                  HYDROPHILIC.conMIN18COA = data.f102;
                  HYDROPHILIC.conMAX19COA = data.f103;
                  HYDROPHILIC.conMIN19COA = data.f104;
                  HYDROPHILIC.conMAX20COA = data.f105;
                  HYDROPHILIC.conMIN20COA = data.f106;
                  HYDROPHILIC.conMAX21COA = data.f107;
                  HYDROPHILIC.conMIN21COA = data.f108;
                  HYDROPHILIC.conMAX22COA = data.f109;
                  HYDROPHILIC.conMIN22COA = data.f110;
                  HYDROPHILIC.conMAX23COA = data.f111;
                  HYDROPHILIC.conMIN23COA = data.f112;
                  HYDROPHILIC.conMAX24COA = data.f113;
                  HYDROPHILIC.conMIN24COA = data.f114;
                  HYDROPHILIC.conMAX25COA = data.f115;
                  HYDROPHILIC.conMIN25COA = data.f116;
                  HYDROPHILIC.conMAX26COA = data.f117;
                  HYDROPHILIC.conMIN26COA = data.f118;
                  HYDROPHILIC.conMAX27COA = data.f119;
                  HYDROPHILIC.conMIN27COA = data.f120;
                  HYDROPHILIC.conMAX28COA = data.f121;
                  HYDROPHILIC.conMIN28COA = data.f122;
                  HYDROPHILIC.conMAX29COA = data.f123;
                  HYDROPHILIC.conMIN29COA = data.f124;
                  HYDROPHILIC.conMAX30COA = data.f125;
                  HYDROPHILIC.conMIN30COA = data.f126;

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
