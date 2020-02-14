library flutter_general_dialog;

import 'package:flutter/material.dart';

class FlutterGeneralDialog extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final BorderRadiusGeometry borderRadius;
  final MaterialType type;

  final double elevation;

  final Color color;

  final Color shadowColor;

  final TextStyle textStyle;

  final ShapeBorder shape;

  final bool borderOnForeground;

  final Clip clipBehavior;

  final Duration animationDuration;

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  /// example
  ///
  /// ```dart
  /// import 'package:flutter_general_dialog/flutter_general_dialog.dart';
  /// 
  /// showGeneralDialog(
  ///   context: context,
  ///   barrierDismissible: true,
  ///   barrierColor: Color(0x80000000),
  ///   barrierLabel: 'Dismiss',
  ///   transitionDuration: Duration(milliseconds: 300),
  ///   transitionBuilder: (
  ///     BuildContext context,
  ///     Animation<double> animation,
  ///     Animation<double> secondaryAnimation,
  ///     Widget child,
  ///   ) {
  ///     var tween =
  ///         Tween(begin: Offset(0, 1), end: Offset(0, 0.8));
  ///     return SlideTransition(
  ///       position: tween.animate(
  ///         CurvedAnimation(
  ///           parent: animation,
  ///           curve: Curves.easeOut,
  ///         ),
  ///       ),
  ///       child: child,
  ///     );
  ///   },
  ///   pageBuilder: (
  ///     BuildContext context,
  ///     Animation<double> animation,
  ///     Animation<double> secondaryAnimation,
  ///   ) {
  ///     return FlutterGeneralDialog(
  ///       padding: EdgeInsets.all(4),
  ///       child: Padding(
  ///         padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
  ///         child: Column(
  ///           crossAxisAlignment: CrossAxisAlignment.stretch,
  ///           children: <Widget>[
  ///             Text(
  ///               'Dialog title ?',
  ///               style: TextStyle(
  ///                 fontSize: 18,
  ///                 fontWeight: FontWeight.bold,
  ///               ),
  ///             ),
  ///             SizedBox(height: 10),
  ///             ButtonBar(
  ///               children: <Widget>[
  ///                 FlatButton(
  ///                   onPressed: () =>
  ///                       Navigator.of(context).pop(),
  ///                   child: Text('OK'),
  ///                 ),
  ///               ],
  ///             ),
  ///           ],
  ///         ),
  ///       ),
  ///     );
  ///   },
  /// );
  /// ```
  const FlutterGeneralDialog({
    Key key,
    @required this.child,
    this.padding,
    this.borderRadius,
    this.type = MaterialType.canvas,
    this.elevation = 0.0,
    this.color,
    this.shadowColor = const Color(0xFF000000),
    this.textStyle,
    this.shape,
    this.borderOnForeground = true,
    this.clipBehavior = Clip.none,
    this.animationDuration = kThemeChangeDuration,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: crossAxisAlignment,
      mainAxisAlignment: mainAxisAlignment,
      children: <Widget>[
        Padding(
          padding: padding ?? EdgeInsets.zero,
          child: Material(
            borderRadius: borderRadius ?? BorderRadius.circular(25),
            type: type,
            elevation: elevation,
            color: color,
            shadowColor: shadowColor,
            textStyle: textStyle,
            shape: shape,
            borderOnForeground: borderOnForeground,
            clipBehavior: clipBehavior,
            animationDuration: animationDuration,
            child: child,
          ),
        ),
      ],
    );
  }
}
