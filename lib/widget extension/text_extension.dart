import 'package:flutter/material.dart';



extension TextExtension on Text {
  Text get bold => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.bold)));
  Text get italic => Text(data ?? "", style: _mergeStyle(const TextStyle(fontStyle: FontStyle.italic)));
  Text get underline => Text(data ?? "", style: _mergeStyle(const TextStyle(decoration: TextDecoration.underline)));
  Text get lineThrough => Text(data ?? "", style: _mergeStyle(const TextStyle(decoration: TextDecoration.lineThrough)));
  Text get overline => Text(data ?? "", style: _mergeStyle(const TextStyle(decoration: TextDecoration.overline)));
  Text get thick => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w900)));
  Text get thin => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w100)));
  Text get extraLight => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w200)));
  Text get light => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w300)));
  Text get regular => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w400)));
  Text get medium => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w500)));
  Text get semiBold => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w600)));
  Text get extraBold => Text(data ?? "", style: _mergeStyle(const TextStyle(fontWeight: FontWeight.w800)));
  
  Text size(double size) => Text(data ?? "", style: _mergeStyle(TextStyle(fontSize: size)));
  Text color(Color color) => Text(data ?? "", style: _mergeStyle(TextStyle(color: color)));
  Text letterSpacing(double spacing) => Text(data ?? "", style: _mergeStyle(TextStyle(letterSpacing: spacing)));
  Text wordSpacing(double spacing) => Text(data ?? "", style: _mergeStyle(TextStyle(wordSpacing: spacing)));
  Text height(double height) => Text(data ?? "", style: _mergeStyle(TextStyle(height: height)));
  Text family(String family) => Text(data ?? "", style: _mergeStyle(TextStyle(fontFamily: family)));

  Text get alignCenter => Text(data ?? "", textAlign: TextAlign.center, style: style);
  Text get alignLeft => Text(data ?? "", textAlign: TextAlign.left, style: style);
  Text get alignRight => Text(data ?? "", textAlign: TextAlign.right, style: style);
  Text get alignJustify => Text(data ?? "", textAlign: TextAlign.justify, style: style);
  Text get alignStart => Text(data ?? "", textAlign: TextAlign.start, style: style);
  Text get alignEnd => Text(data ?? "", textAlign: TextAlign.end, style: style);

  Text get fadeOverFlow => Text(data ?? "", overflow: TextOverflow.fade, style: style);
  Text get ellipsisOverFlow => Text(data ?? "", overflow: TextOverflow.ellipsis, style: style);
  Text get clipOverFlow => Text(data ?? "", overflow: TextOverflow.clip, style: style);
  Text get visibleOverFlow => Text(data ?? "", overflow: TextOverflow.visible, style: style);

  Text maxLine(int? lines) => Text(data ?? "", maxLines: lines, style: style);
  Text get noWrap => Text(data ?? "", softWrap: false, style: style);
  Text get wrap => Text(data ?? "", softWrap: true, style: style);

  /// Helper function to merge styles
  TextStyle? _mergeStyle(TextStyle newStyle) {
    return style?.merge(newStyle) ?? newStyle;
  }
}

extension TextSpanExtension on TextSpan {
  TextSpan get bold => _copyWith(style: const TextStyle(fontWeight: FontWeight.bold));
  TextSpan get italic => _copyWith(style: const TextStyle(fontStyle: FontStyle.italic));
  TextSpan get underline => _copyWith(style: const TextStyle(decoration: TextDecoration.underline));
  TextSpan get lineThrough => _copyWith(style: const TextStyle(decoration: TextDecoration.lineThrough));
  TextSpan get overline => _copyWith(style: const TextStyle(decoration: TextDecoration.overline));
  TextSpan get thick => _copyWith(style: const TextStyle(fontWeight: FontWeight.w900));
  TextSpan get thin => _copyWith(style: const TextStyle(fontWeight: FontWeight.w100));
  TextSpan size(double size) => _copyWith(style: TextStyle(fontSize: size));
  TextSpan color(Color color) => _copyWith(style: TextStyle(color: color));
  TextSpan letterSpacing(double spacing) => _copyWith(style: TextStyle(letterSpacing: spacing));
  TextSpan wordSpacing(double spacing) => _copyWith(style: TextStyle(wordSpacing: spacing));
  TextSpan height(double height) => _copyWith(style: TextStyle(height: height));
  TextSpan family(String family) => _copyWith(style: TextStyle(fontFamily: family));

  TextSpan _copyWith({TextStyle? style}) {
    return TextSpan(
      text: text,
      style: (this.style ?? const TextStyle()).merge(style),
      children: children,
    );
  }
}