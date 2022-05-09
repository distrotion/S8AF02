import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P1PREMIX/PremixVar.dart';
import '../../page/P1PREMIX/datatest.dart';

abstract class PremixDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends PremixDataSetEvent {}

class UpdateDataPressed extends PremixDataSetEvent {}

class CounterValue extends PremixDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class PremixDataSetBloc extends Bloc<PremixDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  PremixDataSetBloc() : super(<dataset>[]) {
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
      server + "getpremixmaster",
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
          f11: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['HI'].toString(),
          f12: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['LOW'].toString(),
          f13: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['HI'].toString(),
          f14: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['LOW'].toString(),
          f15: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['HI'].toString(),
          f16: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "uppremixmaster",
      data: {
        "MATNO": PREMIX.con01,
        "ProductName": PREMIX.con02,
        "SPEC": {
          "COLOR": PREMIX.con03,
          "APPEARANCE": PREMIX.con04,
          "SG": {
            "HI": PREMIX.conMAX01,
            "LOW": PREMIX.conMIN01,
          },
          "FA": {
            "HI": PREMIX.conMAX02,
            "LOW": PREMIX.conMIN02,
          },
          "TA": {
            "HI": PREMIX.conMAX03,
            "LOW": PREMIX.conMIN03,
          },
          "ZN": {
            "HI": PREMIX.conMAX04,
            "LOW": PREMIX.conMIN04,
          },
          "NI": {
            "HI": PREMIX.conMAX05,
            "LOW": PREMIX.conMIN05,
          },
          "MN": {
            "HI": PREMIX.conMAX06,
            "LOW": PREMIX.conMIN06,
          },
        },
        "SPECcoa": {
          "COLOR": PREMIX.con03COA,
          "APPEARANCE": PREMIX.con04COA,
          "SG": {
            "HI": PREMIX.conMAX01COA,
            "LOW": PREMIX.conMIN01COA,
          },
          "FA": {
            "HI": PREMIX.conMAX02COA,
            "LOW": PREMIX.conMIN02COA,
          },
          "TA": {
            "HI": PREMIX.conMAX03COA,
            "LOW": PREMIX.conMIN03COA,
          },
          "ZN": {
            "HI": PREMIX.conMAX04COA,
            "LOW": PREMIX.conMIN04COA,
          },
          "NI": {
            "HI": PREMIX.conMAX05COA,
            "LOW": PREMIX.conMIN05COA,
          },
          "MN": {
            "HI": PREMIX.conMAX06COA,
            "LOW": PREMIX.conMIN06COA,
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
          f11: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['HI'].toString(),
          f12: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['LOW'].toString(),
          f13: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['HI'].toString(),
          f14: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['LOW'].toString(),
          f15: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['HI'].toString(),
          f16: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
