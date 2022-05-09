import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/06-Powder.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
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
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
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
                              POWDER.conMAX13 = '';
                              POWDER.conMIN13 = '';
                              POWDER.conMAX14 = '';
                              POWDER.conMIN14 = '';
                              POWDER.conMAX15 = '';
                              POWDER.conMIN15 = '';
                              POWDER.conMAX16 = '';
                              POWDER.conMIN16 = '';
                              POWDER.conMAX17 = '';
                              POWDER.conMIN17 = '';
                              POWDER.conMAX18 = '';
                              POWDER.conMIN18 = '';
                              POWDER.conMAX19 = '';
                              POWDER.conMIN19 = '';
                              POWDER.conMAX20 = '';
                              POWDER.conMIN20 = '';
                              POWDER.conMAX21 = '';
                              POWDER.conMIN21 = '';
                              POWDER.conMAX22 = '';
                              POWDER.conMIN22 = '';
                              POWDER.conMAX23 = '';
                              POWDER.conMIN23 = '';
                              POWDER.conMAX24 = '';
                              POWDER.conMIN24 = '';
                              POWDER.conMAX25 = '';
                              POWDER.conMIN25 = '';
                              POWDER.conMAX26 = '';
                              POWDER.conMIN26 = '';
                              POWDER.conMAX27 = '';
                              POWDER.conMIN27 = '';
                              POWDER.conMAX28 = '';
                              POWDER.conMIN28 = '';
                              POWDER.conMAX29 = '';
                              POWDER.conMIN29 = '';
                              POWDER.conMAX30 = '';
                              POWDER.conMIN30 = '';
                              //
                              POWDER.con03COA = '';
                              POWDER.con04COA = '';
                              POWDER.conMAX01COA = '';
                              POWDER.conMIN01COA = '';
                              POWDER.conMAX02COA = '';
                              POWDER.conMIN02COA = '';
                              POWDER.conMAX03COA = '';
                              POWDER.conMIN03COA = '';
                              POWDER.conMAX04COA = '';
                              POWDER.conMIN04COA = '';
                              POWDER.conMAX05COA = '';
                              POWDER.conMIN05COA = '';
                              POWDER.conMAX06COA = '';
                              POWDER.conMIN06COA = '';
                              POWDER.conMAX07COA = '';
                              POWDER.conMIN07COA = '';
                              POWDER.conMAX08COA = '';
                              POWDER.conMIN08COA = '';
                              POWDER.conMAX09COA = '';
                              POWDER.conMIN09COA = '';
                              POWDER.conMAX10COA = '';
                              POWDER.conMIN10COA = '';
                              POWDER.conMAX11COA = '';
                              POWDER.conMIN11COA = '';
                              POWDER.conMAX12COA = '';
                              POWDER.conMIN12COA = '';
                              POWDER.conMAX13COA = '';
                              POWDER.conMIN13COA = '';
                              POWDER.conMAX14COA = '';
                              POWDER.conMIN14COA = '';
                              POWDER.conMAX15COA = '';
                              POWDER.conMIN15COA = '';
                              POWDER.conMAX16COA = '';
                              POWDER.conMIN16COA = '';
                              POWDER.conMAX17COA = '';
                              POWDER.conMIN17COA = '';
                              POWDER.conMAX18COA = '';
                              POWDER.conMIN18COA = '';
                              POWDER.conMAX19COA = '';
                              POWDER.conMIN19COA = '';
                              POWDER.conMAX20COA = '';
                              POWDER.conMIN20COA = '';
                              POWDER.conMAX21COA = '';
                              POWDER.conMIN21COA = '';
                              POWDER.conMAX22COA = '';
                              POWDER.conMIN22COA = '';
                              POWDER.conMAX23COA = '';
                              POWDER.conMIN23COA = '';
                              POWDER.conMAX24COA = '';
                              POWDER.conMIN24COA = '';
                              POWDER.conMAX25COA = '';
                              POWDER.conMIN25COA = '';
                              POWDER.conMAX26COA = '';
                              POWDER.conMIN26COA = '';
                              POWDER.conMAX27COA = '';
                              POWDER.conMIN27COA = '';
                              POWDER.conMAX28COA = '';
                              POWDER.conMIN28COA = '';
                              POWDER.conMAX29COA = '';
                              POWDER.conMIN29COA = '';
                              POWDER.conMAX30COA = '';
                              POWDER.conMIN30COA = '';
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
                  POWDER.conMAX13 = data.f29;
                  POWDER.conMIN13 = data.f30;
                  POWDER.conMAX14 = data.f31;
                  POWDER.conMIN14 = data.f32;
                  POWDER.conMAX15 = data.f33;
                  POWDER.conMIN15 = data.f34;
                  POWDER.conMAX16 = data.f35;
                  POWDER.conMIN16 = data.f36;
                  POWDER.conMAX17 = data.f37;
                  POWDER.conMIN17 = data.f38;
                  POWDER.conMAX18 = data.f39;
                  POWDER.conMIN18 = data.f40;
                  POWDER.conMAX19 = data.f41;
                  POWDER.conMIN19 = data.f42;
                  POWDER.conMAX20 = data.f43;
                  POWDER.conMIN20 = data.f44;
                  POWDER.conMAX21 = data.f45;
                  POWDER.conMIN21 = data.f46;
                  POWDER.conMAX22 = data.f47;
                  POWDER.conMIN22 = data.f48;
                  POWDER.conMAX23 = data.f49;
                  POWDER.conMIN23 = data.f50;
                  POWDER.conMAX24 = data.f51;
                  POWDER.conMIN24 = data.f52;
                  POWDER.conMAX25 = data.f53;
                  POWDER.conMIN25 = data.f54;
                  POWDER.conMAX26 = data.f55;
                  POWDER.conMIN26 = data.f56;
                  POWDER.conMAX27 = data.f57;
                  POWDER.conMIN27 = data.f58;
                  POWDER.conMAX28 = data.f59;
                  POWDER.conMIN28 = data.f60;
                  POWDER.conMAX29 = data.f61;
                  POWDER.conMIN29 = data.f62;
                  POWDER.conMAX30 = data.f63;
                  POWDER.conMIN30 = data.f64;
                  //
                  POWDER.con03COA = data.f65;
                  POWDER.con04COA = data.f66;
                  POWDER.conMAX01COA = data.f67;
                  POWDER.conMIN01COA = data.f68;
                  POWDER.conMAX02COA = data.f69;
                  POWDER.conMIN02COA = data.f70;
                  POWDER.conMAX03COA = data.f71;
                  POWDER.conMIN03COA = data.f72;
                  POWDER.conMAX04COA = data.f73;
                  POWDER.conMIN04COA = data.f74;
                  POWDER.conMAX05COA = data.f75;
                  POWDER.conMIN05COA = data.f76;
                  POWDER.conMAX06COA = data.f77;
                  POWDER.conMIN06COA = data.f78;
                  POWDER.conMAX07COA = data.f79;
                  POWDER.conMIN07COA = data.f80;
                  POWDER.conMAX08COA = data.f81;
                  POWDER.conMIN08COA = data.f82;
                  POWDER.conMAX09COA = data.f83;
                  POWDER.conMIN09COA = data.f84;
                  POWDER.conMAX10COA = data.f85;
                  POWDER.conMIN10COA = data.f86;
                  POWDER.conMAX11COA = data.f87;
                  POWDER.conMIN11COA = data.f88;
                  POWDER.conMAX12COA = data.f89;
                  POWDER.conMIN12COA = data.f90;
                  POWDER.conMAX13COA = data.f91;
                  POWDER.conMIN13COA = data.f92;
                  POWDER.conMAX14COA = data.f93;
                  POWDER.conMIN14COA = data.f94;
                  POWDER.conMAX15COA = data.f95;
                  POWDER.conMIN15COA = data.f96;
                  POWDER.conMAX16COA = data.f97;
                  POWDER.conMIN16COA = data.f98;
                  POWDER.conMAX17COA = data.f99;
                  POWDER.conMIN17COA = data.f100;
                  POWDER.conMAX18COA = data.f101;
                  POWDER.conMIN18COA = data.f102;
                  POWDER.conMAX19COA = data.f103;
                  POWDER.conMIN19COA = data.f104;
                  POWDER.conMAX20COA = data.f105;
                  POWDER.conMIN20COA = data.f106;
                  POWDER.conMAX21COA = data.f107;
                  POWDER.conMIN21COA = data.f108;
                  POWDER.conMAX22COA = data.f109;
                  POWDER.conMIN22COA = data.f110;
                  POWDER.conMAX23COA = data.f111;
                  POWDER.conMIN23COA = data.f112;
                  POWDER.conMAX24COA = data.f113;
                  POWDER.conMIN24COA = data.f114;
                  POWDER.conMAX25COA = data.f115;
                  POWDER.conMIN25COA = data.f116;
                  POWDER.conMAX26COA = data.f117;
                  POWDER.conMIN26COA = data.f118;
                  POWDER.conMAX27COA = data.f119;
                  POWDER.conMIN27COA = data.f120;
                  POWDER.conMAX28COA = data.f121;
                  POWDER.conMIN28COA = data.f122;
                  POWDER.conMAX29COA = data.f123;
                  POWDER.conMIN29COA = data.f124;
                  POWDER.conMAX30COA = data.f125;
                  POWDER.conMIN30COA = data.f126;

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
