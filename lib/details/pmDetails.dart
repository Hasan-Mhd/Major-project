import 'package:flutter/material.dart';
class pmDetails extends StatelessWidget {
  const pmDetails({Key? key}) : super(key: key);

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
      height: 300,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Image(image: AssetImage('images/3.png'),
              fit: BoxFit.cover,),
            const Divider(height: 10,),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text('Talented software engineer use management frame works professionally',
                style: TextStyle(fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );;
  }
}
