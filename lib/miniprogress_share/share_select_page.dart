import 'package:flutter/material.dart';





class ShareSelectorPage extends StatelessWidget {
  const ShareSelectorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: OutlineButton(onPressed: (){
            Navigator.of(context).pushNamed("TheShareMiniProgram");
          },child: const Text('点击进行小程序分享'),),
        ),

      ],


    );
  }
}
