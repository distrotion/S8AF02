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
                              LIQUID.conMAX13 = '';
                              LIQUID.conMIN13 = '';
                              LIQUID.conMAX14 = '';
                              LIQUID.conMIN14 = '';
                              LIQUID.conMAX15 = '';
                              LIQUID.conMIN15 = '';
                              LIQUID.conMAX16 = '';
                              LIQUID.conMIN16 = '';
                              LIQUID.conMAX17 = '';
                              LIQUID.conMIN17 = '';
                              LIQUID.conMAX18 = '';
                              LIQUID.conMIN18 = '';
                              LIQUID.conMAX19 = '';
                              LIQUID.conMIN19 = '';
                              LIQUID.conMAX20 = '';
                              LIQUID.conMIN20 = '';
                              LIQUID.conMAX21 = '';
                              LIQUID.conMIN21 = '';
                              LIQUID.conMAX22 = '';
                              LIQUID.conMIN22 = '';
                              LIQUID.conMAX23 = '';
                              LIQUID.conMIN23 = '';
                              LIQUID.conMAX24 = '';
                              LIQUID.conMIN24 = '';
                              LIQUID.conMAX25 = '';
                              LIQUID.conMIN25 = '';
                              LIQUID.conMAX26 = '';
                              LIQUID.conMIN26 = '';
                              LIQUID.conMAX27 = '';
                              LIQUID.conMIN27 = '';
                              LIQUID.conMAX28 = '';
                              LIQUID.conMIN28 = '';
                              LIQUID.conMAX29 = '';
                              LIQUID.conMIN29 = '';
                              LIQUID.conMAX30 = '';
                              LIQUID.conMIN30 = '';
                              //
                              LIQUID.con03COA = '';
                              LIQUID.con04COA = '';
                              LIQUID.conMAX01COA = '';
                              LIQUID.conMIN01COA = '';
                              LIQUID.conMAX02COA = '';
                              LIQUID.conMIN02COA = '';
                              LIQUID.conMAX03COA = '';
                              LIQUID.conMIN03COA = '';
                              LIQUID.conMAX04COA = '';
                              LIQUID.conMIN04COA = '';
                              LIQUID.conMAX05COA = '';
                              LIQUID.conMIN05COA = '';
                              LIQUID.conMAX06COA = '';
                              LIQUID.conMIN06COA = '';
                              LIQUID.conMAX07COA = '';
                              LIQUID.conMIN07COA = '';
                              LIQUID.conMAX08COA = '';
                              LIQUID.conMIN08COA = '';
                              LIQUID.conMAX09COA = '';
                              LIQUID.conMIN09COA = '';
                              LIQUID.conMAX10COA = '';
                              LIQUID.conMIN10COA = '';
                              LIQUID.conMAX11COA = '';
                              LIQUID.conMIN11COA = '';
                              LIQUID.conMAX12COA = '';
                              LIQUID.conMIN12COA = '';
                              LIQUID.conMAX13COA = '';
                              LIQUID.conMIN13COA = '';
                              LIQUID.conMAX14COA = '';
                              LIQUID.conMIN14COA = '';
                              LIQUID.conMAX15COA = '';
                              LIQUID.conMIN15COA = '';
                              LIQUID.conMAX16COA = '';
                              LIQUID.conMIN16COA = '';
                              LIQUID.conMAX17COA = '';
                              LIQUID.conMIN17COA = '';
                              LIQUID.conMAX18COA = '';
                              LIQUID.conMIN18COA = '';
                              LIQUID.conMAX19COA = '';
                              LIQUID.conMIN19COA = '';
                              LIQUID.conMAX20COA = '';
                              LIQUID.conMIN20COA = '';
                              LIQUID.conMAX21COA = '';
                              LIQUID.conMIN21COA = '';
                              LIQUID.conMAX22COA = '';
                              LIQUID.conMIN22COA = '';
                              LIQUID.conMAX23COA = '';
                              LIQUID.conMIN23COA = '';
                              LIQUID.conMAX24COA = '';
                              LIQUID.conMIN24COA = '';
                              LIQUID.conMAX25COA = '';
                              LIQUID.conMIN25COA = '';
                              LIQUID.conMAX26COA = '';
                              LIQUID.conMIN26COA = '';
                              LIQUID.conMAX27COA = '';
                              LIQUID.conMIN27COA = '';
                              LIQUID.conMAX28COA = '';
                              LIQUID.conMIN28COA = '';
                              LIQUID.conMAX29COA = '';
                              LIQUID.conMIN29COA = '';
                              LIQUID.conMAX30COA = '';
                              LIQUID.conMIN30COA = '';
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
                  LIQUID.conMAX13 = data.f29;
                  LIQUID.conMIN13 = data.f30;
                  LIQUID.conMAX14 = data.f31;
                  LIQUID.conMIN14 = data.f32;
                  LIQUID.conMAX15 = data.f33;
                  LIQUID.conMIN15 = data.f34;
                  LIQUID.conMAX16 = data.f35;
                  LIQUID.conMIN16 = data.f36;
                  LIQUID.conMAX17 = data.f37;
                  LIQUID.conMIN17 = data.f38;
                  LIQUID.conMAX18 = data.f39;
                  LIQUID.conMIN18 = data.f40;
                  LIQUID.conMAX19 = data.f41;
                  LIQUID.conMIN19 = data.f42;
                  LIQUID.conMAX20 = data.f43;
                  LIQUID.conMIN20 = data.f44;
                  LIQUID.conMAX21 = data.f45;
                  LIQUID.conMIN21 = data.f46;
                  LIQUID.conMAX22 = data.f47;
                  LIQUID.conMIN22 = data.f48;
                  LIQUID.conMAX23 = data.f49;
                  LIQUID.conMIN23 = data.f50;
                  LIQUID.conMAX24 = data.f51;
                  LIQUID.conMIN24 = data.f52;
                  LIQUID.conMAX25 = data.f53;
                  LIQUID.conMIN25 = data.f54;
                  LIQUID.conMAX26 = data.f55;
                  LIQUID.conMIN26 = data.f56;
                  LIQUID.conMAX27 = data.f57;
                  LIQUID.conMIN27 = data.f58;
                  LIQUID.conMAX28 = data.f59;
                  LIQUID.conMIN28 = data.f60;
                  LIQUID.conMAX29 = data.f61;
                  LIQUID.conMIN29 = data.f62;
                  LIQUID.conMAX30 = data.f63;
                  LIQUID.conMIN30 = data.f64;
                  //
                  LIQUID.con03COA = data.f65;
                  LIQUID.con04COA = data.f66;
                  LIQUID.conMAX01COA = data.f67;
                  LIQUID.conMIN01COA = data.f68;
                  LIQUID.conMAX02COA = data.f69;
                  LIQUID.conMIN02COA = data.f70;
                  LIQUID.conMAX03COA = data.f71;
                  LIQUID.conMIN03COA = data.f72;
                  LIQUID.conMAX04COA = data.f73;
                  LIQUID.conMIN04COA = data.f74;
                  LIQUID.conMAX05COA = data.f75;
                  LIQUID.conMIN05COA = data.f76;
                  LIQUID.conMAX06COA = data.f77;
                  LIQUID.conMIN06COA = data.f78;
                  LIQUID.conMAX07COA = data.f79;
                  LIQUID.conMIN07COA = data.f80;
                  LIQUID.conMAX08COA = data.f81;
                  LIQUID.conMIN08COA = data.f82;
                  LIQUID.conMAX09COA = data.f83;
                  LIQUID.conMIN09COA = data.f84;
                  LIQUID.conMAX10COA = data.f85;
                  LIQUID.conMIN10COA = data.f86;
                  LIQUID.conMAX11COA = data.f87;
                  LIQUID.conMIN11COA = data.f88;
                  LIQUID.conMAX12COA = data.f89;
                  LIQUID.conMIN12COA = data.f90;
                  LIQUID.conMAX13COA = data.f91;
                  LIQUID.conMIN13COA = data.f92;
                  LIQUID.conMAX14COA = data.f93;
                  LIQUID.conMIN14COA = data.f94;
                  LIQUID.conMAX15COA = data.f95;
                  LIQUID.conMIN15COA = data.f96;
                  LIQUID.conMAX16COA = data.f97;
                  LIQUID.conMIN16COA = data.f98;
                  LIQUID.conMAX17COA = data.f99;
                  LIQUID.conMIN17COA = data.f100;
                  LIQUID.conMAX18COA = data.f101;
                  LIQUID.conMIN18COA = data.f102;
                  LIQUID.conMAX19COA = data.f103;
                  LIQUID.conMIN19COA = data.f104;
                  LIQUID.conMAX20COA = data.f105;
                  LIQUID.conMIN20COA = data.f106;
                  LIQUID.conMAX21COA = data.f107;
                  LIQUID.conMIN21COA = data.f108;
                  LIQUID.conMAX22COA = data.f109;
                  LIQUID.conMIN22COA = data.f110;
                  LIQUID.conMAX23COA = data.f111;
                  LIQUID.conMIN23COA = data.f112;
                  LIQUID.conMAX24COA = data.f113;
                  LIQUID.conMIN24COA = data.f114;
                  LIQUID.conMAX25COA = data.f115;
                  LIQUID.conMIN25COA = data.f116;
                  LIQUID.conMAX26COA = data.f117;
                  LIQUID.conMIN26COA = data.f118;
                  LIQUID.conMAX27COA = data.f119;
                  LIQUID.conMIN27COA = data.f120;
                  LIQUID.conMAX28COA = data.f121;
                  LIQUID.conMIN28COA = data.f122;
                  LIQUID.conMAX29COA = data.f123;
                  LIQUID.conMIN29COA = data.f124;
                  LIQUID.conMAX30COA = data.f125;
                  LIQUID.conMIN30COA = data.f126;

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
