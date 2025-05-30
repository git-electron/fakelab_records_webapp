import 'dart:convert';
import 'dart:html';

import 'package:injectable/injectable.dart';

@injectable
class Downloader {
  void donwload(
    String content, {
    required String fileName,
  }) {
    final String base64content = utf8.fuse(base64).encode(content);

    final AnchorElement anchor = AnchorElement(
        href: 'data:application/octet-stream;base64,$base64content')
      ..target = 'blank';

    anchor.download = fileName;

    document.body?.append(anchor);
    anchor.click();
    anchor.remove();
    return;
  }
}
