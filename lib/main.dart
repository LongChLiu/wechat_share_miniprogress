import 'package:flutter/material.dart';
import 'package:fluwx/fluwx.dart';
import 'package:wechat_share_miniprogress/miniprogress_share/share_select_page.dart';
import 'miniprogress_share/wechat_share_miniprogress.dart';


void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initFluwx();
  }

  _initFluwx() async {
    await registerWxApi(
      appId: "wxd930ea5d5a258f4f",
      doOnAndroid: true,
      doOnIOS: true,
      universalLink: "https://your.univerallink.com/link/"
    );
    var result = await isWeChatInstalled;
    print("is installed $result");
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      routes: <String, WidgetBuilder>{

        "TheShareMiniProgram": (context) => const ShareMiniProgramPage(),


      },
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text("分享小程序标题"),),
        body: const ShareSelectorPage()
      ),


    );
  }
}


