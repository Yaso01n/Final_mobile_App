import 'package:flutter/material.dart';
import 'Question2_online.dart';

class Question1 extends StatelessWidget {
  const Question1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 46, 35, 35),
          leading: Icon(Icons.quiz),
          title: const Text('Question One'),
        ),
        ////////////////////////////////////////////////////////////////////AppBar
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('space_1.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'What is the biggest state in America ?',
                  style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w800,
                      fontSize: 30,
                      fontFamily: 'Open Sans'),
                ),
                Container(
                  width: 350,
                  height: 250,
                  child: Card(
                    child: Image.asset(
                      'American.jpg',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                ////////////////////////////
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "California",
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
                ButtonTheme(
                  shape: StadiumBorder(),
                  minWidth: 200.0,
                  height: 100.0,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Question2()),
                      );
                    },
                    child: Text(
                      "Alaska",
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
                      "Texas",
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
