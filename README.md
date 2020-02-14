# flutter_general_dialog

A simple Dialog widget

![](./doc/demo.gif)

## install
```
dependencies:
  flutter_general_dialog:
```

## example
```dart
showGeneralDialog(
  context: context,
  barrierDismissible: true,
  barrierColor: Color(0x80000000),
  barrierLabel: 'Dismiss',
  transitionDuration: Duration(milliseconds: 300),
  transitionBuilder: (
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    var tween =
        Tween(begin: Offset(0, 1), end: Offset(0, 0.8));
    return SlideTransition(
      position: tween.animate(
        CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ),
      ),
      child: child,
    );
  },
  pageBuilder: (
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return FlutterGeneralDialog(
      padding: EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Dialog title ?',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  onPressed: () =>
                      Navigator.of(context).pop(),
                  child: Text('OK'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  },
);
```
