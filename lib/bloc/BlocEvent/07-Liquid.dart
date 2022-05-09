import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/model.dart';
import '../../page/P7LIQUID/LIQUIDVar.dart';

abstract class LIQUIDDataSetEvent {}

String server = 'http://127.0.0.1:15000/';

class GetDataPressed extends LIQUIDDataSetEvent {}

class UpdateDataPressed extends LIQUIDDataSetEvent {}

class CounterValue extends LIQUIDDataSetBloc {
  final int value;
  CounterValue(this.value);
}

class LIQUIDDataSetBloc extends Bloc<LIQUIDDataSetEvent, List<dataset>> {
  /// {@macro counter_bloc}
  LIQUIDDataSetBloc() : super(<dataset>[]) {
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
      server + "getliquidmaster",
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
          f11: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['HI'].toString(),
          f12: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['LOW'].toString(),
          f13: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f14: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f15: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f16: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f17: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['HI'].toString(),
          f18: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['LOW'].toString(),
          //
          f19: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'].toString(),
          f20: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'].toString(),
          f21: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['HI'].toString(),
          f22: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['LOW'].toString(),
          f23: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['HI'].toString(),
          f24: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['LOW'].toString(),
          f25: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['HI'].toString(),
          f26: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['LOW'].toString(),
          f27: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['HI'].toString(),
          f28: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['LOW'].toString(),
          f29: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f30: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f31: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['HI'].toString(),
          f32: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['LOW'].toString(),
          f33: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['HI'].toString(),
          f34: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['LOW'].toString(),
          f35: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['HI'].toString(),
          f36: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['LOW'].toString(),

          f37: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['HI'].toString(),
          f38: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['LOW'].toString(),

          f39: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'].toString(),
          f40: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'].toString(),
          f41: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['HI'].toString(),
          f42: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['LOW'].toString(),
          f43: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['HI'].toString(),
          f44: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['LOW'].toString(),
          f45: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['HI'].toString(),
          f46: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['LOW'].toString(),
          f47: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['HI'].toString(),
          f48: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }

