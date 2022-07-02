import 'package:flutter/cupertino.dart';

enum ButtonTextAlignment {
  center(MainAxisAlignment.center),
  start(MainAxisAlignment.start),
  end(MainAxisAlignment.end);

  final MainAxisAlignment mainAxisAlignment;

  const ButtonTextAlignment(this.mainAxisAlignment);
}
