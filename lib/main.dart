import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Container(
          padding: const EdgeInsets.all(20),
          color: Colors.purple,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBar(
                backgroundColor: Colors.red,
                title: const Text('Lab5 Task 3 - widget tree'),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: FractionallySizedBox(
                          heightFactor: 1,
                          child: Container(
                            margin: const EdgeInsets.all(20),
                            color: Colors.green,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Rimsha',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 38,
                                  ),
                                ),
                                SizedBox(width: 50),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                  size: 38,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Text(
                          'Hi',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 128.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