  Future<void> _updata(List<dataset> toAdd, Emitter<List<dataset>> emit) async {
//--------------------------- return
    final response = await Dio().post(
      server + "upliquidmaster",
      data: {
        "MATNO": LIQUID.con01,
        "ProductName": LIQUID.con02,
        "SPEC": {
          "COLOR": LIQUID.con03,
          "APPEARANCE": LIQUID.con04,
          "SG": {
            "HI": LIQUID.conMAX01,
            "LOW": LIQUID.conMIN01,
          },
          "FA": {
            "HI": LIQUID.conMAX02,
            "LOW": LIQUID.conMIN02,
          },
          "TA": {
            "HI": LIQUID.conMAX03,
            "LOW": LIQUID.conMIN03,
          },
          "F_Al": {
            "HI": LIQUID.conMAX04,
            "LOW": LIQUID.conMIN04,
          },
          "T_Al": {
            "HI": LIQUID.conMAX05,
            "LOW": LIQUID.conMIN05,
          },
          "PH": {
            "HI": LIQUID.conMAX06,
            "LOW": LIQUID.conMIN06,
          },
          //
          "AL": {
            "HI": LIQUID.conMAX07,
            "LOW": LIQUID.conMIN07,
          },
          "CE": {
            "HI": LIQUID.conMAX08,
            "LOW": LIQUID.conMIN08,
          },
          "CR6": {
            "HI": LIQUID.conMAX09,
            "LOW": LIQUID.conMIN09,
          },
          "TCr": {
            "HI": LIQUID.conMAX10,
            "LOW": LIQUID.conMIN10,
          },
          "MN": {
            "HI": LIQUID.conMAX11,
            "LOW": LIQUID.conMIN11,
          },
          "NI": {
            "HI": LIQUID.conMAX12,
            "LOW": LIQUID.conMIN12,
          },
          "NVC": {
            "HI": LIQUID.conMAX13,
            "LOW": LIQUID.conMIN13,
          },
          "Starch": {
            "HI": LIQUID.conMAX14,
            "LOW": LIQUID.conMIN14,
          },
          "V": {
            "HI": LIQUID.conMAX15,
            "LOW": LIQUID.conMIN15,
          },
          "ZN": {
            "HI": LIQUID.conMAX16,
            "LOW": LIQUID.conMIN16,
          },
          "ZR": {
            "HI": LIQUID.conMAX17,
            "LOW": LIQUID.conMIN17,
          },
          "Viscosity": {
            "HI": LIQUID.conMAX18,
            "LOW": LIQUID.conMIN18,
          },
          "TI": {
            "HI": LIQUID.conMAX19,
            "LOW": LIQUID.conMIN19,
          },
          "Surfactant": {
            "HI": LIQUID.conMAX20,
            "LOW": LIQUID.conMIN20,
          },
          "FE": {
            "HI": LIQUID.conMAX21,
            "LOW": LIQUID.conMIN21,
          },
          "RP": {
            "HI": LIQUID.conMAX22,
            "LOW": LIQUID.conMIN22,
          },
        },
        "SPECcoa": {
          "COLOR": LIQUID.con03COA,
          "APPEARANCE": LIQUID.con04COA,
          "SG": {
            "HI": LIQUID.conMAX01COA,
            "LOW": LIQUID.conMIN01COA,
          },
          "FA": {
            "HI": LIQUID.conMAX02COA,
            "LOW": LIQUID.conMIN02COA,
          },
          "TA": {
            "HI": LIQUID.conMAX03COA,
            "LOW": LIQUID.conMIN03COA,
          },
          "F_Al": {
            "HI": LIQUID.conMAX04COA,
            "LOW": LIQUID.conMIN04COA,
          },
          "T_Al": {
            "HI": LIQUID.conMAX05COA,
            "LOW": LIQUID.conMIN05COA,
          },
          "PH": {
            "HI": LIQUID.conMAX06COA,
            "LOW": LIQUID.conMIN06COA,
          },
          //
          "AL": {
            "HI": LIQUID.conMAX07COA,
            "LOW": LIQUID.conMIN07COA,
          },
          "CE": {
            "HI": LIQUID.conMAX08COA,
            "LOW": LIQUID.conMIN08COA,
          },
          "CR6": {
            "HI": LIQUID.conMAX09COA,
            "LOW": LIQUID.conMIN09COA,
          },
          "TCr": {
            "HI": LIQUID.conMAX10COA,
            "LOW": LIQUID.conMIN10COA,
          },
          "MN": {
            "HI": LIQUID.conMAX11COA,
            "LOW": LIQUID.conMIN11COA,
          },
          "NI": {
            "HI": LIQUID.conMAX12COA,
            "LOW": LIQUID.conMIN12COA,
          },
          "NVC": {
            "HI": LIQUID.conMAX13COA,
            "LOW": LIQUID.conMIN13COA,
          },
          "Starch": {
            "HI": LIQUID.conMAX14COA,
            "LOW": LIQUID.conMIN14COA,
          },
          "V": {
            "HI": LIQUID.conMAX15COA,
            "LOW": LIQUID.conMIN15COA,
          },
          "ZN": {
            "HI": LIQUID.conMAX16COA,
            "LOW": LIQUID.conMIN16COA,
          },
          "ZR": {
            "HI": LIQUID.conMAX17COA,
            "LOW": LIQUID.conMIN17COA,
          },
          "Viscosity": {
            "HI": LIQUID.conMAX18COA,
            "LOW": LIQUID.conMIN18COA,
          },
          "TI": {
            "HI": LIQUID.conMAX19COA,
            "LOW": LIQUID.conMIN19COA,
          },
          "Surfactant": {
            "HI": LIQUID.conMAX20COA,
            "LOW": LIQUID.conMIN20COA,
          },
          "FE": {
            "HI": LIQUID.conMAX21COA,
            "LOW": LIQUID.conMIN21COA,
          },
          "RP": {
            "HI": LIQUID.conMAX22COA,
            "LOW": LIQUID.conMIN22COA,
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
          f11: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['HI'].toString(),
          f12: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['LOW'].toString(),
          f13: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f14: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f15: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f16: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f17: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['HI'].toString(),
          f18: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['LOW'].toString(),
          //
          f19: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'].toString(),
          f20: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'].toString(),
          f21: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['HI'].toString(),
          f22: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['LOW'].toString(),
          f23: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['HI'].toString(),
          f24: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['LOW'].toString(),
          f25: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['HI'].toString(),
          f26: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['LOW'].toString(),
          f27: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['HI'].toString(),
          f28: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['LOW'].toString(),
          f29: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f30: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f31: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['HI'].toString(),
          f32: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['LOW'].toString(),
          f33: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['HI'].toString(),
          f34: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['LOW'].toString(),
          f35: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['HI'].toString(),
          f36: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['LOW'].toString(),

          f37: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['HI'].toString(),
          f38: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['LOW'].toString(),

          f39: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'].toString(),
          f40: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'].toString(),
          f41: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['HI'].toString(),
          f42: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['LOW'].toString(),
          f43: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['HI'].toString(),
          f44: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['LOW'].toString(),
          f45: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['HI'].toString(),
          f46: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['LOW'].toString(),
          f47: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['HI'].toString(),
          f48: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['LOW'].toString(),
          //
          f65: databuff[i]['SPEC']['COLOR'] ?? '',
          f66: databuff[i]['SPEC']['APPEARANCE'] ?? '',
          f67: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['HI'].toString(),
          f68: databuff[i]['SPEC']['SG'] == null
              ? ''
              : databuff[i]['SPEC']['SG']['LOW'].toString(),
          f69: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['HI'].toString(),
          f70: databuff[i]['SPEC']['FA'] == null
              ? ''
              : databuff[i]['SPEC']['FA']['LOW'].toString(),
          f71: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['HI'].toString(),
          f72: databuff[i]['SPEC']['TA'] == null
              ? ''
              : databuff[i]['SPEC']['TA']['LOW'].toString(),
          f73: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['HI'].toString(),
          f74: databuff[i]['SPEC']['F_Al'] == null
              ? ''
              : databuff[i]['SPEC']['F_Al']['LOW'].toString(),
          f75: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['HI'].toString(),
          f76: databuff[i]['SPEC']['T_Al'] == null
              ? ''
              : databuff[i]['SPEC']['T_Al']['LOW'].toString(),
          f77: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['HI'].toString(),
          f78: databuff[i]['SPEC']['PH'] == null
              ? ''
              : databuff[i]['SPEC']['PH']['LOW'].toString(),
          f79: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['HI'].toString(),
          f80: databuff[i]['SPEC']['AL'] == null
              ? ''
              : databuff[i]['SPEC']['AL']['LOW'].toString(),
          //
          f81: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['HI'].toString(),
          f82: databuff[i]['SPEC']['CE'] == null
              ? ''
              : databuff[i]['SPEC']['CE']['LOW'].toString(),
          f83: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['HI'].toString(),
          f84: databuff[i]['SPEC']['CR6'] == null
              ? ''
              : databuff[i]['SPEC']['CR6']['LOW'].toString(),
          f85: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['HI'].toString(),
          f86: databuff[i]['SPEC']['TCr'] == null
              ? ''
              : databuff[i]['SPEC']['TCr']['LOW'].toString(),
          f87: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['HI'].toString(),
          f88: databuff[i]['SPEC']['MN'] == null
              ? ''
              : databuff[i]['SPEC']['MN']['LOW'].toString(),
          f89: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['HI'].toString(),
          f90: databuff[i]['SPEC']['NI'] == null
              ? ''
              : databuff[i]['SPEC']['NI']['LOW'].toString(),
          f91: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['HI'].toString(),
          f92: databuff[i]['SPEC']['NVC'] == null
              ? ''
              : databuff[i]['SPEC']['NVC']['LOW'].toString(),
          f93: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['HI'].toString(),
          f94: databuff[i]['SPEC']['Starch'] == null
              ? ''
              : databuff[i]['SPEC']['Starch']['LOW'].toString(),
          f95: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['HI'].toString(),
          f96: databuff[i]['SPEC']['V'] == null
              ? ''
              : databuff[i]['SPEC']['V']['LOW'].toString(),
          f97: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['HI'].toString(),
          f98: databuff[i]['SPEC']['ZN'] == null
              ? ''
              : databuff[i]['SPEC']['ZN']['LOW'].toString(),

          f99: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['HI'].toString(),
          f100: databuff[i]['SPEC']['ZR'] == null
              ? ''
              : databuff[i]['SPEC']['ZR']['LOW'].toString(),

          f101: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['HI'].toString(),
          f102: databuff[i]['SPEC']['Viscosity'] == null
              ? ''
              : databuff[i]['SPEC']['Viscosity']['LOW'].toString(),
          f103: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['HI'].toString(),
          f104: databuff[i]['SPEC']['TI'] == null
              ? ''
              : databuff[i]['SPEC']['TI']['LOW'].toString(),
          f105: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['HI'].toString(),
          f106: databuff[i]['SPEC']['Surfactant'] == null
              ? ''
              : databuff[i]['SPEC']['Surfactant']['LOW'].toString(),
          f107: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['HI'].toString(),
          f108: databuff[i]['SPEC']['FE'] == null
              ? ''
              : databuff[i]['SPEC']['FE']['LOW'].toString(),
          f109: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['HI'].toString(),
          f110: databuff[i]['SPEC']['RP'] == null
              ? ''
              : databuff[i]['SPEC']['RP']['LOW'].toString(),
        ));
      }
    } else {}
    emit(output);
  }
}
