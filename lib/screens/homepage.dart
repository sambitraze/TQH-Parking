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
                      MaterialButton(
                          padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          minWidth: 200,
                          color: Colors.redAccent,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          // padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                          onPressed: () {
                            Navigator.pushNamed(context, '/parkomap');
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              Text(
                                'Find SPOT',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                            ],
                          )),
                    ]),
              ),
            ),
          ),
        ));
  }
}
