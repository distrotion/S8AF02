import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/BlocEvent/05-Tritrating.dart';
import '../../bloc/BlocEvent/10-dropdown.dart';
import '../../bloc/Cubit/Rebuild.dart';
import '../../data/model.dart';
import '../../widget/common/Loading.dart';
import 'TRITRATINGCon.dart';
import 'TRITRATINGVar.dart';

String _searchResult = '';
late BuildContext TRITRATINGContexttable;

class TRITRATINGDataTable extends StatefulWidget {
  TRITRATINGDataTable({Key? key, this.data}) : super(key: key);
  List<dataset>? data;

  @override
  _TRITRATINGDataTableState createState() => _TRITRATINGDataTableState();
}

class _TRITRATINGDataTableState extends State<TRITRATINGDataTable> {
  int _sortColumnIndex = 0;
  bool _sortAscending = true;

  @override
  void initState() {
    super.initState();
    context.read<DROPDOWN_BLOCK>().add(DROPDOWN_GET());
    context.read<TRITRATINGDataSetBloc>().add(GetDataPressed());
  }

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    TRITRATINGContexttable = context;
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
                      const Text('TRITRATING FORMULA'),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              // context
                              //     .read<TRITRATINGDataSetBloc>()
                              //     .add(GetDataPressed());

