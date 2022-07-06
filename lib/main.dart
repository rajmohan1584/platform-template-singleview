import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

void main() {
  runApp(const SingleViewApp());
}

class SingleViewApp extends StatelessWidget {
  const SingleViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final materialThemeData = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(color: Colors.blue.shade600),
      primaryColor: Colors.blue,
      secondaryHeaderColor: Colors.blue,
      canvasColor: Colors.blue,
      backgroundColor: Colors.red,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          .copyWith(secondary: Colors.blue),
    );

    final materialApp = MaterialAppData(theme: materialThemeData);

    const cupertinoTheme = CupertinoThemeData(
        primaryColor: Colors.yellow,
        barBackgroundColor: Colors.red,
        scaffoldBackgroundColor: Colors.white);

    final cupertinoApp = CupertinoAppData(theme: cupertinoTheme);

    return PlatformApp(
      home: MyHomePage(),
      cupertino: ((context, target) => cupertinoApp),
      material: ((context, target) => materialApp),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
        appBar: PlatformAppBar(title: const Text("Single View")),
        body: const SafeArea(child: Text("TODO view")));
  }
}
