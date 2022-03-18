import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class myButton extends StatelessWidget {
  const myButton ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      alignment: Alignment.center,
      child: Column(
        children: [ElevatedButton(onPressed: (){}, child: Text('ElevationButton')),
        OutlineButton(onPressed: (){}, child: Text('OutlinedButton'),
        )],
      ),
    );
  }
}
