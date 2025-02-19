import 'dart:typed_data';

import '../ndef.dart';

class ExternalRecord extends NDEFRecord {
  static const TypeNameFormat classTnf = TypeNameFormat.nfcExternal;

  TypeNameFormat get tnf {
    return classTnf;
  }

  ExternalRecord({String? decodedType, Uint8List? payload, Uint8List? id}) : super(id: id, payload: payload) {
    if (decodedType != null) {
      this.decodedType = decodedType;
    }
  }

  @override
  String toString() {
    var str = "ExternalRecord: ";
    str += basicInfoString;
    str += "type=$decodedType ";
    str += "payload=${(payload?.toHexString()) ?? '(null)'}";
    return str;
  }
}
