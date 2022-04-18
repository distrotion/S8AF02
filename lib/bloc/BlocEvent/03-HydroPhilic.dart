import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P3HYDROPHILIC/HydrophilicVar.dart';

abstract class HydrophilicDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

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
              : databuff[i]['SPEC']['SG']['HI'],
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'],
          f07: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['HI'],
          f08: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['LOW'],
          f09: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'],
          f10: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'],
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f13: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f14: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
          f15: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['HI'],
          f16: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['LOW'],
          f17: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['HI'],
          f18: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['LOW'],
          f19: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['HI'],
          f20: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['LOW'],
          f21: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'],
          f22: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'],
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
              : databuff[i]['SPEC']['SG']['HI'],
          f06: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'],
          f07: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['HI'],
          f08: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['LOW'],
          f09: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'],
          f10: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'],
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f13: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f14: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
          f15: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['HI'],
          f16: databuff[i]['SPEC']['Brix'] == null
              ? ''
              : databuff[i]['SPEC']['Brix']['LOW'],
          f17: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['HI'],
          f18: databuff[i]['SPEC']['CR3'] == null
              ? ''
              : databuff[i]['SPEC']['CR3']['LOW'],
          f19: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['HI'],
          f20: databuff[i]['SPEC']['CECM'] == null
              ? ''
              : databuff[i]['SPEC']['CECM']['LOW'],
          f21: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'],
          f22: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }
}
