import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_programing_books/books/algorithms.dart';
import 'package:pocket_programing_books/books/android.dart';
import 'package:pocket_programing_books/books/angular.dart';
import 'package:pocket_programing_books/books/angularjs.dart';
import 'package:pocket_programing_books/books/bash.dart';
import 'package:pocket_programing_books/books/c.dart';
import 'package:pocket_programing_books/books/chas.dart';
import 'package:pocket_programing_books/books/cplusplus.dart';
import 'package:pocket_programing_books/books/css.dart';
import 'package:pocket_programing_books/books/entityframework.dart';
import 'package:pocket_programing_books/books/excelvba.dart';
import 'package:pocket_programing_books/books/haskell.dart';
import 'package:pocket_programing_books/books/hibernate.dart';
import 'package:pocket_programing_books/books/html.dart';
import 'package:pocket_programing_books/books/html5.dart';
import 'package:pocket_programing_books/books/ios.dart';
import 'package:pocket_programing_books/books/java.dart';
import 'package:pocket_programing_books/books/javascript.dart';
import 'package:pocket_programing_books/books/jquery.dart';
import 'package:pocket_programing_books/books/kotin.dart';
import 'package:pocket_programing_books/books/latex.dart';
import 'package:pocket_programing_books/books/linux.dart';
import 'package:pocket_programing_books/books/matlab.dart';
import 'package:pocket_programing_books/books/microsoft.dart';
import 'package:pocket_programing_books/books/mongo.dart';
import 'package:pocket_programing_books/books/mysql.dart';
import 'package:pocket_programing_books/books/netframework.dart';
import 'package:pocket_programing_books/books/nodejs.dart';
import 'package:pocket_programing_books/books/objectivec.dart';
import 'package:pocket_programing_books/books/oracledatabase.dart';
import 'package:pocket_programing_books/books/perl.dart';
import 'package:pocket_programing_books/books/php.dart';
import 'package:pocket_programing_books/books/postgresql.dart';
import 'package:pocket_programing_books/books/powershell.dart';
import 'package:pocket_programing_books/books/pyhon.dart';
import 'package:pocket_programing_books/books/r.dart';
import 'package:pocket_programing_books/books/reactjs.dart';
import 'package:pocket_programing_books/books/reactnative.dart';
import 'package:pocket_programing_books/books/ruby.dart';
import 'package:pocket_programing_books/books/rubyonralls.dart';
import 'package:pocket_programing_books/books/springframework.dart';
import 'package:pocket_programing_books/books/sql.dart';
import 'package:pocket_programing_books/books/swift.dart';
import 'package:pocket_programing_books/books/typescript.dart';
import 'package:pocket_programing_books/books/vba.dart';
import 'package:pocket_programing_books/books/visualbasic.dart';
import 'package:pocket_programing_books/books/xamarin.dart';
import 'package:pocket_programing_books/drawerfile.dart';
import 'package:firebase_admob/firebase_admob.dart';
const String testDevice = '76BAFA6560476F7AD9B0E9A74CFE42AB';
class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['programming', 'books'],
  );



  InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: 'ca-app-pub-7404114267558155/2041252553',
    targetingInfo: targetingInfo,
    listener: (MobileAdEvent event) {
      print("InterstitialAd event is $event");
    },
  );




  @override
  void initState() {
    myInterstitial
      ..load()
      ..show(
        anchorType: AnchorType.bottom,
        anchorOffset: 0.0,
        horizontalCenterOffset: 0.0,
      );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: Text('Pocket Programming Books'),
            ),
            drawer: Drawermain(),
            body: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => C()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('C Programming'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Cplus()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Text('C++ Oops'),
                                Icon(Icons.devices),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Chas()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('C#'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => html5()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Text('HTML 5'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => html5canvas()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Text('HTML 5 Canvas'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => css()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Column(
                              children: [
                                Text('CSS'),
                                Icon(Icons.multiline_chart),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => netframe()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlueAccent,
                            child: Column(
                              children: [
                                Text('.NET Framework'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => algorithms()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepPurple,
                            child: Column(
                              children: [
                                Text('Algorithms'),
                                Icon(Icons.more_vert),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => android()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightGreen,
                            child: Column(
                              children: [
                                Text('Android'),
                                Icon(Icons.mobile_screen_share),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => angular()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.redAccent,
                            child: Column(
                              children: [
                                Text('Angular 2+'),
                                Icon(Icons.track_changes),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => angular2()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.purple,
                            child: Column(
                              children: [
                                Text('Angular JS'),
                                Icon(Icons.scatter_plot),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => bash()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black87,
                            child: Column(
                              children: [
                                Text('Bash'),
                                Icon(Icons.group_work),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => entityframework()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                            child: Column(
                              children: [
                                Text('Entity Framework'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => excel()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Column(
                              children: [
                                Text('Excel VBA'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => C()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.red,
                            child: Column(
                              children: [
                                Text('Git'),
                                Icon(Icons.ac_unit),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => haskell()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepPurpleAccent,
                            child: Column(
                              children: [
                                Text('Haskell'),
                                Icon(Icons.blur_on),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => hibernate()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.orangeAccent,
                            child: Column(
                              children: [
                                Text('Hibernate'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ios()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('ios Developer'),
                                Icon(Icons.smartphone),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => java()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black12,
                            child: Column(
                              children: [
                                Text('java'),
                                Icon(Icons.eject),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => javascript()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            child: Column(
                              children: [
                                Text('javaScript'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => jquery()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlueAccent,
                            child: Column(
                              children: [
                                Text('jQuery'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => kotlin()),
                              );
                            },
                            textColor: Colors.redAccent,
                            color: Colors.yellow,
                            child: Column(
                              children: [
                                Text('Kotlin'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => latex()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black38,
                            child: Column(
                              children: [
                                Text('LaTex'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => linux()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black,
                            child: Column(
                              children: [
                                Text('linux'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => matlab()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('MATLAB'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => microsoft()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blueAccent,
                            child: Column(
                              children: [
                                Text('Microsoft SQL Server'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => mongo()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Column(
                              children: [
                                Text('MongoDB'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => mysql()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            child: Column(
                              children: [
                                Text('MySQL'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => nodejs()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightGreen,
                            child: Column(
                              children: [
                                Text('Node.js'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => objectivec()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.black45,
                            child: Column(
                              children: [
                                Text('Objective-C'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => oracle()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.red,
                            child: Column(
                              children: [
                                Text('Oracle Database'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => perl()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.brown,
                            child: Column(
                              children: [
                                Text('perl'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => php()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.purpleAccent,
                            child: Column(
                              children: [
                                Text('PHP'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => post()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.pink,
                            child: Column(
                              children: [
                                Text('PostgreSQL'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => powershell()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('PowerShell'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => python()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Text('python'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => r()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            child: Column(
                              children: [
                                Text('R'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => reactjs()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlue,
                            child: Column(
                              children: [
                                Text('React JS'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => reactnative()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.lightBlueAccent,
                            child: Column(
                              children: [
                                Text('React native'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => ruby()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.redAccent,
                            child: Column(
                              children: [
                                Text('Ruby'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => rubyonrails()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.pinkAccent,
                            child: Column(
                              children: [
                                Text('Ruby on Rails'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => springframework()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.green,
                            child: Column(
                              children: [
                                Text('Spring Framework'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => sql()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.indigoAccent,
                            child: Column(
                              children: [
                                Text('SQL'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => swift()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepOrange,
                            child: Column(
                              children: [
                                Text('Swift'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => typescript()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.blue,
                            child: Column(
                              children: [
                                Text('TypeScript'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => vba()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.orange,
                            child: Column(
                              children: [
                                Text('VBA'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => visualbasic()),
                              );
                            },
                            textColor: Colors.purple,
                            color: Colors.yellowAccent,
                            child: Column(
                              children: [
                                Text('Visual Basic.NET'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                    Row(

                        children: [
                      SizedBox(
                        child: FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => xamarin()),
                              );
                            },
                            textColor: Colors.white,
                            color: Colors.deepOrangeAccent,
                            child: Column(
                              children: [
                                Text('Xamarin .Forms'),
                                Icon(Icons.computer),
                              ],
                            )),
                      )
                    ]),
                  ],
                ),
Padding(padding: EdgeInsets.only(bottom: 70.0)

),
              ],
            )));
  }
}
