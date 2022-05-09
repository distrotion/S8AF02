import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/02-CoilCoating.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'CoilCoatingCon.dart';
import 'CoilCoatingVar.dart';

String _searchResult = '';
late BuildContext CoilCoatingContexttable;

class CoilCoatingDataTable extends StatefulWidget {
  CoilCoatingDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _CoilCoatingDataTableState createState() => _CoilCoatingDataTableState();
}

class _CoilCoatingDataTableState extends State<CoilCoatingDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<CoilCoatingDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    CoilCoatingContexttable = context;
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
                      const Text('CoilCoating FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<CoilCoatingDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<CoilCoatingDataSetBloc>()
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
                              COILCOATING.nc = true;
                              COILCOATING.iscon01 = true;
                              COILCOATING.con01 = '';
                              COILCOATING.con02 = '';
                              COILCOATING.con03 = '';
                              COILCOATING.con04 = '';
                              COILCOATING.conMAX01 = '';
                              COILCOATING.conMAX02 = '';
                              COILCOATING.conMAX03 = '';
                              COILCOATING.conMAX04 = '';
                              COILCOATING.conMAX05 = '';
                              COILCOATING.conMAX06 = '';
                              COILCOATING.conMAX07 = '';
                              COILCOATING.conMAX08 = '';
                              COILCOATING.conMAX09 = '';
                              COILCOATING.conMAX10 = '';
                              COILCOATING.conMAX11 = '';
                              COILCOATING.conMAX12 = '';
                              COILCOATING.conMIN01 = '';
                              COILCOATING.conMIN02 = '';
                              COILCOATING.conMIN03 = '';
                              COILCOATING.conMIN04 = '';
                              COILCOATING.conMIN05 = '';
                              COILCOATING.conMIN06 = '';
                              COILCOATING.conMIN07 = '';
                              COILCOATING.conMIN08 = '';
                              COILCOATING.conMIN09 = '';
                              COILCOATING.conMIN10 = '';
                              COILCOATING.conMIN11 = '';
                              COILCOATING.conMIN12 = '';
                              COILCOATING.conMAX13 = '';
                              COILCOATING.conMIN13 = '';
                              COILCOATING.conMAX14 = '';
                              COILCOATING.conMIN14 = '';
                              COILCOATING.conMAX15 = '';
                              COILCOATING.conMIN15 = '';
                              COILCOATING.conMAX16 = '';
                              COILCOATING.conMIN16 = '';
                              COILCOATING.conMAX17 = '';
                              COILCOATING.conMIN17 = '';
                              COILCOATING.conMAX18 = '';
                              COILCOATING.conMIN18 = '';
                              COILCOATING.conMAX19 = '';
                              COILCOATING.conMIN19 = '';
                              COILCOATING.conMAX20 = '';
                              COILCOATING.conMIN20 = '';
                              COILCOATING.conMAX21 = '';
                              COILCOATING.conMIN21 = '';
                              COILCOATING.conMAX22 = '';
                              COILCOATING.conMIN22 = '';
                              COILCOATING.conMAX23 = '';
                              COILCOATING.conMIN23 = '';
                              COILCOATING.conMAX24 = '';
                              COILCOATING.conMIN24 = '';
                              COILCOATING.conMAX25 = '';
                              COILCOATING.conMIN25 = '';
                              COILCOATING.conMAX26 = '';
                              COILCOATING.conMIN26 = '';
                              COILCOATING.conMAX27 = '';
                              COILCOATING.conMIN27 = '';
                              COILCOATING.conMAX28 = '';
                              COILCOATING.conMIN28 = '';
                              COILCOATING.conMAX29 = '';
                              COILCOATING.conMIN29 = '';
                              COILCOATING.conMAX30 = '';
                              COILCOATING.conMIN30 = '';
                              //
                              COILCOATING.con03COA = '';
                              COILCOATING.con04COA = '';
                              COILCOATING.conMAX01COA = '';
                              COILCOATING.conMIN01COA = '';
                              COILCOATING.conMAX02COA = '';
                              COILCOATING.conMIN02COA = '';
                              COILCOATING.conMAX03COA = '';
                              COILCOATING.conMIN03COA = '';
                              COILCOATING.conMAX04COA = '';
                              COILCOATING.conMIN04COA = '';
                              COILCOATING.conMAX05COA = '';
                              COILCOATING.conMIN05COA = '';
                              COILCOATING.conMAX06COA = '';
                              COILCOATING.conMIN06COA = '';
                              COILCOATING.conMAX07COA = '';
                              COILCOATING.conMIN07COA = '';
                              COILCOATING.conMAX08COA = '';
                              COILCOATING.conMIN08COA = '';
                              COILCOATING.conMAX09COA = '';
                              COILCOATING.conMIN09COA = '';
                              COILCOATING.conMAX10COA = '';
                              COILCOATING.conMIN10COA = '';
                              COILCOATING.conMAX11COA = '';
                              COILCOATING.conMIN11COA = '';
                              COILCOATING.conMAX12COA = '';
                              COILCOATING.conMIN12COA = '';
                              COILCOATING.conMAX13COA = '';
                              COILCOATING.conMIN13COA = '';
                              COILCOATING.conMAX14COA = '';
                              COILCOATING.conMIN14COA = '';
                              COILCOATING.conMAX15COA = '';
                              COILCOATING.conMIN15COA = '';
                              COILCOATING.conMAX16COA = '';
                              COILCOATING.conMIN16COA = '';
                              COILCOATING.conMAX17COA = '';
                              COILCOATING.conMIN17COA = '';
                              COILCOATING.conMAX18COA = '';
                              COILCOATING.conMIN18COA = '';
                              COILCOATING.conMAX19COA = '';
                              COILCOATING.conMIN19COA = '';
                              COILCOATING.conMAX20COA = '';
                              COILCOATING.conMIN20COA = '';
                              COILCOATING.conMAX21COA = '';
                              COILCOATING.conMIN21COA = '';
                              COILCOATING.conMAX22COA = '';
                              COILCOATING.conMIN22COA = '';
                              COILCOATING.conMAX23COA = '';
                              COILCOATING.conMIN23COA = '';
                              COILCOATING.conMAX24COA = '';
                              COILCOATING.conMIN24COA = '';
                              COILCOATING.conMAX25COA = '';
                              COILCOATING.conMIN25COA = '';
                              COILCOATING.conMAX26COA = '';
                              COILCOATING.conMIN26COA = '';
                              COILCOATING.conMAX27COA = '';
                              COILCOATING.conMIN27COA = '';
                              COILCOATING.conMAX28COA = '';
                              COILCOATING.conMIN28COA = '';
                              COILCOATING.conMAX29COA = '';
                              COILCOATING.conMIN29COA = '';
                              COILCOATING.conMAX30COA = '';
                              COILCOATING.conMIN30COA = '';
                              COILCOATINGConsoleBox();
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
                  COILCOATING.nc = false;
                  COILCOATING.con01 = data.f01;
                  COILCOATING.con02 = data.f02;
                  COILCOATING.con03 = data.f03;
                  COILCOATING.con04 = data.f04;
                  COILCOATING.conMAX01 = data.f05;
                  COILCOATING.conMIN01 = data.f06;
                  COILCOATING.conMAX02 = data.f07;
                  COILCOATING.conMIN02 = data.f08;
                  COILCOATING.conMAX03 = data.f09;
                  COILCOATING.conMIN03 = data.f10;
                  COILCOATING.conMAX04 = data.f11;
                  COILCOATING.conMIN04 = data.f12;
                  COILCOATING.conMAX05 = data.f13;
                  COILCOATING.conMIN05 = data.f14;
                  COILCOATING.conMAX06 = data.f15;
                  COILCOATING.conMIN06 = data.f16;
                  COILCOATING.conMAX07 = data.f17;
                  COILCOATING.conMIN07 = data.f18;
                  COILCOATING.conMAX08 = data.f19;
                  COILCOATING.conMIN08 = data.f20;
                  COILCOATING.conMAX09 = data.f21;
                  COILCOATING.conMIN09 = data.f22;
                  COILCOATING.conMAX10 = data.f23;
                  COILCOATING.conMIN10 = data.f24;
                  COILCOATING.conMAX11 = data.f25;
                  COILCOATING.conMIN11 = data.f26;
                  COILCOATING.conMAX12 = data.f27;
                  COILCOATING.conMIN12 = data.f28;
                  COILCOATING.conMAX13 = data.f29;
                  COILCOATING.conMIN13 = data.f30;
                  COILCOATING.conMAX14 = data.f31;
                  COILCOATING.conMIN14 = data.f32;
                  COILCOATING.conMAX15 = data.f33;
                  COILCOATING.conMIN15 = data.f34;
                  COILCOATING.conMAX16 = data.f35;
                  COILCOATING.conMIN16 = data.f36;
                  COILCOATING.conMAX17 = data.f37;
                  COILCOATING.conMIN17 = data.f38;
                  COILCOATING.conMAX18 = data.f39;
                  COILCOATING.conMIN18 = data.f40;
                  COILCOATING.conMAX19 = data.f41;
                  COILCOATING.conMIN19 = data.f42;
                  COILCOATING.conMAX20 = data.f43;
                  COILCOATING.conMIN20 = data.f44;
                  COILCOATING.conMAX21 = data.f45;
                  COILCOATING.conMIN21 = data.f46;
                  COILCOATING.conMAX22 = data.f47;
                  COILCOATING.conMIN22 = data.f48;
                  COILCOATING.conMAX23 = data.f49;
                  COILCOATING.conMIN23 = data.f50;
                  COILCOATING.conMAX24 = data.f51;
                  COILCOATING.conMIN24 = data.f52;
                  COILCOATING.conMAX25 = data.f53;
                  COILCOATING.conMIN25 = data.f54;
                  COILCOATING.conMAX26 = data.f55;
                  COILCOATING.conMIN26 = data.f56;
                  COILCOATING.conMAX27 = data.f57;
                  COILCOATING.conMIN27 = data.f58;
                  COILCOATING.conMAX28 = data.f59;
                  COILCOATING.conMIN28 = data.f60;
                  COILCOATING.conMAX29 = data.f61;
                  COILCOATING.conMIN29 = data.f62;
                  COILCOATING.conMAX30 = data.f63;
                  COILCOATING.conMIN30 = data.f64;
                  //
                  COILCOATING.con03COA = data.f65;
                  COILCOATING.con04COA = data.f66;
                  COILCOATING.conMAX01COA = data.f67;
                  COILCOATING.conMIN01COA = data.f68;
                  COILCOATING.conMAX02COA = data.f69;
                  COILCOATING.conMIN02COA = data.f70;
                  COILCOATING.conMAX03COA = data.f71;
                  COILCOATING.conMIN03COA = data.f72;
                  COILCOATING.conMAX04COA = data.f73;
                  COILCOATING.conMIN04COA = data.f74;
                  COILCOATING.conMAX05COA = data.f75;
                  COILCOATING.conMIN05COA = data.f76;
                  COILCOATING.conMAX06COA = data.f77;
                  COILCOATING.conMIN06COA = data.f78;
                  COILCOATING.conMAX07COA = data.f79;
                  COILCOATING.conMIN07COA = data.f80;
                  COILCOATING.conMAX08COA = data.f81;
                  COILCOATING.conMIN08COA = data.f82;
                  COILCOATING.conMAX09COA = data.f83;
                  COILCOATING.conMIN09COA = data.f84;
                  COILCOATING.conMAX10COA = data.f85;
                  COILCOATING.conMIN10COA = data.f86;
                  COILCOATING.conMAX11COA = data.f87;
                  COILCOATING.conMIN11COA = data.f88;
                  COILCOATING.conMAX12COA = data.f89;
                  COILCOATING.conMIN12COA = data.f90;
                  COILCOATING.conMAX13COA = data.f91;
                  COILCOATING.conMIN13COA = data.f92;
                  COILCOATING.conMAX14COA = data.f93;
                  COILCOATING.conMIN14COA = data.f94;
                  COILCOATING.conMAX15COA = data.f95;
                  COILCOATING.conMIN15COA = data.f96;
                  COILCOATING.conMAX16COA = data.f97;
                  COILCOATING.conMIN16COA = data.f98;
                  COILCOATING.conMAX17COA = data.f99;
                  COILCOATING.conMIN17COA = data.f100;
                  COILCOATING.conMAX18COA = data.f101;
                  COILCOATING.conMIN18COA = data.f102;
                  COILCOATING.conMAX19COA = data.f103;
                  COILCOATING.conMIN19COA = data.f104;
                  COILCOATING.conMAX20COA = data.f105;
                  COILCOATING.conMIN20COA = data.f106;
                  COILCOATING.conMAX21COA = data.f107;
                  COILCOATING.conMIN21COA = data.f108;
                  COILCOATING.conMAX22COA = data.f109;
                  COILCOATING.conMIN22COA = data.f110;
                  COILCOATING.conMAX23COA = data.f111;
                  COILCOATING.conMIN23COA = data.f112;
                  COILCOATING.conMAX24COA = data.f113;
                  COILCOATING.conMIN24COA = data.f114;
                  COILCOATING.conMAX25COA = data.f115;
                  COILCOATING.conMIN25COA = data.f116;
                  COILCOATING.conMAX26COA = data.f117;
                  COILCOATING.conMIN26COA = data.f118;
                  COILCOATING.conMAX27COA = data.f119;
                  COILCOATING.conMIN27COA = data.f120;
                  COILCOATING.conMAX28COA = data.f121;
                  COILCOATING.conMIN28COA = data.f122;
                  COILCOATING.conMAX29COA = data.f123;
                  COILCOATING.conMIN29COA = data.f124;
                  COILCOATING.conMAX30COA = data.f125;
                  COILCOATING.conMIN30COA = data.f126;
                  COILCOATINGConsoleBox();
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
