// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './home_Page.dart';
import './dummy_data.dart';
import './single_player.dart';

class ResultsPage extends StatefulWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  State<ResultsPage> createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    final Counter = Provider.of<ResultProvider>(context, listen: false).counter;

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
          child: Center(
//-----------------------------------------------------------------------------------
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text('The result is:',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.width,
                  width: MediaQuery.of(context).size.height / 2,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 7, 134, 92),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '${Counter.toString()} / 50',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 48, 62, 253),
                    onPrimary: Colors.white,
                    padding: EdgeInsets.all(25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    side: BorderSide(color: Colors.grey, width: 2),
                    elevation: 10,
                    shadowColor: Colors.grey,
                  ),
                  child: Text(
                    'Back to home',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      Provider.of<ResultProvider>(context, listen: false)
                          .finish();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomePage();
                          },
                        ),
                      );
                    });
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ResultProvider extends ChangeNotifier {
  int counter = 0;
  inc() {
    counter = counter + 10;
    notifyListeners();
  }

  finish() {
    counter = 0;
    notifyListeners();
  }
}
