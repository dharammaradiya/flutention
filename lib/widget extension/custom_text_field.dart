import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final int? maxLength;
  final TextStyle? textStyle;
  final TextAlign textAlign;
  final bool autofocus;
  final bool readOnly;
  final bool enabled;
  final int? maxLines;
  final int? minLines;
  final EdgeInsetsGeometry? contentPadding;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;
  final FocusNode? focusNode;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final Color? cursorColor;
  final Color? borderColor;
  final Color? focusedBorderColor;
  final Color? enabledBorderColor;
  final Color? errorBorderColor;
  final double borderWidth;
  final BorderRadius? borderRadius;

  const CustomTextField({
    super.key,
    this.hintText = "Enter text",
    this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.maxLength,
    this.textStyle,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.readOnly = false,
    this.enabled = true,
    this.maxLines = 1,
    this.minLines,
    this.contentPadding,
    this.onChanged,
    this.onSubmitted,
    this.focusNode,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.inputFormatters,
    this.cursorColor,
    this.borderColor,
    this.focusedBorderColor,
    this.enabledBorderColor,
    this.errorBorderColor,
    this.borderWidth = 1.0,

    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType,
      obscureText: obscureText,
      maxLength: maxLength,
      style: textStyle ?? const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: borderColor ?? Colors.black,
            width: borderWidth,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: focusedBorderColor ?? Colors.blue,
            width: borderWidth,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: errorBorderColor ?? Colors.red,
            width: borderWidth,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: enabledBorderColor ?? Colors.black,
            width: borderWidth,
          ),
          borderRadius: borderRadius ?? BorderRadius.circular(8),
        ),
        contentPadding: contentPadding,
      ),
      textAlign: textAlign,
      autofocus: autofocus,
      readOnly: readOnly,
      enabled: enabled,
      maxLines: maxLines,
      minLines: minLines,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      focusNode: focusNode,
      textCapitalization: textCapitalization,
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      cursorColor: cursorColor,
    );
  }
}
