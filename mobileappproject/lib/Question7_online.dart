import 'package:flutter/material.dart';
import 'Question1_online.dart';
import 'Question2_online.dart';
import 'Question5online.dart';
import 'Question4_online.dart';
import 'Question8_online.dart';

class Question7 extends StatelessWidget {
  const Question7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 46, 35, 35),
          leading: Icon(Icons.quiz),
          title: const Text('Question Seven'),
        ),
        ////////////////////////////////////////////////////////////////////AppBar
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('space_1.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          ////////////////////////////////////////////////////////////////////Background
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Who scored the first Premier League hat-trick ?',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w900,
                      fontSize: 25,
                      fontFamily: 'Open Sans'),
                ),

                Container(
                  width: 350,
                  height: 250,
                  child: Card(
                    child: Image.asset(
                      'Premierleague.png',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),

                Padding(padding: EdgeInsets.all(20)),
                ////////////////////////////////////////////////////////////////////////
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Question8()));
                    },
                    child: Text(
                      "Eric Cantona",
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Color.fromARGB(255, 210, 226, 212),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                ///////////////////////////////////////////////////////////////////////button 1
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                //////////////////////////////////////////////////////////////sizebox
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "John Hendrie",
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Color.fromARGB(255, 210, 226, 212),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                ///////////////////////////////////////////////////////////////////Button 2
                SizedBox(
                  height: 10,
                  width: 10,
                ),
///////////////////////////////////////////////////////////////////////////////////sizebox
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Mark Robins",
                      style: TextStyle(fontSize: 25),
                    ),
                    color: Color.fromARGB(255, 210, 226, 212),
                    textColor: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                /////////////////////////////////////////////////////////////////Button 3
              ],
            ),
          ),
        ));
  }
}
