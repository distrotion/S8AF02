import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/01-Premix.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'PremixCon.dart';
import 'PremixVar.dart';

String _searchResult = '';
late BuildContext PremixContexttable;

class PremixDataTable extends StatefulWidget {
  PremixDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _PremixDataTableState createState() => _PremixDataTableState();
}

class _PremixDataTableState extends State<PremixDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<PremixDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    PremixContexttable = context;
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
                      const Text('PREMIX FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<PremixDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<PremixDataSetBloc>()
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
                              PREMIX.nc = true;
                              PREMIX.iscon01 = true;
                              PREMIX.con01 = '';
                              PREMIX.con02 = '';
                              PREMIX.con03 = '';
                              PREMIX.con04 = '';
                              PREMIX.conMAX01 = '';
                              PREMIX.conMAX02 = '';
                              PREMIX.conMAX03 = '';
                              PREMIX.conMAX04 = '';
                              PREMIX.conMAX05 = '';
                              PREMIX.conMAX06 = '';
                              PREMIX.conMAX07 = '';
                              PREMIX.conMAX08 = '';
                              PREMIX.conMAX09 = '';
                              PREMIX.conMAX10 = '';
                              PREMIX.conMAX11 = '';
                              PREMIX.conMAX12 = '';
                              PREMIX.conMIN01 = '';
                              PREMIX.conMIN02 = '';
                              PREMIX.conMIN03 = '';
                              PREMIX.conMIN04 = '';
                              PREMIX.conMIN05 = '';
                              PREMIX.conMIN06 = '';
                              PREMIX.conMIN07 = '';
                              PREMIX.conMIN08 = '';
                              PREMIX.conMIN09 = '';
                              PREMIX.conMIN10 = '';
                              PREMIX.conMIN11 = '';
                              PREMIX.conMIN12 = '';
                              PREMIX.conMAX13 = '';
                              PREMIX.conMIN13 = '';
                              PREMIX.conMAX14 = '';
                              PREMIX.conMIN14 = '';
                              PREMIX.conMAX15 = '';
                              PREMIX.conMIN15 = '';
                              PREMIX.conMAX16 = '';
                              PREMIX.conMIN16 = '';
                              PREMIX.conMAX17 = '';
                              PREMIX.conMIN17 = '';
                              PREMIX.conMAX18 = '';
                              PREMIX.conMIN18 = '';
                              PREMIX.conMAX19 = '';
                              PREMIX.conMIN19 = '';
                              PREMIX.conMAX20 = '';
                              PREMIX.conMIN20 = '';
                              PREMIX.conMAX21 = '';
                              PREMIX.conMIN21 = '';
                              PREMIX.conMAX22 = '';
                              PREMIX.conMIN22 = '';
                              PREMIX.conMAX23 = '';
                              PREMIX.conMIN23 = '';
                              PREMIX.conMAX24 = '';
                              PREMIX.conMIN24 = '';
                              PREMIX.conMAX25 = '';
                              PREMIX.conMIN25 = '';
                              PREMIX.conMAX26 = '';
                              PREMIX.conMIN26 = '';
                              PREMIX.conMAX27 = '';
                              PREMIX.conMIN27 = '';
                              PREMIX.conMAX28 = '';
                              PREMIX.conMIN28 = '';
                              PREMIX.conMAX29 = '';
                              PREMIX.conMIN29 = '';
                              PREMIX.conMAX30 = '';
                              PREMIX.conMIN30 = '';
                              //
                              PREMIX.con03COA = '';
                              PREMIX.con04COA = '';
                              PREMIX.conMAX01COA = '';
                              PREMIX.conMIN01COA = '';
                              PREMIX.conMAX02COA = '';
                              PREMIX.conMIN02COA = '';
                              PREMIX.conMAX03COA = '';
                              PREMIX.conMIN03COA = '';
                              PREMIX.conMAX04COA = '';
                              PREMIX.conMIN04COA = '';
                              PREMIX.conMAX05COA = '';
                              PREMIX.conMIN05COA = '';
                              PREMIX.conMAX06COA = '';
                              PREMIX.conMIN06COA = '';
                              PREMIX.conMAX07COA = '';
                              PREMIX.conMIN07COA = '';
                              PREMIX.conMAX08COA = '';
                              PREMIX.conMIN08COA = '';
                              PREMIX.conMAX09COA = '';
                              PREMIX.conMIN09COA = '';
                              PREMIX.conMAX10COA = '';
                              PREMIX.conMIN10COA = '';
                              PREMIX.conMAX11COA = '';
                              PREMIX.conMIN11COA = '';
                              PREMIX.conMAX12COA = '';
                              PREMIX.conMIN12COA = '';
                              PREMIX.conMAX13COA = '';
                              PREMIX.conMIN13COA = '';
                              PREMIX.conMAX14COA = '';
                              PREMIX.conMIN14COA = '';
                              PREMIX.conMAX15COA = '';
                              PREMIX.conMIN15COA = '';
                              PREMIX.conMAX16COA = '';
                              PREMIX.conMIN16COA = '';
                              PREMIX.conMAX17COA = '';
                              PREMIX.conMIN17COA = '';
                              PREMIX.conMAX18COA = '';
                              PREMIX.conMIN18COA = '';
                              PREMIX.conMAX19COA = '';
                              PREMIX.conMIN19COA = '';
                              PREMIX.conMAX20COA = '';
                              PREMIX.conMIN20COA = '';
                              PREMIX.conMAX21COA = '';
                              PREMIX.conMIN21COA = '';
                              PREMIX.conMAX22COA = '';
                              PREMIX.conMIN22COA = '';
                              PREMIX.conMAX23COA = '';
                              PREMIX.conMIN23COA = '';
                              PREMIX.conMAX24COA = '';
                              PREMIX.conMIN24COA = '';
                              PREMIX.conMAX25COA = '';
                              PREMIX.conMIN25COA = '';
                              PREMIX.conMAX26COA = '';
                              PREMIX.conMIN26COA = '';
                              PREMIX.conMAX27COA = '';
                              PREMIX.conMIN27COA = '';
                              PREMIX.conMAX28COA = '';
                              PREMIX.conMIN28COA = '';
                              PREMIX.conMAX29COA = '';
                              PREMIX.conMIN29COA = '';
                              PREMIX.conMAX30COA = '';
                              PREMIX.conMIN30COA = '';
                              PREMIXConsoleBox();
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
                  PREMIX.nc = false;
                  PREMIX.con01 = data.f01;
                  PREMIX.con02 = data.f02;
                  PREMIX.con03 = data.f03;
                  PREMIX.con04 = data.f04;
                  PREMIX.conMAX01 = data.f05;
                  PREMIX.conMIN01 = data.f06;
                  PREMIX.conMAX02 = data.f07;
                  PREMIX.conMIN02 = data.f08;
                  PREMIX.conMAX03 = data.f09;
                  PREMIX.conMIN03 = data.f10;
                  PREMIX.conMAX04 = data.f11;
                  PREMIX.conMIN04 = data.f12;
                  PREMIX.conMAX05 = data.f13;
                  PREMIX.conMIN05 = data.f14;
                  PREMIX.conMAX06 = data.f15;
                  PREMIX.conMIN06 = data.f16;
                  PREMIX.conMAX07 = data.f17;
                  PREMIX.conMIN07 = data.f18;
                  PREMIX.conMAX08 = data.f19;
                  PREMIX.conMIN08 = data.f20;
                  PREMIX.conMAX09 = data.f21;
                  PREMIX.conMIN09 = data.f22;
                  PREMIX.conMAX10 = data.f23;
                  PREMIX.conMIN10 = data.f24;
                  PREMIX.conMAX11 = data.f25;
                  PREMIX.conMIN11 = data.f26;
                  PREMIX.conMAX12 = data.f27;
                  PREMIX.conMIN12 = data.f28;
                  PREMIX.conMAX13 = data.f29;
                  PREMIX.conMIN13 = data.f30;
                  PREMIX.conMAX14 = data.f31;
                  PREMIX.conMIN14 = data.f32;
                  PREMIX.conMAX15 = data.f33;
                  PREMIX.conMIN15 = data.f34;
                  PREMIX.conMAX16 = data.f35;
                  PREMIX.conMIN16 = data.f36;
                  PREMIX.conMAX17 = data.f37;
                  PREMIX.conMIN17 = data.f38;
                  PREMIX.conMAX18 = data.f39;
                  PREMIX.conMIN18 = data.f40;
                  PREMIX.conMAX19 = data.f41;
                  PREMIX.conMIN19 = data.f42;
                  PREMIX.conMAX20 = data.f43;
                  PREMIX.conMIN20 = data.f44;
                  PREMIX.conMAX21 = data.f45;
                  PREMIX.conMIN21 = data.f46;
                  PREMIX.conMAX22 = data.f47;
                  PREMIX.conMIN22 = data.f48;
                  PREMIX.conMAX23 = data.f49;
                  PREMIX.conMIN23 = data.f50;
                  PREMIX.conMAX24 = data.f51;
                  PREMIX.conMIN24 = data.f52;
                  PREMIX.conMAX25 = data.f53;
                  PREMIX.conMIN25 = data.f54;
                  PREMIX.conMAX26 = data.f55;
                  PREMIX.conMIN26 = data.f56;
                  PREMIX.conMAX27 = data.f57;
                  PREMIX.conMIN27 = data.f58;
                  PREMIX.conMAX28 = data.f59;
                  PREMIX.conMIN28 = data.f60;
                  PREMIX.conMAX29 = data.f61;
                  PREMIX.conMIN29 = data.f62;
                  PREMIX.conMAX30 = data.f63;
                  PREMIX.conMIN30 = data.f64;
                  //
                  PREMIX.con03COA = data.f65;
                  PREMIX.con04COA = data.f66;
                  PREMIX.conMAX01COA = data.f67;
                  PREMIX.conMIN01COA = data.f68;
                  PREMIX.conMAX02COA = data.f69;
                  PREMIX.conMIN02COA = data.f70;
                  PREMIX.conMAX03COA = data.f71;
                  PREMIX.conMIN03COA = data.f72;
                  PREMIX.conMAX04COA = data.f73;
                  PREMIX.conMIN04COA = data.f74;
                  PREMIX.conMAX05COA = data.f75;
                  PREMIX.conMIN05COA = data.f76;
                  PREMIX.conMAX06COA = data.f77;
                  PREMIX.conMIN06COA = data.f78;
                  PREMIX.conMAX07COA = data.f79;
                  PREMIX.conMIN07COA = data.f80;
                  PREMIX.conMAX08COA = data.f81;
                  PREMIX.conMIN08COA = data.f82;
                  PREMIX.conMAX09COA = data.f83;
                  PREMIX.conMIN09COA = data.f84;
                  PREMIX.conMAX10COA = data.f85;
                  PREMIX.conMIN10COA = data.f86;
                  PREMIX.conMAX11COA = data.f87;
                  PREMIX.conMIN11COA = data.f88;
                  PREMIX.conMAX12COA = data.f89;
                  PREMIX.conMIN12COA = data.f90;
                  PREMIX.conMAX13COA = data.f91;
                  PREMIX.conMIN13COA = data.f92;
                  PREMIX.conMAX14COA = data.f93;
                  PREMIX.conMIN14COA = data.f94;
                  PREMIX.conMAX15COA = data.f95;
                  PREMIX.conMIN15COA = data.f96;
                  PREMIX.conMAX16COA = data.f97;
                  PREMIX.conMIN16COA = data.f98;
                  PREMIX.conMAX17COA = data.f99;
                  PREMIX.conMIN17COA = data.f100;
                  PREMIX.conMAX18COA = data.f101;
                  PREMIX.conMIN18COA = data.f102;
                  PREMIX.conMAX19COA = data.f103;
                  PREMIX.conMIN19COA = data.f104;
                  PREMIX.conMAX20COA = data.f105;
                  PREMIX.conMIN20COA = data.f106;
                  PREMIX.conMAX21COA = data.f107;
                  PREMIX.conMIN21COA = data.f108;
                  PREMIX.conMAX22COA = data.f109;
                  PREMIX.conMIN22COA = data.f110;
                  PREMIX.conMAX23COA = data.f111;
                  PREMIX.conMIN23COA = data.f112;
                  PREMIX.conMAX24COA = data.f113;
                  PREMIX.conMIN24COA = data.f114;
                  PREMIX.conMAX25COA = data.f115;
                  PREMIX.conMIN25COA = data.f116;
                  PREMIX.conMAX26COA = data.f117;
                  PREMIX.conMIN26COA = data.f118;
                  PREMIX.conMAX27COA = data.f119;
                  PREMIX.conMIN27COA = data.f120;
                  PREMIX.conMAX28COA = data.f121;
                  PREMIX.conMIN28COA = data.f122;
                  PREMIX.conMAX29COA = data.f123;
                  PREMIX.conMIN29COA = data.f124;
                  PREMIX.conMAX30COA = data.f125;
                  PREMIX.conMIN30COA = data.f126;
                  PREMIXConsoleBox();
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
