import 'package:ecommerce/details/androidDetails.dart';
import 'package:ecommerce/details/iosDetails.dart';
import 'package:ecommerce/details/pmDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ios.dart';
import 'android.dart';
import 'projectManagment.dart';
class tabBar extends StatelessWidget {
  final int selectPage;
  const tabBar(this.selectPage,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal,
          primaryColor: Colors.teal.shade300
      ),
      home: DefaultTabController(
        initialIndex: selectPage,
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: Colors.teal.shade400,

            bottom:  const TabBar(
              indicatorWeight:6.0 ,
              indicatorColor: Colors.black45,
              tabs: [
                Tab(icon: Icon(Icons.account_box)),
                Tab(icon: Icon(Icons.shop_2_sharp)),
                Tab(icon: Icon(Icons.shopping_bag_outlined)),
              ],
            ),
            title: const Center(child: Text('My App'),),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView(
              children:[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                  const CircleAvatar(
                    radius: 100.0,
                    backgroundImage: AssetImage('images/hasan.jpg'),
                  ),
                  const Text(
                    'Hasan Mhd',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SOFTWARE ENGINEER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 20.0,
                      color: Colors.teal.shade100,
                      letterSpacing: 2.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  Text(
                    'FLUTTER DEVELOPER',
                    style: TextStyle(
                      fontFamily: 'SourceSansPro',
                      fontSize: 15.0,
                      color: Colors.teal.shade100,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                    width: 150.0,
                    child: Divider(
                      color: Colors.teal.shade100,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      FlutterPhoneDirectCaller.callNumber('9686161332');
                    },
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 25.0),
                      // padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: ListTile(
                        leading: const Icon(
                          Icons.phone,
                          color: Colors.teal,
                        ),
                        title: Text(
                          '+91 9686161332',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 20.0,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ) ,
                  ),
                  GestureDetector(
                    onTap: (){
                      var url=Uri.parse('mailto:hasanalimohama27@gmail.com');
                      launchUrl(url);
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      // padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: ListTile(
                        leading: const Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'hasanmhd2021@gmail.com',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 20.0,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      var url=Uri.parse('https://github.com/Hasan-Mhd');
                      launchUrl(url);
                    },
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                      // padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: ListTile(
                        leading: const Icon(
                          Icons.adb_sharp,
                          color: Colors.teal,
                        ),
                        title: Text(
                          'My Github Account',
                          style: TextStyle(
                              color: Colors.teal.shade900,
                              fontSize: 20.0,
                              fontFamily: 'SourceSansPro'),
                        ),
                      ),
                    ),
                  )

                ],
              ),
          ]
              ),
              ListView(
                children: [
                  androidData(),
                  iosData(),
                  projectMangData(),
                ],
              ),
              ListView(
                children: [
                  androidDetails(),
                  iosDetails(),
                  pmDetails()

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
