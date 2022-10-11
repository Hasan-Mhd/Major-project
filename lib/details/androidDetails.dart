import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../tabBar.dart';
import '../main.dart';
class androidDetails extends StatelessWidget {
  const androidDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 25.0,
              color: Colors.black45
          )
        ],
      ),
      margin: const EdgeInsets.symmetric(
          vertical: 10.0, horizontal: 15.0),
      // padding: EdgeInsets.all(10.0),
      height: 250,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(image: AssetImage('images/1.png'),
              fit: BoxFit.cover,),
            const Divider(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text('Talented android developer use flutter frame work professionally',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
  }
}
