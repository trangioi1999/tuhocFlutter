import 'package:flutter/material.dart';
import 'package:managergasuser/widget/ProductListUser.dart';
import 'package:managergasuser/widget/add_user.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
        appBar: AppBar(
          title:Text("Home Page"),
          actions: <Widget>[
           IconButton(icon: Icon(Icons.add), onPressed: () {
             Navigator.push(context, MaterialPageRoute(builder: (context) => AddUser()));
           })
          ]
        ),
        body:ListView(
          shrinkWrap: true, padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: [
           ProductListUser(
           name: "Tu",
           address: "31 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 23,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Gioi",
           address: "32 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 21,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Nam",
           address: "33 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 35,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Tuan",
           address: "34 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 23,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Tu",
           address: "31 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 23,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Gioi",
           address: "32 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 21,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Nam",
           address: "33 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 35,
           image:"alan.png",
          ),
           ProductListUser(
           name: "Tuan",
           address: "34 bạch đằng, Q. Tân Bình, Tp.HCM",
           age: 23,
           image:"alan.png",
          ),
        ],),
    );
  }
}
