import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';

abstract class PLXDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

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
      server + "getPLXmaster",
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
              : databuff[i]['SPEC']['TC']['HI'],
          f06: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['LOW'],
          f07: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['HI'],
          f08: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['LOW'],
          f09: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['HI'],
          f10: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['LOW'],
          f11: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['HI'],
          f12: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['LOW'],
          f13: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'],
          f14: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'],
          f15: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['HI'],
          f16: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['LOW'],
          f17: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f18: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upPLXmaster",
      data: {
        // "MATNO": PLX.con01,
        // "ProductName": PLX.con02,
        // "SPEC": {
        //   "COLOR": PLX.con03,
        //   "APPEARANCE": PLX.con04,
        //   "SG": {
        //     "HI": PLX.conMAX01,
        //     "LOW": PLX.conMIN01,
        //   },
        //   "FA": {
        //     "HI": PLX.conMAX02,
        //     "LOW": PLX.conMIN02,
        //   },
        //   "TA": {
        //     "HI": PLX.conMAX03,
        //     "LOW": PLX.conMIN03,
        //   },
        //   "T_Al": {
        //     "HI": PLX.conMAX04,
        //     "LOW": PLX.conMIN04,
        //   },
        //   "PH": {
        //     "HI": PLX.conMAX05,
        //     "LOW": PLX.conMIN05,
        //   },
        //   "NVC": {
        //     "HI": PLX.conMAX06,
        //     "LOW": PLX.conMIN06,
        //   },
        //   "PURITY": {
        //     "HI": PLX.conMAX07,
        //     "LOW": PLX.conMIN07,
        //   },
        // }
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
              : databuff[i]['SPEC']['TC']['HI'],
          f06: databuff[i]['SPEC']['TC'] == null
              ? ''
              : databuff[i]['SPEC']['TC']['LOW'],
          f07: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['HI'],
          f08: databuff[i]['SPEC']['THOP'] == null
              ? ''
              : databuff[i]['SPEC']['THOP']['LOW'],
          f09: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['HI'],
          f10: databuff[i]['SPEC']['FHOP'] == null
              ? ''
              : databuff[i]['SPEC']['FHOP']['LOW'],
          f11: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['HI'],
          f12: databuff[i]['SPEC']['FT'] == null
              ? ''
              : databuff[i]['SPEC']['FT']['LOW'],
          f13: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'],
          f14: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'],
          f15: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['HI'],
          f16: databuff[i]['SPEC']['PaticleSize'] == null
              ? ''
              : databuff[i]['SPEC']['PaticleSize']['LOW'],
          f17: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'],
          f18: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }
}
