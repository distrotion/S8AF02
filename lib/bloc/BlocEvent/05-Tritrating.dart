import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';

abstract class TritratingDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

class GetDataPressed extends TritratingDataSetEvent {}

class UpdateDataPressed extends TritratingDataSetEvent {}

class CounterValue extends TritratingDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class TritratingDataSetBloc
    extends Bloc<TritratingDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  TritratingDataSetBloc() : super(<dataset>[]) {
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
      server + "getTritratingmaster",
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
          f07: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'],
          f08: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'],
          f09: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'],
          f10: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'],
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f13: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['HI'],
          f14: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['LOW'],
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'],
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upTritratingmaster",
      data: {
        // "MATNO": Tritrating.con01,
        // "ProductName": Tritrating.con02,
        // "SPEC": {
        //   "COLOR": Tritrating.con03,
        //   "APPEARANCE": Tritrating.con04,
        //   "SG": {
        //     "HI": Tritrating.conMAX01,
        //     "LOW": Tritrating.conMIN01,
        //   },
        //   "FA": {
        //     "HI": Tritrating.conMAX02,
        //     "LOW": Tritrating.conMIN02,
        //   },
        //   "TA": {
        //     "HI": Tritrating.conMAX03,
        //     "LOW": Tritrating.conMIN03,
        //   },
        //   "T_Al": {
        //     "HI": Tritrating.conMAX04,
        //     "LOW": Tritrating.conMIN04,
        //   },
        //   "PH": {
        //     "HI": Tritrating.conMAX05,
        //     "LOW": Tritrating.conMIN05,
        //   },
        //   "NVC": {
        //     "HI": Tritrating.conMAX06,
        //     "LOW": Tritrating.conMIN06,
        //   },
        //   "PURITY": {
        //     "HI": Tritrating.conMAX07,
        //     "LOW": Tritrating.conMIN07,
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
          f07: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'],
          f08: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'],
          f09: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'],
          f10: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'],
          f11: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'],
          f12: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'],
          f13: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['HI'],
          f14: databuff[i]['SPEC']['FACTOR'] == null
              ? ''
              : databuff[i]['SPEC']['FACTOR']['LOW'],
          f15: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['HI'],
          f16: databuff[i]['SPEC']['ACO'] == null
              ? ''
              : databuff[i]['SPEC']['ACO']['LOW'],
        ));
      }
    } else {}
    emit(output);
  }
}
