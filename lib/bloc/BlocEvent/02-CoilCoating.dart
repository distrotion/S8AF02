import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P2COILCOATING/CoilCoatingVar.dart';

abstract class CoilCoatingDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

class GetDataPressed extends CoilCoatingDataSetEvent {}

class UpdateDataPressed extends CoilCoatingDataSetEvent {}

class CounterValue extends CoilCoatingDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class CoilCoatingDataSetBloc
    extends Bloc<CoilCoatingDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  CoilCoatingDataSetBloc() : super(<dataset>[]) {
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
      server + "getcoilcoatingmaster",
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
          f11: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'],
          f12: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'],
          f13: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f14: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f15: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f16: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
          f17: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['HI'],
          f18: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upcoilcoatingmaster",
      data: {
        "MATNO": COILCOATING.con01,
        "ProductName": COILCOATING.con02,
        "SPEC": {
          "COLOR": COILCOATING.con03,
          "APPEARANCE": COILCOATING.con04,
          "SG": {
            "HI": COILCOATING.conMAX01,
            "LOW": COILCOATING.conMIN01,
          },
          "FA": {
            "HI": COILCOATING.conMAX02,
            "LOW": COILCOATING.conMIN02,
          },
          "TA": {
            "HI": COILCOATING.conMAX03,
            "LOW": COILCOATING.conMIN03,
          },
          "T_Al": {
            "HI": COILCOATING.conMAX04,
            "LOW": COILCOATING.conMIN04,
          },
          "PH": {
            "HI": COILCOATING.conMAX05,
            "LOW": COILCOATING.conMIN05,
          },
          "NVC": {
            "HI": COILCOATING.conMAX06,
            "LOW": COILCOATING.conMIN06,
          },
          "PURITY": {
            "HI": COILCOATING.conMAX07,
            "LOW": COILCOATING.conMIN07,
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
          f11: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'],
          f12: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'],
          f13: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f14: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f15: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f16: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
          f17: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['HI'],
          f18: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }
}
