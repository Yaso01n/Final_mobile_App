// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobileappproject/home_Page.dart';
import 'package:mobileappproject/single_results_page.dart';
import './dummy_data.dart';
import 'dart:math';
import 'package:provider/provider.dart';

class SinglePlayer extends StatefulWidget {
  const SinglePlayer({Key? key}) : super(key: key);

  @override
  State<SinglePlayer> createState() => _SinglePlayerState();
}

class _SinglePlayerState extends State<SinglePlayer> {
  Random random = Random();
  // from 0 upto 4 included
  List<int> questionAsked = [];

  int NoQuestionRepeated() {
    int r = random.nextInt(5);
    while (questionAsked.contains(r)) {
      r = random.nextInt(5);
    }
    return r;
  }

  int qnumber = 0;

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    void checkAnswer(String answer, String trueanswer) {
      setState(() {
        if (answer == trueanswer) {
          Provider.of<ResultProvider>(context, listen: false).inc();
          showDialog(
              context: context,
              builder: (context) {
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.of(context).pop(true);
                });
                return AlertDialog(
                  title: Center(
                      child: Text('Well Done',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ))),
                  backgroundColor: Colors.green[700],
                );
              });
        } else {
          showDialog(
              context: context,
              builder: (context) {
                Future.delayed(Duration(seconds: 1), () {
                  Navigator.of(context).pop(true);
                });
                return AlertDialog(
                  title: Center(
                      child: Text(
                    'Oh No!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                  backgroundColor: Colors.red[700],
                );
              });
        }
      });
    }

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //------------------------------------------------------------
              Expanded(
                flex: 2,
                child: Card(
                  child: Center(
                    child: Text(
                      DummyData.question[qnumber].questionName,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  color: Colors.transparent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 15,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                ),
              ),
              //------------------------------------------------------------answer1
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: DummyData.question[qnumber].ans1 == true
                      ? Colors.grey
                      : Color.fromARGB(255, 210, 226, 212),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  DummyData.question[qnumber].answer1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (DummyData.question[qnumber].ans1 == true) {
                      DummyData.question[qnumber].ans1 = false;
                    } else {
                      DummyData.question[qnumber].ans1 = true;
                      DummyData.question[qnumber].ans2 = false;
                      DummyData.question[qnumber].ans3 = false;
                      DummyData.question[qnumber].ans4 = false;
                    }
                  });
                },
              ),
              //------------------------------------------------------------answer2
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: DummyData.question[qnumber].ans2 == true
                      ? Colors.grey
                      : Color.fromARGB(255, 210, 226, 212),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  DummyData.question[qnumber].answer2,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (DummyData.question[qnumber].ans2 == true) {
                      DummyData.question[qnumber].ans2 = false;
                    } else {
                      DummyData.question[qnumber].ans2 = true;
                      DummyData.question[qnumber].ans1 = false;
                      DummyData.question[qnumber].ans3 = false;
                      DummyData.question[qnumber].ans4 = false;
                    }
                  });
                },
              ),
              //------------------------------------------------------------answer3
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: DummyData.question[qnumber].ans3 == true
                      ? Colors.grey
                      : Color.fromARGB(255, 210, 226, 212),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  DummyData.question[qnumber].answer3,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (DummyData.question[qnumber].ans3 == true) {
                      DummyData.question[qnumber].ans3 = false;
                    } else {
                      DummyData.question[qnumber].ans3 = true;
                      DummyData.question[qnumber].ans1 = false;
                      DummyData.question[qnumber].ans2 = false;
                      DummyData.question[qnumber].ans4 = false;
                    }
                  });
                },
              ),
              //  ),
              //------------------------------------------------------------answer4
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: DummyData.question[qnumber].ans4 == true
                      ? Colors.grey
                      : Color.fromARGB(255, 210, 226, 212),
                  onPrimary: Colors.white,
                  padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  side: BorderSide(color: Colors.grey, width: 2),
                  elevation: 10,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  DummyData.question[qnumber].answer4,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    if (DummyData.question[qnumber].ans4 == true) {
                      DummyData.question[qnumber].ans4 = false;
                    } else {
                      DummyData.question[qnumber].ans4 = true;
                      DummyData.question[qnumber].ans1 = false;
                      DummyData.question[qnumber].ans2 = false;
                      DummyData.question[qnumber].ans3 = false;
                    }
                  });
                },
              ),
              // ),
              //------------------------------------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      'Next',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        questionAsked.add(qnumber);
                        if (questionAsked.length < DummyData.question.length) {
                          if (DummyData.question[qnumber].ans1 == true) {
                            checkAnswer(DummyData.question[qnumber].answer1,
                                DummyData.question[qnumber].rightanswer);
                          } else {
                            if (DummyData.question[qnumber].ans2 == true) {
                              checkAnswer(DummyData.question[qnumber].answer2,
                                  DummyData.question[qnumber].rightanswer);
                            } else {
                              if (DummyData.question[qnumber].ans3 == true) {
                                checkAnswer(DummyData.question[qnumber].answer3,
                                    DummyData.question[qnumber].rightanswer);
                              } else {
                                if (DummyData.question[qnumber].ans4 == true) {
                                  checkAnswer(
                                      DummyData.question[qnumber].answer4,
                                      DummyData.question[qnumber].rightanswer);
                                }
                              }
                            }
                          }
                          qnumber = NoQuestionRepeated();
                          SinglePlayer();
                        } else {
                          questionAsked = [];

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ResultsPage();
                              },
                            ),
                          );
                        }
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
