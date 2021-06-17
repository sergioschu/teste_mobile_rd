import 'package:flutter/cupertino.dart';
import 'package:teste_mobile_rd/ios/pages/home_page.dart';

class IOSApp extends StatelessWidget {
  const IOSApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: "IMC",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
