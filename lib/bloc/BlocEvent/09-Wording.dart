import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P10APPEARANCE/APPEARANCEVar.dart';
import '../../page/P9COLOR/COLORVar.dart';

abstract class WORDINGDataSetEvent {}

String server = 'http://127.0.0.1:9210/';

class ColorGetPressed extends WORDINGDataSetEvent {}

class ColorUpPressed extends WORDINGDataSetEvent {}

class AppearanceGetPressed extends WORDINGDataSetEvent {}

class AppearanceUpPressed extends WORDINGDataSetEvent {}

class CounterValue extends WORDINGDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class WORDINGDataSetBloc extends Bloc<WORDINGDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  WORDINGDataSetBloc() : super(<dataset>[]) {
    on<ColorGetPressed>((event, emit) {
      return _getdatacolor([], emit);
    });
    on<ColorUpPressed>((event, emit) {
      return _updatacolor([], emit);
    });
    on<AppearanceGetPressed>((event, emit) {
      return _getdataappearance([], emit);
    });
    on<AppearanceUpPressed>((event, emit) {
      return _updataappearance([], emit);
    });
  }
  Future<void> _getdatacolor(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "selectcolor",
      data: {},
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['WID'].toString(),
          f02: databuff[i]['value'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updatacolor(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upselectcolor",
      data: {
        "WID": COLOR.con01,
        "value": COLOR.con02,
      },
    );
    List<dataset> output = [];

    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['WID'].toString(),
          f02: databuff[i]['value'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _getdataappearance(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "selectappearance",
      data: {},
    );
    List<dataset> output = [];
    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['WID'].toString(),
          f02: databuff[i]['value'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updataappearance(
      List<dataset> toAdd, Emitter<List<dataset>> emit) async {
    final response = await Dio().post(
      server + "upselectappearance",
      data: {
        "WID": APPEARANCE.con01,
        "value": APPEARANCE.con02,
      },
    );
    List<dataset> output = [];
    if (response.statusCode == 200) {
      // var databuff = jsonDecode(response.body);
      var databuff = response.data;

      for (int i = 0; i < databuff.length; i++) {
        output.add(dataset(
          id: i + 1,
          f01: databuff[i]['WID'].toString(),
          f02: databuff[i]['value'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
