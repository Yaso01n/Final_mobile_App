import 'package:flutter/material.dart';
import 'Question1_online.dart';
import 'Question2_online.dart';
import 'Question3_online.dart';

class MyWidget extends StatelessWidget {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  createAlertDialog(BuildContext context) {
    TextEditingController customController = TextEditingController();
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Color.fromARGB(255, 126, 255, 137),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(32.0))),
            contentPadding: EdgeInsets.only(top: 20.0),
            insetPadding: EdgeInsets.only(top: 20),
            title: Text('Host Number : '),
            content: TextField(
              controller: customController,
            ),
            actions: <Widget>[
              Expanded(
                  child: MaterialButton(
                elevation: 5,
                child: Text('OK'),
                onPressed: () {},
              ))
            ],
          );
        });
    ///////////////////////////////////////////////////////////////////////////////////dialog
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 46, 35, 35),
          leading: Icon(Icons.account_tree_outlined),
          title: Text('Multi Devices'),
        ),
        ////////////////////////////////////////////////////////////////////////////APPbar
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('space_1.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          //////////////////////////////////////////////////////////////////////////// backGround
          child: ListTile(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 350,
                  height: 250,
                  child: Card(
                    child: Image.asset(
                      'space_22.jpeg',
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 15,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                  ),
                ),
                Padding(padding: EdgeInsets.all(20)),
                ////////////////////////////////////////////////////////////////body -- container -- card
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(15),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(
                      color: Colors.grey,
                    ),
                    shadowColor: Colors.grey,
                    elevation: 10,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Question1()),
                    );
                  },
                  child: Text(
                    "   HOST   ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),

                /////////////////////////////////////////////////////////////// host button
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                ///////////////////////////////////////////////////////////// size box
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shadowColor: Colors.grey,
                      elevation: 10,
                      primary: Colors.transparent,
                      onPrimary: Colors.white,
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      side: BorderSide(
                        color: Colors.grey,
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Question1()),
                    );
                  },
                  child: Text(
                    "Member ",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                //////////////////////////////////////////////////////////////// member button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
