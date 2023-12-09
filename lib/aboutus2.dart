import 'package:flutter/material.dart';
import 'package:firstapp/aboutus.dart';
import 'package:firstapp/aboutus1.dart';
import 'package:firstapp/home.dart';

class AboutUs2 extends StatefulWidget {
  const AboutUs2({Key? key}) : super(key: key);

  @override
  State<AboutUs2> createState() => _AboutUs2State();
}

class _AboutUs2State extends State<AboutUs2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 190,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Image.asset('assets/images/Vector (2).png',
                width: 390, height: 230),
          ),
          Text(
            'Online Shopping',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'jacques',
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Fastest Delivery',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'jacques',
              fontSize: 40,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Mall of tunisia also guarantees you.',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'josefin',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'the fastest delivery. You can return',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'josefin',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'or exchange the product with respect',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'josefin',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            "to the period of 2 day's.",
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'josefin',
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
              margin: EdgeInsets.only(bottom: 10.0),
              alignment: Alignment.bottomCenter,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext ctx) {
                          return AboutUs();
                        }));
                      },
                      constraints:
                          BoxConstraints.tightFor(height: 10.0, width: 10.0),
                      shape: CircleBorder(),
                      fillColor: Colors.white,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext ctx) {
                          return AboutUs1();
                        }));
                      },
                      constraints:
                          BoxConstraints.tightFor(height: 10.0, width: 10.0),
                      shape: CircleBorder(),
                      fillColor: Colors.white,
                    ),
                    RawMaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext ctx) {
                          return AboutUs2();
                        }));
                      },
                      constraints:
                          BoxConstraints.tightFor(height: 10.0, width: 10.0),
                      shape: CircleBorder(),
                      fillColor: Colors.redAccent,
                    ),
                  ])),
          SizedBox(
            height: 30,
          ),
          SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return Home();
                  }));
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              )),
        ],
      ),
    );
  }
}
