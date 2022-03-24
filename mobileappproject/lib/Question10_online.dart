import 'package:flutter/material.dart';
import 'Question7_online.dart';
import 'Question9_online.dart';
import 'package:audioplayers/audioplayers.dart';

class Question10 extends StatelessWidget {
  static AudioCache player = AudioCache();
  const Question10({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 46, 35, 35),
          leading: Icon(Icons.quiz),
          title: const Text('Question Ten'),
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
                  'Which song does this tune belong to ?',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      fontFamily: 'Open Sans'),
                ),
                SizedBox(
                  height: 18,
                  width: 18,
                ),

                Container(
                  width: 80,
                  height: 50,
                  child: Card(
                    child: ButtonTheme(
                      minWidth: 20.0,
                      height: 10.0,
                      child: FlatButton(
                        onPressed: () {
                          player.play('elbkht.wav');
                        },
                        child: Text(
                          "play",
                          style: TextStyle(fontSize: 15),
                        ),
                        color: Colors.red,
                        textColor: Colors.white,
                      ),
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
                    onPressed: () {},
                    child: Text(
                      "          El Bakht - Wegz          ",
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
                      "   El Hasa el Sabaa - MEKY   ",
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
                      "El fatra de - TAMER ASHOUR",
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
