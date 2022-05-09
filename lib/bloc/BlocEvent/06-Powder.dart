import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P6POWDER/POWDERVar.dart';

abstract class POWDERDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends POWDERDataSetEvent {}

class UpdateDataPressed extends POWDERDataSetEvent {}

class CounterValue extends POWDERDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class POWDERDataSetBloc extends Bloc<POWDERDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  POWDERDataSetBloc() : super(<dataset>[]) {
    on<GetDataPressed>((event, emit) {
      return _getdata([], emit);
    });
    on<UpdateDataPressed>((event, emit) {
      return _updata([], emit);
    });
  }
  Future<void> _getdata(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "getpowdermaster",
      data: {},
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;
      print(databuff.length);

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['MATNO'],
          f02: databuff[i]['ProductName'],
          f03: databuff[i]['SPEC']['COLOR'] ?? '',
          f04: databuff[i]['SPEC']['APPEARANCE'] ?? '',
          f05: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['HI'].toString(),
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'].toString(),
          f07: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['HI'].toString(),
          f08: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['LOW'].toString(),
          f09: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'].toString(),
          f10: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'].toString(),
          f11: databuff[i]['SPEC']["F_Al"] == null
              ? ''
              : databuff[i]['SPEC']["F_Al"]['HI'].toString(),
          f12: databuff[i]['SPEC']["F_Al"] == null
              ? ''
              : databuff[i]['SPEC']["F_Al"]['LOW'].toString(),
          f13: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f14: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'].toString(),
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'].toString(),
          f17: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f18: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f19: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['HI'].toString(),
          f20: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['LOW'].toString(),
          f21: databuff[i]['SPEC']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPEC']['BABCOCK']['HI'].toString(),
          f22: databuff[i]['SPEC']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPEC']['BABCOCK']['LOW'].toString(),
          //
          f65: databuff[i]['SPECcoa']['COLOR'] ?? '',
          f66: databuff[i]['SPECcoa']['APPEARANCE'] ?? '',
          f67: databuff[i]['SPECcoa']['SG'] == null
              ? ''
              : databuff[i]['SPECcoa']['SG']['HI'].toString(),
          f68: databuff[i]['SPECcoa']['SG'] == null
              ? ''
              : databuff[i]['SPECcoa']['SG']['LOW'].toString(),
          f69: databuff[i]['SPECcoa']['FA'] == null
              ? ''
              : databuff[i]['SPECcoa']['FA']['HI'].toString(),
          f70: databuff[i]['SPECcoa']['FA'] == null
              ? ''
              : databuff[i]['SPECcoa']['FA']['LOW'].toString(),
          f71: databuff[i]['SPECcoa']['TA'] == null
              ? ''
              : databuff[i]['SPECcoa']['TA']['HI'].toString(),
          f72: databuff[i]['SPECcoa']['TA'] == null
              ? ''
              : databuff[i]['SPECcoa']['TA']['LOW'].toString(),
          f73: databuff[i]['SPECcoa']["F_Al"] == null
              ? ''
              : databuff[i]['SPECcoa']["F_Al"]['HI'].toString(),
          f74: databuff[i]['SPECcoa']["F_Al"] == null
              ? ''
              : databuff[i]['SPECcoa']["F_Al"]['LOW'].toString(),
          f75: databuff[i]['SPECcoa']['T_Al'] == null
              ? ''
              : databuff[i]['SPECcoa']['T_Al']['HI'].toString(),
          f76: databuff[i]['SPECcoa']['T_Al'] == null
              ? ''
              : databuff[i]['SPECcoa']['T_Al']['LOW'].toString(),
          f77: databuff[i]['SPECcoa']['ACO'] == null
              ? ''
              : databuff[i]['SPECcoa']['ACO']['HI'].toString(),
          f78: databuff[i]['SPECcoa']['ACO'] == null
              ? ''
              : databuff[i]['SPECcoa']['ACO']['LOW'].toString(),
          f79: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['HI'].toString(),
          f80: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['LOW'].toString(),
          f81: databuff[i]['SPECcoa']['CR6'] == null
              ? ''
              : databuff[i]['SPECcoa']['CR6']['HI'].toString(),
          f82: databuff[i]['SPECcoa']['CR6'] == null
              ? ''
              : databuff[i]['SPECcoa']['CR6']['LOW'].toString(),
          f83: databuff[i]['SPECcoa']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPECcoa']['BABCOCK']['HI'].toString(),
          f84: databuff[i]['SPECcoa']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPECcoa']['BABCOCK']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "uppowdermaster",
      data: {
        "MATNO": POWDER.con01,
        "ProductName": POWDER.con02,
        "SPEC": {
          "COLOR": POWDER.con03,
          "APPEARANCE": POWDER.con04,
          "SG": {
            "HI": POWDER.conMAX01,
            "LOW": POWDER.conMIN01,
          },
          "FA": {
            "HI": POWDER.conMAX02,
            "LOW": POWDER.conMIN02,
          },
          "TA": {
            "HI": POWDER.conMAX03,
            "LOW": POWDER.conMIN03,
          },
          "F_Al": {
            "HI": POWDER.conMAX04,
            "LOW": POWDER.conMIN04,
          },
          "T_Al": {
            "HI": POWDER.conMAX05,
            "LOW": POWDER.conMIN05,
          },
          "ACO": {
            "HI": POWDER.conMAX06,
            "LOW": POWDER.conMIN06,
          },
          //
          "PH": {
            "HI": POWDER.conMAX07,
            "LOW": POWDER.conMIN07,
          },
          "CR6": {
            "HI": POWDER.conMAX08,
            "LOW": POWDER.conMIN08,
          },
          "BABCOCK": {
            "HI": POWDER.conMAX09,
            "LOW": POWDER.conMIN09,
          },
        },
        "SPECcoa": {
          "COLOR": POWDER.con03COA,
          "APPEARANCE": POWDER.con04COA,
          "SG": {
            "HI": POWDER.conMAX01COA,
            "LOW": POWDER.conMIN01COA,
          },
          "FA": {
            "HI": POWDER.conMAX02COA,
            "LOW": POWDER.conMIN02COA,
          },
          "TA": {
            "HI": POWDER.conMAX03COA,
            "LOW": POWDER.conMIN03COA,
          },
          "F_Al": {
            "HI": POWDER.conMAX04COA,
            "LOW": POWDER.conMIN04COA,
          },
          "T_Al": {
            "HI": POWDER.conMAX05COA,
            "LOW": POWDER.conMIN05COA,
          },
          "ACO": {
            "HI": POWDER.conMAX06COA,
            "LOW": POWDER.conMIN06COA,
          },
          //
          "PH": {
            "HI": POWDER.conMAX07COA,
            "LOW": POWDER.conMIN07COA,
          },
          "CR6": {
            "HI": POWDER.conMAX08COA,
            "LOW": POWDER.conMIN08COA,
          },
          "BABCOCK": {
            "HI": POWDER.conMAX09COA,
            "LOW": POWDER.conMIN09COA,
          },
        },
      },
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['MATNO'],
          f02: databuff[i]['ProductName'],
          f03: databuff[i]['SPEC']['COLOR'] ?? '',
          f04: databuff[i]['SPEC']['APPEARANCE'] ?? '',
          f05: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['HI'].toString(),
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'].toString(),
          f07: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['HI'].toString(),
          f08: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['LOW'].toString(),
          f09: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'].toString(),
          f10: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'].toString(),
          f11: databuff[i]['SPEC']["F_Al"] == null
              ? ''
              : databuff[i]['SPEC']["F_Al"]['HI'].toString(),
          f12: databuff[i]['SPEC']["F_Al"] == null
              ? ''
              : databuff[i]['SPEC']["F_Al"]['LOW'].toString(),
          f13: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f14: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'].toString(),
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'].toString(),
          f17: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f18: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f19: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['HI'].toString(),
          f20: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['LOW'].toString(),
          f21: databuff[i]['SPEC']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPEC']['BABCOCK']['HI'].toString(),
          f22: databuff[i]['SPEC']['BABCOCK'] == null
              ? ''
              : databuff[i]['SPEC']['BABCOCK']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
