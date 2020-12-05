import 'main.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'main.dart';
class about extends StatefulWidget {
  @override
  _aboutState createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("About US"),
        ),
        drawer: Drawer(
          child: ListView(
            children:<Widget> [
              DrawerHeader(
                padding: EdgeInsets.all(0),
                child: Container(
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text('Options', textAlign:TextAlign.left , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),),
                  ),
                ),
              ),
              ListTile(
                title: Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                onTap: () {
                  Navigator.pop(context, MaterialPageRoute(builder: (context) =>MyApp()));
                },
              ),
              ListTile(
                title: Text('Exit', style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                onTap: () {
                  exit(0);
                },
              )
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                minRadius: 10,
                maxRadius: 100,
                backgroundImage: AssetImage("assests/logo.jpg"),
              ),
              SizedBox(
                height: 30,
              ),

              Text('MUHAMMAD UMAR FAROOQ', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Text('03059690826', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 20,),
              Text('umarchoudhary195@gmail.com.com', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            ],
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed: (){
            setState(() {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
            });
          },
          child: Icon(Icons.keyboard_return_rounded),
          backgroundColor: Colors.black,
        ) );
  }
}

