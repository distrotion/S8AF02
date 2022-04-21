import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P6POWDER/POWDERVar.dart';

abstract class POWDERDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

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
