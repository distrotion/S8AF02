import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P2COILCOATING/CoilCoatingVar.dart';

abstract class CoilCoatingDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

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
          f11: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f12: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f13: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f14: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f15: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f16: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f17: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['HI'].toString(),
          f18: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['LOW'].toString(),
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
        },
        "SPECcoa": {
          "COLOR": COILCOATING.con03COA,
          "APPEARANCE": COILCOATING.con04COA,
          "SG": {
            "HI": COILCOATING.conMAX01COA,
            "LOW": COILCOATING.conMIN01COA,
          },
          "FA": {
            "HI": COILCOATING.conMAX02COA,
            "LOW": COILCOATING.conMIN02COA,
          },
          "TA": {
            "HI": COILCOATING.conMAX03COA,
            "LOW": COILCOATING.conMIN03COA,
          },
          "T_Al": {
            "HI": COILCOATING.conMAX04COA,
            "LOW": COILCOATING.conMIN04COA,
          },
          "PH": {
            "HI": COILCOATING.conMAX05COA,
            "LOW": COILCOATING.conMIN05COA,
          },
          "NVC": {
            "HI": COILCOATING.conMAX06COA,
            "LOW": COILCOATING.conMIN06COA,
          },
          "PURITY": {
            "HI": COILCOATING.conMAX07COA,
            "LOW": COILCOATING.conMIN07COA,
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
          f11: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f12: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f13: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f14: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f15: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f16: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f17: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['HI'].toString(),
          f18: databuff[i]['SPEC']['PURITY'] == null
              ? ''
              : databuff[i]['SPEC']['PURITY']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
