// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import './online_Players.dart';
import './single_player.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
//----------------------------------------------------------------------------------
      body: SingleChildScrollView(
//----------------------------------------------------------------------------------
        child: Container(
          height: screenheight,
          width: screenwidth,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
//-----------------------------------------------------------------------------------
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //------------------------------------------------------------
              //Flexible(
              // flex: 1,
              SizedBox(
                height: screenheight / 3,
                width: screenwidth,
                child: Card(
                  child: Image.asset(
                    'logo.jpeg',
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 15,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ),
              //-----------------------------------------------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  'Single Player',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return SinglePlayer();
                        },
                      ),
                    );
                  });
                },
              ),
              //-------------------------------------------------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  'Online Players',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyWidget();
                      },
                    ),
                  );
                },
              ),
              //-------------------------------------------------------------
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  'Exit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
//-----------------------------------------------------------------------------------
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.settings),
        backgroundColor: Color.fromARGB(255, 79, 91, 250),
        elevation: 10,
        onPressed: () {},
      ),
    );
  }
}
