import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pocket_programing_books/books/c.dart';
import 'package:pocket_programing_books/pages/imp.dart';

class Drawermain extends StatefulWidget {
  @override
  _DrawermainState createState() => _DrawermainState();
}

class _DrawermainState extends State<Drawermain> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
        children: [

          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20.0),
            color: Colors.redAccent,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(
                      top: 30,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage('https://media.wired.com/photos/5be4cd03db23f3775e466767/125:94/w_2375,h_1786,c_limit/books-521812297.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Freecode',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'RobotoMono',
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Pocket Programming Books',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'RobotoMono',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>First() ),
              );
            },
            leading: Icon(Icons.home),
            title: Text('Home'),
          ),
        ],
        ),
      ),
    );
  }
}
