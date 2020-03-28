import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        'PARKO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 45.0,
                        ),
                      ),
                      SizedBox(
                        height: 380.0,
                      ),
                      Container(
                        width: 100.0,
                        color: Colors.red,
                        child: GestureDetector(
                          child: Row(
                            children: <Widget>[
                              Text('Find SPOT'),
                              Icon(Icons.location_on)
                            ],
                          ),
                          onTap: () {},
                        ),
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
