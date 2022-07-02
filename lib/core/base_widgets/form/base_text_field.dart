import 'package:flutter/material.dart';

import '../../theme/color_theme.dart';

class BaseTextFormField extends TextFormField {
  static final _borderRadius = BorderRadius.circular(12);
  final String? hintText;
  BaseTextFormField(
      {super.key,
      super.autocorrect,
      this.hintText,
      super.keyboardType,
      super.inputFormatters,
      super.onSaved,
      super.focusNode,
      super.controller,
      super.validator})
      : super(
            cursorColor: ColorTheme.primary,
            cursorWidth: 1,
            style: const TextStyle(
                color: ColorTheme.primary,
                fontWeight: FontWeight.normal,
                fontSize: 14),
            decoration: InputDecoration(
              fillColor: ColorTheme.onPrimary,
              filled: true,
              isDense: true,
              contentPadding: const EdgeInsets.only(
                  left: 14, top: 12, right: 14, bottom: 16),
              focusedBorder: OutlineInputBorder(
                borderRadius: _borderRadius,
                borderSide:
                    const BorderSide(color: ColorTheme.primary, width: 0.5),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: _borderRadius,
                borderSide: const BorderSide(color: Colors.grey, width: 0.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: _borderRadius,
                borderSide: const BorderSide(color: Colors.red, width: 0.5),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: _borderRadius,
                borderSide:
                    const BorderSide(color: ColorTheme.primary, width: 0.5),
              ),
              hintText: hintText,
            ));
}
