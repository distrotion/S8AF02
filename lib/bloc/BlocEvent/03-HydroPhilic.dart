import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';

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
      server + "getHydrophilicmaster",
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
      server + "upHydrophilicmaster",
      data: {
        // "MATNO": Hydrophilic.con01,
        // "ProductName": Hydrophilic.con02,
        // "SPEC": {
        //   "COLOR": Hydrophilic.con03,
        //   "APPEARANCE": Hydrophilic.con04,
        //   "SG": {
        //     "HI": Hydrophilic.conMAX01,
        //     "LOW": Hydrophilic.conMIN01,
        //   },
        //   "FA": {
        //     "HI": Hydrophilic.conMAX02,
        //     "LOW": Hydrophilic.conMIN02,
        //   },
        //   "TA": {
        //     "HI": Hydrophilic.conMAX03,
        //     "LOW": Hydrophilic.conMIN03,
        //   },
        //   "T_Al": {
        //     "HI": Hydrophilic.conMAX04,
        //     "LOW": Hydrophilic.conMIN04,
        //   },
        //   "PH": {
        //     "HI": Hydrophilic.conMAX05,
        //     "LOW": Hydrophilic.conMIN05,
        //   },
        //   "NVC": {
        //     "HI": Hydrophilic.conMAX06,
        //     "LOW": Hydrophilic.conMIN06,
        //   },
        //   "PURITY": {
        //     "HI": Hydrophilic.conMAX07,
        //     "LOW": Hydrophilic.conMIN07,
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
