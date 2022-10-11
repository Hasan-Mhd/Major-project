import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tabBar.dart';
import 'main.dart';


class androidData extends StatefulWidget {
  const androidData({Key? key}) : super(key: key);

  @override
  State<androidData> createState() => _androidDataState();
}

class _androidDataState extends State<androidData> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => tabBar(2)));
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          color: Colors.white,
          boxShadow: [BoxShadow(blurRadius: 25.0, color: Colors.green)],
          // image: DecorationImage(
          //   image: AssetImage('images/1.png'),
          //   fit: BoxFit.cover
          // ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        // padding: EdgeInsets.all(10.0),
        height: 250,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              const Icon(
                FontAwesomeIcons.android,
                color: Colors.green,
                size: 25,
              ),
              SizedBox(
                height: 80.0,
                width: 20.0,
                child: VerticalDivider(
                  color: Colors.teal.shade100,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Android Developer',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 30.0,
                        fontFamily: 'SourceSansPro'),
                  ),
                ],
              ),
            ],

          ),
          // child: ListTile(
          //   leading: const Icon(
          //     FontAwesomeIcons.toolbox,
          //     color: Colors.amber,
          //     size: 30,
          //   ),
          //   title: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         'Project Management',
          //         style: TextStyle(
          //             color: Colors.teal.shade900,
          //             fontSize: 30.0,
          //             fontFamily: 'SourceSansPro'),
          //       ),
          //       Image.network('https://kantata.marketing/wp-content/uploads/2021/08/project-managemenr-goals.jpg'),
          //     ],
          //   ),
          // ),
        ),
      ),
    );
  }
}
