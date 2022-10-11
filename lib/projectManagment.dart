import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tabBar.dart';
class projectMangData extends StatefulWidget {
  const projectMangData({Key? key}) : super(key: key);

  @override
  State<projectMangData> createState() => _projectMangDataState();
}

class _projectMangDataState extends State<projectMangData> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => tabBar(2)));
      },
      child: Container(
        decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15),),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: 25.0,
                  color: Colors.amber
              )
            ]),
        margin: const EdgeInsets.symmetric(
            vertical: 10.0, horizontal: 15.0),
        // padding: EdgeInsets.all(10.0),
        height: 250,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.center ,
            children: [
              const Icon(
                FontAwesomeIcons.toolbox,
                color: Colors.amber,
                size: 30,
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
                    'Project Management',
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontSize: 30.0,
                        fontFamily: 'SourceSansPro'),
                  ),
                  // Image.network('https://kantata.marketing/wp-content/uploads/2021/08/project-managemenr-goals.jpg'),
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
      ) ,
    );
  }
}
