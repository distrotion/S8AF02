import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/04-PLX.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'PLXCon.dart';
import 'PLXVar.dart';

String _searchResult = '';
late BuildContext PLXContexttable;

class PLXDataTable extends StatefulWidget {
  PLXDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _PLXDataTableState createState() => _PLXDataTableState();
}

class _PLXDataTableState extends State<PLXDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<PLXDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PLXContexttable = context;
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
                      const Text('PLX FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<PLXDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<PLXDataSetBloc>()
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
                              PLX.nc = true;
                              PLX.iscon01 = true;
                              PLX.con01 = '';
                              PLX.con02 = '';
                              PLX.con03 = '';
                              PLX.con04 = '';
                              PLX.conMAX01 = '';
                              PLX.conMAX02 = '';
                              PLX.conMAX03 = '';
                              PLX.conMAX04 = '';
                              PLX.conMAX05 = '';
                              PLX.conMAX06 = '';
                              PLX.conMAX07 = '';
                              PLX.conMAX08 = '';
                              PLX.conMAX09 = '';
                              PLX.conMAX10 = '';
                              PLX.conMAX11 = '';
                              PLX.conMAX12 = '';
                              PLX.conMIN01 = '';
                              PLX.conMIN02 = '';
                              PLX.conMIN03 = '';
                              PLX.conMIN04 = '';
                              PLX.conMIN05 = '';
                              PLX.conMIN06 = '';
                              PLX.conMIN07 = '';
                              PLX.conMIN08 = '';
                              PLX.conMIN09 = '';
                              PLX.conMIN10 = '';
                              PLX.conMIN11 = '';
                              PLX.conMIN12 = '';
                              PLX.conMAX13 = '';
                              PLX.conMIN13 = '';
                              PLX.conMAX14 = '';
                              PLX.conMIN14 = '';
                              PLX.conMAX15 = '';
                              PLX.conMIN15 = '';
                              PLX.conMAX16 = '';
                              PLX.conMIN16 = '';
                              PLX.conMAX17 = '';
                              PLX.conMIN17 = '';
                              PLX.conMAX18 = '';
                              PLX.conMIN18 = '';
                              PLX.conMAX19 = '';
                              PLX.conMIN19 = '';
                              PLX.conMAX20 = '';
                              PLX.conMIN20 = '';
                              PLX.conMAX21 = '';
                              PLX.conMIN21 = '';
                              PLX.conMAX22 = '';
                              PLX.conMIN22 = '';
                              PLX.conMAX23 = '';
                              PLX.conMIN23 = '';
                              PLX.conMAX24 = '';
                              PLX.conMIN24 = '';
                              PLX.conMAX25 = '';
                              PLX.conMIN25 = '';
                              PLX.conMAX26 = '';
                              PLX.conMIN26 = '';
                              PLX.conMAX27 = '';
                              PLX.conMIN27 = '';
                              PLX.conMAX28 = '';
                              PLX.conMIN28 = '';
                              PLX.conMAX29 = '';
                              PLX.conMIN29 = '';
                              PLX.conMAX30 = '';
                              PLX.conMIN30 = '';
                              //
                              PLX.con03COA = '';
                              PLX.con04COA = '';
                              PLX.conMAX01COA = '';
                              PLX.conMIN01COA = '';
                              PLX.conMAX02COA = '';
                              PLX.conMIN02COA = '';
                              PLX.conMAX03COA = '';
                              PLX.conMIN03COA = '';
                              PLX.conMAX04COA = '';
                              PLX.conMIN04COA = '';
                              PLX.conMAX05COA = '';
                              PLX.conMIN05COA = '';
                              PLX.conMAX06COA = '';
                              PLX.conMIN06COA = '';
                              PLX.conMAX07COA = '';
                              PLX.conMIN07COA = '';
                              PLX.conMAX08COA = '';
                              PLX.conMIN08COA = '';
                              PLX.conMAX09COA = '';
                              PLX.conMIN09COA = '';
                              PLX.conMAX10COA = '';
                              PLX.conMIN10COA = '';
                              PLX.conMAX11COA = '';
                              PLX.conMIN11COA = '';
                              PLX.conMAX12COA = '';
                              PLX.conMIN12COA = '';
                              PLX.conMAX13COA = '';
                              PLX.conMIN13COA = '';
                              PLX.conMAX14COA = '';
                              PLX.conMIN14COA = '';
                              PLX.conMAX15COA = '';
                              PLX.conMIN15COA = '';
                              PLX.conMAX16COA = '';
                              PLX.conMIN16COA = '';
                              PLX.conMAX17COA = '';
                              PLX.conMIN17COA = '';
                              PLX.conMAX18COA = '';
                              PLX.conMIN18COA = '';
                              PLX.conMAX19COA = '';
                              PLX.conMIN19COA = '';
                              PLX.conMAX20COA = '';
                              PLX.conMIN20COA = '';
                              PLX.conMAX21COA = '';
                              PLX.conMIN21COA = '';
                              PLX.conMAX22COA = '';
                              PLX.conMIN22COA = '';
                              PLX.conMAX23COA = '';
                              PLX.conMIN23COA = '';
                              PLX.conMAX24COA = '';
                              PLX.conMIN24COA = '';
                              PLX.conMAX25COA = '';
                              PLX.conMIN25COA = '';
                              PLX.conMAX26COA = '';
                              PLX.conMIN26COA = '';
                              PLX.conMAX27COA = '';
                              PLX.conMIN27COA = '';
                              PLX.conMAX28COA = '';
                              PLX.conMIN28COA = '';
                              PLX.conMAX29COA = '';
                              PLX.conMIN29COA = '';
                              PLX.conMAX30COA = '';
                              PLX.conMIN30COA = '';
                              PLXConsoleBox();
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
                  PLX.nc = false;
                  PLX.con01 = data.f01;
                  PLX.con02 = data.f02;
                  PLX.con03 = data.f03;
                  PLX.con04 = data.f04;
                  PLX.conMAX01 = data.f05;
                  PLX.conMIN01 = data.f06;
                  PLX.conMAX02 = data.f07;
                  PLX.conMIN02 = data.f08;
                  PLX.conMAX03 = data.f09;
                  PLX.conMIN03 = data.f10;
                  PLX.conMAX04 = data.f11;
                  PLX.conMIN04 = data.f12;
                  PLX.conMAX05 = data.f13;
                  PLX.conMIN05 = data.f14;
                  PLX.conMAX06 = data.f15;
                  PLX.conMIN06 = data.f16;
                  PLX.conMAX07 = data.f17;
                  PLX.conMIN07 = data.f18;
                  PLX.conMAX08 = data.f19;
                  PLX.conMIN08 = data.f20;
                  PLX.conMAX09 = data.f21;
                  PLX.conMIN09 = data.f22;
                  PLX.conMAX10 = data.f23;
                  PLX.conMIN10 = data.f24;
                  PLX.conMAX11 = data.f25;
                  PLX.conMIN11 = data.f26;
                  PLX.conMAX12 = data.f27;
                  PLX.conMIN12 = data.f28;
                  PLX.conMAX13 = data.f29;
                  PLX.conMIN13 = data.f30;
                  PLX.conMAX14 = data.f31;
                  PLX.conMIN14 = data.f32;
                  PLX.conMAX15 = data.f33;
                  PLX.conMIN15 = data.f34;
                  PLX.conMAX16 = data.f35;
                  PLX.conMIN16 = data.f36;
                  PLX.conMAX17 = data.f37;
                  PLX.conMIN17 = data.f38;
                  PLX.conMAX18 = data.f39;
                  PLX.conMIN18 = data.f40;
                  PLX.conMAX19 = data.f41;
                  PLX.conMIN19 = data.f42;
                  PLX.conMAX20 = data.f43;
                  PLX.conMIN20 = data.f44;
                  PLX.conMAX21 = data.f45;
                  PLX.conMIN21 = data.f46;
                  PLX.conMAX22 = data.f47;
                  PLX.conMIN22 = data.f48;
                  PLX.conMAX23 = data.f49;
                  PLX.conMIN23 = data.f50;
                  PLX.conMAX24 = data.f51;
                  PLX.conMIN24 = data.f52;
                  PLX.conMAX25 = data.f53;
                  PLX.conMIN25 = data.f54;
                  PLX.conMAX26 = data.f55;
                  PLX.conMIN26 = data.f56;
                  PLX.conMAX27 = data.f57;
                  PLX.conMIN27 = data.f58;
                  PLX.conMAX28 = data.f59;
                  PLX.conMIN28 = data.f60;
                  PLX.conMAX29 = data.f61;
                  PLX.conMIN29 = data.f62;
                  PLX.conMAX30 = data.f63;
                  PLX.conMIN30 = data.f64;
                  //
                  PLX.con03COA = data.f65;
                  PLX.con04COA = data.f66;
                  PLX.conMAX01COA = data.f67;
                  PLX.conMIN01COA = data.f68;
                  PLX.conMAX02COA = data.f69;
                  PLX.conMIN02COA = data.f70;
                  PLX.conMAX03COA = data.f71;
                  PLX.conMIN03COA = data.f72;
                  PLX.conMAX04COA = data.f73;
                  PLX.conMIN04COA = data.f74;
                  PLX.conMAX05COA = data.f75;
                  PLX.conMIN05COA = data.f76;
                  PLX.conMAX06COA = data.f77;
                  PLX.conMIN06COA = data.f78;
                  PLX.conMAX07COA = data.f79;
                  PLX.conMIN07COA = data.f80;
                  PLX.conMAX08COA = data.f81;
                  PLX.conMIN08COA = data.f82;
                  PLX.conMAX09COA = data.f83;
                  PLX.conMIN09COA = data.f84;
                  PLX.conMAX10COA = data.f85;
                  PLX.conMIN10COA = data.f86;
                  PLX.conMAX11COA = data.f87;
                  PLX.conMIN11COA = data.f88;
                  PLX.conMAX12COA = data.f89;
                  PLX.conMIN12COA = data.f90;
                  PLX.conMAX13COA = data.f91;
                  PLX.conMIN13COA = data.f92;
                  PLX.conMAX14COA = data.f93;
                  PLX.conMIN14COA = data.f94;
                  PLX.conMAX15COA = data.f95;
                  PLX.conMIN15COA = data.f96;
                  PLX.conMAX16COA = data.f97;
                  PLX.conMIN16COA = data.f98;
                  PLX.conMAX17COA = data.f99;
                  PLX.conMIN17COA = data.f100;
                  PLX.conMAX18COA = data.f101;
                  PLX.conMIN18COA = data.f102;
                  PLX.conMAX19COA = data.f103;
                  PLX.conMIN19COA = data.f104;
                  PLX.conMAX20COA = data.f105;
                  PLX.conMIN20COA = data.f106;
                  PLX.conMAX21COA = data.f107;
                  PLX.conMIN21COA = data.f108;
                  PLX.conMAX22COA = data.f109;
                  PLX.conMIN22COA = data.f110;
                  PLX.conMAX23COA = data.f111;
                  PLX.conMIN23COA = data.f112;
                  PLX.conMAX24COA = data.f113;
                  PLX.conMIN24COA = data.f114;
                  PLX.conMAX25COA = data.f115;
                  PLX.conMIN25COA = data.f116;
                  PLX.conMAX26COA = data.f117;
                  PLX.conMIN26COA = data.f118;
                  PLX.conMAX27COA = data.f119;
                  PLX.conMIN27COA = data.f120;
                  PLX.conMAX28COA = data.f121;
                  PLX.conMIN28COA = data.f122;
                  PLX.conMAX29COA = data.f123;
                  PLX.conMIN29COA = data.f124;
                  PLX.conMAX30COA = data.f125;
                  PLX.conMIN30COA = data.f126;

                  PLXConsoleBox();
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
