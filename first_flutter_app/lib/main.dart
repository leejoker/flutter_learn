import 'package:flutter/material.dart';
import 'tiproute.dart' as tip;
import 'homepage.dart' as home;
import 'newroute.dart' as newroute;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        "new_page": (context) => newroute.NewRoute(),
        "/": (context) =>
            home.MyHomePage(title: 'Flutter Demo Home Page'), //注册首页路由
        "tip_route": (context) => tip.RouterTestRoute(),
      },
    );
  }
}
