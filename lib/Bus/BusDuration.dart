import 'package:flutter/material.dart';
import 'package:halisi/Bus/BusTerms.dart';

class BusDuration extends StatefulWidget {
  @override
  _BusDurationState createState() => _BusDurationState();
}

class _BusDurationState extends State<BusDuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halisi',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        elevation: 10,
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            homeTwo(Icons.ac_unit, "Business Loans"),
            Container(
              child: Card(
                elevation: 10,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Duration'),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFf47f07),
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFFf47f07),
                                  width: 1.5,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0))),
                            labelText: "Enter the Amount",
                            hintText: 'Weeks',
                            labelStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => BusTerms()));
              },
              color: Colors.blue,
              child: Text(
                'OK',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget homeTwo(
  IconData ic4,
  String des4,
) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
    height: 300,
    width: 300,
    alignment: Alignment.center,
    child: Card(
      elevation: 10,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Card(
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 150,
                height: 150,
                padding: EdgeInsets.all(10),
                child: Icon(
                  ic4,
                  size: 100,
                  color: Colors.orange,
                ),
              ),
              Container(
                width: 150,
                height: 15,
                padding: EdgeInsets.all(10),
                child: Text(
                  des4,
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}
