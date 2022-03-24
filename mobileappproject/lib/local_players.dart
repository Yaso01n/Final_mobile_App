// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LocalPlayers extends StatefulWidget {
  const LocalPlayers({Key? key}) : super(key: key);

  @override
  State<LocalPlayers> createState() => _FirstSplashState();
}

//---------------------------------------------------------------------first route
class _FirstSplashState extends State<LocalPlayers> {
  @override
  void initState() {
    var delay = Duration(seconds: 5);
    Future.delayed(
      delay,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Splashcounter3();
            },
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;

    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('123.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(seconds: 5),
                      child: Image.asset(
                        'cartoon-brain-left.png',
                        fit: BoxFit.fill,
                        width: width - 20,
                      ),
                      builder:
                          (BuildContext context, double _mappedSteps, child) {
                        return Opacity(
                          opacity: _mappedSteps,
                          child: Padding(
                            padding: EdgeInsets.only(left: _mappedSteps * 20),
                            child: child,
                          ),
                        );
                      }),
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(seconds: 5),
                      child: Image.asset(
                        'cartoon-brain-right.png',
                        fit: BoxFit.fill,
                        width: width - 20,
                      ),
                      builder:
                          (BuildContext context, double _mappedSteps, child) {
                        return Opacity(
                          opacity: _mappedSteps,
                          child: Padding(
                            padding: EdgeInsets.only(right: _mappedSteps * 20),
                            child: child,
                          ),
                        );
                      }),
                ],
              )),
          Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TweenAnimationBuilder(
                      tween: Tween<double>(begin: 0, end: 1),
                      duration: Duration(seconds: 5),
                      child: Text(
                        'Are you Ready?',
                        style: TextStyle(
                            fontSize: width / 4,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      builder:
                          (BuildContext context, double _mappedSteps, child) {
                        return Opacity(
                          opacity: _mappedSteps,
                          child: Padding(
                            padding: EdgeInsets.all(_mappedSteps * 20),
                            child: child,
                          ),
                        );
                      }),
                ],
              ))
        ],
      ),
    ));
  }
}

//----------------------------------------------------------------------Second route
class Splashcounter3 extends StatefulWidget {
  const Splashcounter3({Key? key}) : super(key: key);

  @override
  State<Splashcounter3> createState() => _Splashcounter3State();
}

class _Splashcounter3State extends State<Splashcounter3> {
  @override
  void initState() {
    var delay = Duration(seconds: 2);
    Future.delayed(
      delay,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Splashcounter2();
            },
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: 1),
            duration: Duration(seconds: 2),
            child: Text(
              '3',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white),
            ),
            builder: (BuildContext context, double _mappedSteps, child) {
              return Opacity(
                opacity: _mappedSteps,
                child: Padding(
                  padding: EdgeInsets.all(_mappedSteps * 20),
                  child: child,
                ),
              );
            }),
      ),
    ));
  }
}

//--------------------------------------------------------------------third route
class Splashcounter2 extends StatefulWidget {
  const Splashcounter2({Key? key}) : super(key: key);

  @override
  State<Splashcounter2> createState() => _Splashcounter2State();
}

class _Splashcounter2State extends State<Splashcounter2> {
  @override
  void initState() {
    var delay = Duration(seconds: 2);
    Future.delayed(
      delay,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Splashcounter1();
            },
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(seconds: 2),
                child: Text(
                  '2',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),
                builder: (BuildContext context, double _mappedSteps, child) {
                  return Opacity(
                    opacity: _mappedSteps,
                    child: Padding(
                      padding: EdgeInsets.all(_mappedSteps * 20),
                      child: child,
                    ),
                  );
                }),
          ),
        ));
  }
}

//----------------------------------------------------------------------fourth route
class Splashcounter1 extends StatefulWidget {
  const Splashcounter1({Key? key}) : super(key: key);

  @override
  State<Splashcounter1> createState() => _Splashcounter1State();
}

class _Splashcounter1State extends State<Splashcounter1> {
  @override
  void initState() {
    var delay = Duration(seconds: 2);
    Future.delayed(
      delay,
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) {
              return LocalPlayersHome();
            },
          ),
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 1),
                duration: Duration(seconds: 2),
                child: Text(
                  '1',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Colors.white),
                ),
                builder: (BuildContext context, double _mappedSteps, child) {
                  return Opacity(
                    opacity: _mappedSteps,
                    child: Padding(
                      padding: EdgeInsets.all(_mappedSteps * 20),
                      child: child,
                    ),
                  );
                }),
          ),
        ));
  }
}

//---------------------------------------------------------------------the main game
class LocalPlayersHome extends StatefulWidget {
  const LocalPlayersHome({Key? key}) : super(key: key);

  @override
  State<LocalPlayersHome> createState() => _LocalPlayersHomeState();
}

class _LocalPlayersHomeState extends State<LocalPlayersHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Text('play the game'),
      ),
    ));
  }
}
