import 'package:flutter/material.dart';

void main() {
  runApp(Xyz());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: Abc(),
    );
  }
}

class Abc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'dd', home: Xyz());
  }
}

class Xyz extends StatefulWidget {
  @override
  _XyzState createState() => _XyzState();
}

class _XyzState extends State<Xyz> {
  int x = 0;
  void a() {
    x++;
    print("hello world");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            ElevatedButton(
                child: Text('clicked'),
                onPressed: () {
                  setState(() {
                    a();
                  });
                }),
            Text('$x')
          ],
        ),
      ),
    );
  }
}
