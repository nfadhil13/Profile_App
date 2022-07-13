import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  TextTheme get textTheme => Theme.of(this).textTheme;

  NavigatorState get navigator => Navigator.of(this);

  dynamic get navigationArgs => ModalRoute.of(this)!.settings.arguments;

  Size get size => MediaQuery.of(this).size;
}
