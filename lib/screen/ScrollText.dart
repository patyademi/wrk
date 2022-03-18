

import 'package:flutter/material.dart';

class ScrollText extends StatelessWidget {
  const ScrollText({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) {
    String n = 'Number';
    List <Widget> wigets = [];
    for (int i = 0; i < 100; i += 1) {
      wigets.add(Container(
          height: 30,
          padding: EdgeInsets.only(left: 17),
          child: Text('${n * 3}',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w200,
            ),
          )
      ));
    }
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text('List of lines',
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child:Container(
             width: 300,
              child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: wigets,
              ),
            ),

          ),
          )],
      ),
    ),
    );
  }
}
