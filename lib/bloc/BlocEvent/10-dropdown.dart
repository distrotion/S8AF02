import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../data/model.dart';
//-------------------------------------------------

String server = 'http://127.0.0.1:15000/';

abstract class DROPDOWN_Event {}

class DROPDOWN_GET extends DROPDOWN_Event {}

class DROPDOWN_BLOCK extends Bloc<DROPDOWN_Event, dropdown> {
  DROPDOWN_BLOCK() : super(dropdown(AP: [], CO: [])) {
    on<DROPDOWN_GET>((event, emit) {
      return _GET_Function_01(dropdown(AP: [], CO: []), emit);
    });
  }
  Future<void> _GET_Function_01(dropdown toAdd, Emitter<dropdown> emit) async {
    final response = await Dio().post(
      server + "selectdropdown",
      data: {},
    );
    List<String> output1 = [''];
    List<String> output2 = [''];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff["CO"].length; i++) {
        output1.add(databuff["CO"][i]['value'].toString());
      }
      for (int i = 0; i < databuff["AP"].length; i++) {
        output2.add((databuff["AP"][i]['value'].toString()));
      }
    } else {}
    emit(dropdown(CO: output1, AP: output2));
  }
}
