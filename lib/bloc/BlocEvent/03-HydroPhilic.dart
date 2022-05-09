import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P3HYDROPHILIC/HydrophilicVar.dart';

abstract class HydrophilicDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends HydrophilicDataSetEvent {}

class UpdateDataPressed extends HydrophilicDataSetEvent {}

class CounterValue extends HydrophilicDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class HydrophilicDataSetBloc
    extends Bloc<HydrophilicDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  HydrophilicDataSetBloc() : super(<dataset>[]) {
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
      server + "gethydrophilicmaster",
      data: {},
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
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f13: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f14: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f15: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['HI'].toString(),
          f16: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['LOW'].toString(),
          f17: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['HI'].toString(),
          f18: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['LOW'].toString(),
          f19: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['HI'].toString(),
          f20: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['LOW'].toString(),
          f21: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'].toString(),
          f22: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "uphydrophilicmaster",
      data: {
        "MATNO": HYDROPHILIC.con01,
        "ProductName": HYDROPHILIC.con02,
        "SPEC": {
          "COLOR": HYDROPHILIC.con03,
          "APPEARANCE": HYDROPHILIC.con04,
          "SG": {
            "HI": HYDROPHILIC.conMAX01,
            "LOW": HYDROPHILIC.conMIN01,
          },
          "FA": {
            "HI": HYDROPHILIC.conMAX02,
            "LOW": HYDROPHILIC.conMIN02,
          },
          "TA": {
            "HI": HYDROPHILIC.conMAX03,
            "LOW": HYDROPHILIC.conMIN03,
          },
          "PH": {
            "HI": HYDROPHILIC.conMAX04,
            "LOW": HYDROPHILIC.conMIN04,
          },
          "NVC": {
            "HI": HYDROPHILIC.conMAX05,
            "LOW": HYDROPHILIC.conMIN05,
          },
          "Brix": {
            "HI": HYDROPHILIC.conMAX06,
            "LOW": HYDROPHILIC.conMIN06,
          },
          "CR3": {
            "HI": HYDROPHILIC.conMAX07,
            "LOW": HYDROPHILIC.conMIN07,
          },
          "CECM": {
            "HI": HYDROPHILIC.conMAX07,
            "LOW": HYDROPHILIC.conMIN07,
          },
          "CE": {
            "HI": HYDROPHILIC.conMAX07,
            "LOW": HYDROPHILIC.conMIN07,
          },
        },
        "SPECcoa": {
          "COLOR": HYDROPHILIC.con03COA,
          "APPEARANCE": HYDROPHILIC.con04COA,
          "SG": {
            "HI": HYDROPHILIC.conMAX01COA,
            "LOW": HYDROPHILIC.conMIN01COA,
          },
          "FA": {
            "HI": HYDROPHILIC.conMAX02COA,
            "LOW": HYDROPHILIC.conMIN02COA,
          },
          "TA": {
            "HI": HYDROPHILIC.conMAX03COA,
            "LOW": HYDROPHILIC.conMIN03COA,
          },
          "PH": {
            "HI": HYDROPHILIC.conMAX04COA,
            "LOW": HYDROPHILIC.conMIN04COA,
          },
          "NVC": {
            "HI": HYDROPHILIC.conMAX05COA,
            "LOW": HYDROPHILIC.conMIN05COA,
          },
          "Brix": {
            "HI": HYDROPHILIC.conMAX06COA,
            "LOW": HYDROPHILIC.conMIN06COA,
          },
          "CR3": {
            "HI": HYDROPHILIC.conMAX07COA,
            "LOW": HYDROPHILIC.conMIN07COA,
          },
          "CECM": {
            "HI": HYDROPHILIC.conMAX07COA,
            "LOW": HYDROPHILIC.conMIN07COA,
          },
          "CE": {
            "HI": HYDROPHILIC.conMAX07COA,
            "LOW": HYDROPHILIC.conMIN07COA,
          },
        }
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
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f13: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f14: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f15: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['HI'].toString(),
          f16: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['LOW'].toString(),
          f17: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['HI'].toString(),
          f18: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['LOW'].toString(),
          f19: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['HI'].toString(),
          f20: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['LOW'].toString(),
          f21: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'].toString(),
          f22: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'].toString(),
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
          f73: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['HI'].toString(),
          f74: databuff[i]['SPECcoa']['PH'] == null
              ? ''
              : databuff[i]['SPECcoa']['PH']['LOW'].toString(),
          f75: databuff[i]['SPECcoa']['NVC'] == null
              ? ''
              : databuff[i]['SPECcoa']['NVC']['HI'].toString(),
          f76: databuff[i]['SPECcoa']['NVC'] == null
              ? ''
              : databuff[i]['SPECcoa']['NVC']['LOW'].toString(),
          f77: databuff[i]['SPECcoa']['Brix'] == null
              ? ''
              : databuff[i]['SPECcoa']['Brix']['HI'].toString(),
          f78: databuff[i]['SPECcoa']['Brix'] == null
              ? ''
              : databuff[i]['SPECcoa']['Brix']['LOW'].toString(),
          f79: databuff[i]['SPECcoa']['CR3'] == null
              ? ''
              : databuff[i]['SPECcoa']['CR3']['HI'].toString(),
          f80: databuff[i]['SPECcoa']['CR3'] == null
              ? ''
              : databuff[i]['SPECcoa']['CR3']['LOW'].toString(),
          f81: databuff[i]['SPECcoa']['CECM'] == null
              ? ''
              : databuff[i]['SPECcoa']['CECM']['HI'].toString(),
          f82: databuff[i]['SPECcoa']['CECM'] == null
              ? ''
              : databuff[i]['SPECcoa']['CECM']['LOW'].toString(),
          f83: databuff[i]['SPECcoa']['CE'] == null
              ? ''
              : databuff[i]['SPECcoa']['CE']['HI'].toString(),
          f84: databuff[i]['SPECcoa']['CE'] == null
              ? ''
              : databuff[i]['SPECcoa']['CE']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
