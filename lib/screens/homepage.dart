import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'location.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var noofspots;
  var noofcars;
  var lat;
  var lon;
  Location location = Location();
  

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
                    style: GoogleFonts.anton(
                      color: Colors.green,
                      fontSize: 45.0,
                    ),
                  ),
                  SizedBox(
                    height: 150.0,
                  ),
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    minWidth: 200,
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    onPressed: () {
                      location.getCurrentLocation();
                      setState(() {
                        lat = location.latitude;
                        lon = location.longitude;
                      });
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
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Latitude: ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  '$lat',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                )
                              ]),
                          SizedBox(height: 10.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Longitude: ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  '$lon',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                )
                              ]),
                          SizedBox(height: 10.0),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'No of Spots: ',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                ),
                                SizedBox(width: 10.0),
                                Text(
                                  '$noofspots',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                  ),
                                )
                              ]),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'No of Cars: ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                '$noofcars',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  MaterialButton(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
                    minWidth: 200,
                    color: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
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
                          'Open Map',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