                              onLoadingType01(
                                  context,
                                  () {},
                                  context
                                      .read<TRITRATINGDataSetBloc>()
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
                              TRITRATING.nc = true;
                              TRITRATING.iscon01 = true;
                              TRITRATING.con01 = '';
                              TRITRATING.con02 = '';
                              TRITRATING.con03 = '';
                              TRITRATING.con04 = '';
                              TRITRATING.conMAX01 = '';
                              TRITRATING.conMAX02 = '';
                              TRITRATING.conMAX03 = '';
                              TRITRATING.conMAX04 = '';
                              TRITRATING.conMAX05 = '';
                              TRITRATING.conMAX06 = '';
                              TRITRATING.conMAX07 = '';
                              TRITRATING.conMAX08 = '';
                              TRITRATING.conMAX09 = '';
                              TRITRATING.conMAX10 = '';
                              TRITRATING.conMAX11 = '';
                              TRITRATING.conMAX12 = '';
                              TRITRATING.conMIN01 = '';
                              TRITRATING.conMIN02 = '';
                              TRITRATING.conMIN03 = '';
                              TRITRATING.conMIN04 = '';
                              TRITRATING.conMIN05 = '';
                              TRITRATING.conMIN06 = '';
                              TRITRATING.conMIN07 = '';
                              TRITRATING.conMIN08 = '';
                              TRITRATING.conMIN09 = '';
                              TRITRATING.conMIN10 = '';
                              TRITRATING.conMIN11 = '';
                              TRITRATING.conMIN12 = '';
                              TRITRATING.conMAX13 = '';
                              TRITRATING.conMIN13 = '';
                              TRITRATING.conMAX14 = '';
                              TRITRATING.conMIN14 = '';
                              TRITRATING.conMAX15 = '';
                              TRITRATING.conMIN15 = '';
                              TRITRATING.conMAX16 = '';
                              TRITRATING.conMIN16 = '';
                              TRITRATING.conMAX17 = '';
                              TRITRATING.conMIN17 = '';
                              TRITRATING.conMAX18 = '';
                              TRITRATING.conMIN18 = '';
                              TRITRATING.conMAX19 = '';
                              TRITRATING.conMIN19 = '';
                              TRITRATING.conMAX20 = '';
                              TRITRATING.conMIN20 = '';
                              TRITRATING.conMAX21 = '';
                              TRITRATING.conMIN21 = '';
                              TRITRATING.conMAX22 = '';
                              TRITRATING.conMIN22 = '';
                              TRITRATING.conMAX23 = '';
                              TRITRATING.conMIN23 = '';
                              TRITRATING.conMAX24 = '';
                              TRITRATING.conMIN24 = '';
                              TRITRATING.conMAX25 = '';
                              TRITRATING.conMIN25 = '';
                              TRITRATING.conMAX26 = '';
                              TRITRATING.conMIN26 = '';
                              TRITRATING.conMAX27 = '';
                              TRITRATING.conMIN27 = '';
                              TRITRATING.conMAX28 = '';
                              TRITRATING.conMIN28 = '';
                              TRITRATING.conMAX29 = '';
                              TRITRATING.conMIN29 = '';
                              TRITRATING.conMAX30 = '';
                              TRITRATING.conMIN30 = '';
                              //
                              TRITRATING.con03COA = '';
                              TRITRATING.con04COA = '';
                              TRITRATING.conMAX01COA = '';
                              TRITRATING.conMIN01COA = '';
                              TRITRATING.conMAX02COA = '';
                              TRITRATING.conMIN02COA = '';
                              TRITRATING.conMAX03COA = '';
                              TRITRATING.conMIN03COA = '';
                              TRITRATING.conMAX04COA = '';
                              TRITRATING.conMIN04COA = '';
                              TRITRATING.conMAX05COA = '';
                              TRITRATING.conMIN05COA = '';
                              TRITRATING.conMAX06COA = '';
                              TRITRATING.conMIN06COA = '';
                              TRITRATING.conMAX07COA = '';
                              TRITRATING.conMIN07COA = '';
                              TRITRATING.conMAX08COA = '';
                              TRITRATING.conMIN08COA = '';
                              TRITRATING.conMAX09COA = '';
                              TRITRATING.conMIN09COA = '';
                              TRITRATING.conMAX10COA = '';
                              TRITRATING.conMIN10COA = '';
                              TRITRATING.conMAX11COA = '';
                              TRITRATING.conMIN11COA = '';
                              TRITRATING.conMAX12COA = '';
                              TRITRATING.conMIN12COA = '';
                              TRITRATING.conMAX13COA = '';
                              TRITRATING.conMIN13COA = '';
                              TRITRATING.conMAX14COA = '';
                              TRITRATING.conMIN14COA = '';
                              TRITRATING.conMAX15COA = '';
                              TRITRATING.conMIN15COA = '';
                              TRITRATING.conMAX16COA = '';
                              TRITRATING.conMIN16COA = '';
                              TRITRATING.conMAX17COA = '';
                              TRITRATING.conMIN17COA = '';
                              TRITRATING.conMAX18COA = '';
                              TRITRATING.conMIN18COA = '';
                              TRITRATING.conMAX19COA = '';
                              TRITRATING.conMIN19COA = '';
                              TRITRATING.conMAX20COA = '';
                              TRITRATING.conMIN20COA = '';
                              TRITRATING.conMAX21COA = '';
                              TRITRATING.conMIN21COA = '';
                              TRITRATING.conMAX22COA = '';
                              TRITRATING.conMIN22COA = '';
                              TRITRATING.conMAX23COA = '';
                              TRITRATING.conMIN23COA = '';
                              TRITRATING.conMAX24COA = '';
                              TRITRATING.conMIN24COA = '';
                              TRITRATING.conMAX25COA = '';
                              TRITRATING.conMIN25COA = '';
                              TRITRATING.conMAX26COA = '';
                              TRITRATING.conMIN26COA = '';
                              TRITRATING.conMAX27COA = '';
                              TRITRATING.conMIN27COA = '';
                              TRITRATING.conMAX28COA = '';
                              TRITRATING.conMIN28COA = '';
                              TRITRATING.conMAX29COA = '';
                              TRITRATING.conMIN29COA = '';
                              TRITRATING.conMAX30COA = '';
                              TRITRATING.conMIN30COA = '';
                              TRITRATINGConsoleBox();
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
                  TRITRATING.nc = false;
                  TRITRATING.con01 = data.f01;
                  TRITRATING.con02 = data.f02;
                  TRITRATING.con03 = data.f03;
                  TRITRATING.con04 = data.f04;
                  TRITRATING.conMAX01 = data.f05;
                  TRITRATING.conMIN01 = data.f06;
                  TRITRATING.conMAX02 = data.f07;
                  TRITRATING.conMIN02 = data.f08;
                  TRITRATING.conMAX03 = data.f09;
                  TRITRATING.conMIN03 = data.f10;
                  TRITRATING.conMAX04 = data.f11;
                  TRITRATING.conMIN04 = data.f12;
                  TRITRATING.conMAX05 = data.f13;
                  TRITRATING.conMIN05 = data.f14;
                  TRITRATING.conMAX06 = data.f15;
                  TRITRATING.conMIN06 = data.f16;
                  TRITRATING.conMAX07 = data.f17;
                  TRITRATING.conMIN07 = data.f18;
                  TRITRATING.conMAX08 = data.f19;
                  TRITRATING.conMIN08 = data.f20;
                  TRITRATING.conMAX09 = data.f21;
                  TRITRATING.conMIN09 = data.f22;
                  TRITRATING.conMAX10 = data.f23;
                  TRITRATING.conMIN10 = data.f24;
                  TRITRATING.conMAX11 = data.f25;
                  TRITRATING.conMIN11 = data.f26;
                  TRITRATING.conMAX12 = data.f27;
                  TRITRATING.conMIN12 = data.f28;
                  TRITRATING.conMAX13 = data.f29;
                  TRITRATING.conMIN13 = data.f30;
                  TRITRATING.conMAX14 = data.f31;
                  TRITRATING.conMIN14 = data.f32;
                  TRITRATING.conMAX15 = data.f33;
                  TRITRATING.conMIN15 = data.f34;
                  TRITRATING.conMAX16 = data.f35;
                  TRITRATING.conMIN16 = data.f36;
                  TRITRATING.conMAX17 = data.f37;
                  TRITRATING.conMIN17 = data.f38;
                  TRITRATING.conMAX18 = data.f39;
                  TRITRATING.conMIN18 = data.f40;
                  TRITRATING.conMAX19 = data.f41;
                  TRITRATING.conMIN19 = data.f42;
                  TRITRATING.conMAX20 = data.f43;
                  TRITRATING.conMIN20 = data.f44;
                  TRITRATING.conMAX21 = data.f45;
                  TRITRATING.conMIN21 = data.f46;
                  TRITRATING.conMAX22 = data.f47;
                  TRITRATING.conMIN22 = data.f48;
                  TRITRATING.conMAX23 = data.f49;
                  TRITRATING.conMIN23 = data.f50;
                  TRITRATING.conMAX24 = data.f51;
                  TRITRATING.conMIN24 = data.f52;
                  TRITRATING.conMAX25 = data.f53;
                  TRITRATING.conMIN25 = data.f54;
                  TRITRATING.conMAX26 = data.f55;
                  TRITRATING.conMIN26 = data.f56;
                  TRITRATING.conMAX27 = data.f57;
                  TRITRATING.conMIN27 = data.f58;
                  TRITRATING.conMAX28 = data.f59;
                  TRITRATING.conMIN28 = data.f60;
                  TRITRATING.conMAX29 = data.f61;
                  TRITRATING.conMIN29 = data.f62;
                  TRITRATING.conMAX30 = data.f63;
                  TRITRATING.conMIN30 = data.f64;
                  //
                  TRITRATING.con03COA = data.f65;
                  TRITRATING.con04COA = data.f66;
                  TRITRATING.conMAX01COA = data.f67;
                  TRITRATING.conMIN01COA = data.f68;
                  TRITRATING.conMAX02COA = data.f69;
                  TRITRATING.conMIN02COA = data.f70;
                  TRITRATING.conMAX03COA = data.f71;
                  TRITRATING.conMIN03COA = data.f72;
                  TRITRATING.conMAX04COA = data.f73;
                  TRITRATING.conMIN04COA = data.f74;
                  TRITRATING.conMAX05COA = data.f75;
                  TRITRATING.conMIN05COA = data.f76;
                  TRITRATING.conMAX06COA = data.f77;
                  TRITRATING.conMIN06COA = data.f78;
                  TRITRATING.conMAX07COA = data.f79;
                  TRITRATING.conMIN07COA = data.f80;
                  TRITRATING.conMAX08COA = data.f81;
                  TRITRATING.conMIN08COA = data.f82;
                  TRITRATING.conMAX09COA = data.f83;
                  TRITRATING.conMIN09COA = data.f84;
                  TRITRATING.conMAX10COA = data.f85;
                  TRITRATING.conMIN10COA = data.f86;
                  TRITRATING.conMAX11COA = data.f87;
                  TRITRATING.conMIN11COA = data.f88;
                  TRITRATING.conMAX12COA = data.f89;
                  TRITRATING.conMIN12COA = data.f90;
                  TRITRATING.conMAX13COA = data.f91;
                  TRITRATING.conMIN13COA = data.f92;
                  TRITRATING.conMAX14COA = data.f93;
                  TRITRATING.conMIN14COA = data.f94;
                  TRITRATING.conMAX15COA = data.f95;
                  TRITRATING.conMIN15COA = data.f96;
                  TRITRATING.conMAX16COA = data.f97;
                  TRITRATING.conMIN16COA = data.f98;
                  TRITRATING.conMAX17COA = data.f99;
                  TRITRATING.conMIN17COA = data.f100;
                  TRITRATING.conMAX18COA = data.f101;
                  TRITRATING.conMIN18COA = data.f102;
                  TRITRATING.conMAX19COA = data.f103;
                  TRITRATING.conMIN19COA = data.f104;
                  TRITRATING.conMAX20COA = data.f105;
                  TRITRATING.conMIN20COA = data.f106;
                  TRITRATING.conMAX21COA = data.f107;
                  TRITRATING.conMIN21COA = data.f108;
                  TRITRATING.conMAX22COA = data.f109;
                  TRITRATING.conMIN22COA = data.f110;
                  TRITRATING.conMAX23COA = data.f111;
                  TRITRATING.conMIN23COA = data.f112;
                  TRITRATING.conMAX24COA = data.f113;
                  TRITRATING.conMIN24COA = data.f114;
                  TRITRATING.conMAX25COA = data.f115;
                  TRITRATING.conMIN25COA = data.f116;
                  TRITRATING.conMAX26COA = data.f117;
                  TRITRATING.conMIN26COA = data.f118;
                  TRITRATING.conMAX27COA = data.f119;
                  TRITRATING.conMIN27COA = data.f120;
                  TRITRATING.conMAX28COA = data.f121;
                  TRITRATING.conMIN28COA = data.f122;
                  TRITRATING.conMAX29COA = data.f123;
                  TRITRATING.conMIN29COA = data.f124;
                  TRITRATING.conMAX30COA = data.f125;
                  TRITRATING.conMIN30COA = data.f126;

                  TRITRATINGConsoleBox();
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
