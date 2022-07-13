import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FLutter Demo',
        theme: ThemeData(primaryColor: Colors.blue),
        home: const MyHomePage(title: 'Select The Number'));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List imgList = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  var _numFive = 1;
  String text = '';
  void radomNumber() {
    setState(() {
      imgList.shuffle();
      var _numOne = imgList[0];
      var _numTwo = imgList[1];
      var _numThree = imgList[2];
      var _numbFour = imgList[3];
      List newImgList = [_numOne, _numTwo, _numThree, _numbFour];
      newImgList.shuffle();
      _numFive = newImgList[1];
    });
  }

  @override
  Widget build(BuildContext context) {
    var _numOne = imgList[0];
    var _numTwo = imgList[1];
    var _numThree = imgList[2];
    var _numFour = imgList[3];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Text("Select the number:"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "$_numFive",
              style: const TextStyle(fontSize: 70),
            ),
            const Padding(padding: EdgeInsets.only(top: 120)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  borderRadius: BorderRadius.circular(10),
                  elevation: 5,
                  child: SizedBox(
                    width: 120,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (_numOne == _numFive) {
                            radomNumber();
                            const snackBar = SnackBar(
                              duration: Duration(milliseconds: 700),
                              content: Text('Yay! You win'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          } else {
                            radomNumber();
                            const snackBar = SnackBar(
                              duration: Duration(milliseconds: 700),
                              content: Text(
                                'Sry! You Lose',
                              ),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        });
                      },
                      child: Image.asset(
                        'images/$_numOne.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 120,
                    child: InkWell(
                      onTap: () {
                        if (_numTwo == _numFive) {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 700),
                            content: Text('Yay! You Win'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 700),
                            content: Text('Sry! You Lose'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Image.asset(
                        'images/$_numTwo.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 120,
                    child: InkWell(
                      onTap: () {
                        if (_numThree == _numFive) {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 400),
                            content: Text('Yay! You Win'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 400),
                            content: Text('Sry! You Lose'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Image.asset(
                        'images/$_numThree.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 120,
                    child: InkWell(
                      onTap: () {
                        if (_numFour == _numFive) {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 400),
                            content: Text('Yay! You Win'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          radomNumber();
                          const snackBar = SnackBar(
                            duration: Duration(milliseconds: 400),
                            content: Text('Sry! You Lose'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Image.asset(
                        'images/$_numFour.png',
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
