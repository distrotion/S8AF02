import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P4PLX/PLXVar.dart';

abstract class PLXDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends PLXDataSetEvent {}

class UpdateDataPressed extends PLXDataSetEvent {}

class CounterValue extends PLXDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class PLXDataSetBloc extends Bloc<PLXDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  PLXDataSetBloc() : super(<dataset>[]) {
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
      server + "getplxmaster",
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
          f05: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['HI'].toString(),
          f06: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['LOW'].toString(),
          f07: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['HI'].toString(),
          f08: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['LOW'].toString(),
          f09: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['HI'].toString(),
          f10: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['LOW'].toString(),
          f11: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['HI'].toString(),
          f12: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['LOW'].toString(),
          f13: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'].toString(),
          f14: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'].toString(),
          f15: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['HI'].toString(),
          f16: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['LOW'].toString(),
          f17: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f18: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upplxmaster",
      data: {
        "MATNO": PLX.con01,
        "ProductName": PLX.con02,
        "SPEC": {
          "COLOR": PLX.con03,
          "APPEARANCE": PLX.con04,
          "TC": {
            "HI": PLX.conMAX01,
            "LOW": PLX.conMIN01,
          },
          "THOP": {
            "HI": PLX.conMAX02,
            "LOW": PLX.conMIN02,
          },
          "FHOP": {
            "HI": PLX.conMAX03,
            "LOW": PLX.conMIN03,
          },
          "FT": {
            "HI": PLX.conMAX04,
            "LOW": PLX.conMIN04,
          },
          "Viscosity": {
            "HI": PLX.conMAX05,
            "LOW": PLX.conMIN05,
          },
          "PaticleSize": {
            "HI": PLX.conMAX06,
            "LOW": PLX.conMIN06,
          },
          "NVC": {
            "HI": PLX.conMAX07,
            "LOW": PLX.conMIN07,
          },
        },
        "SPECcoa": {
          "COLOR": PLX.con03COA,
          "APPEARANCE": PLX.con04COA,
          "TC": {
            "HI": PLX.conMAX01COA,
            "LOW": PLX.conMIN01COA,
          },
          "THOP": {
            "HI": PLX.conMAX02COA,
            "LOW": PLX.conMIN02COA,
          },
          "FHOP": {
            "HI": PLX.conMAX03COA,
            "LOW": PLX.conMIN03COA,
          },
          "FT": {
            "HI": PLX.conMAX04COA,
            "LOW": PLX.conMIN04COA,
          },
          "Viscosity": {
            "HI": PLX.conMAX05COA,
            "LOW": PLX.conMIN05COA,
          },
          "PaticleSize": {
            "HI": PLX.conMAX06COA,
            "LOW": PLX.conMIN06COA,
          },
          "NVC": {
            "HI": PLX.conMAX07COA,
            "LOW": PLX.conMIN07COA,
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
          f05: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['HI'].toString(),
          f06: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['LOW'].toString(),
          f07: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['HI'].toString(),
          f08: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['LOW'].toString(),
          f09: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['HI'].toString(),
          f10: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['LOW'].toString(),
          f11: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['HI'].toString(),
          f12: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['LOW'].toString(),
          f13: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'].toString(),
          f14: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'].toString(),
          f15: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['HI'].toString(),
          f16: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['LOW'].toString(),
          f17: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f18: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
