import 'package:flutter/material.dart';

/// 路由表
class Routes {
  // 根节点
  // static const String rootPage = "/";
  // static const String onePage = "onePage";
  // static const String twoPage = "twoPage";

  static Map<String, WidgetBuilder> routes = {
    // rootPage: (BuildContext context)=> const MyHomePage(title: 'Flutter Demo Home Page'),
    // onePage: (BuildContext context, {arguments}) => OnePage(arguments['user'],arguments['title']),
    // twoPage: (BuildContext context) => TwoPage(),
  };

  // 判断是否是传参
  static Route? onGenerateRoute(RouteSettings settings) {
    final String? name = settings.name;

    final Function? pageContentBuilder = routes[name];
    if (pageContentBuilder == null) return null;
    if (settings.arguments != null) {
      return MaterialPageRoute(
          builder: (BuildContext context) =>
              pageContentBuilder(context, arguments: settings.arguments));
    } else {
      return MaterialPageRoute(
          builder: (BuildContext context) => pageContentBuilder(context));
    }
  }

}
