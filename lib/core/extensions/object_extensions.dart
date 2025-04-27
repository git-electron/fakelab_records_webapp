import 'dart:convert';

import '../constants/types.dart';

extension ObjectExtensions on Object? {
  Json? firebaseResponseToJson() {
    if (this == null) return null;

    try {
      if (this is Json) {
        return this as Json;
      } else {
        return jsonDecode(jsonEncode(this)) as Json;
      }
    } catch (e) {
      return null;
    }
  }
}
