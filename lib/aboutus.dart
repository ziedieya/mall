import 'package:firstapp/home.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/aboutus1.dart';
import 'package:firstapp/aboutus2.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                  width: 65,
                  height: 65,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        padding: EdgeInsets.all(20)),
                    onPressed: () {
                      //bech yhezzni min page lil splashscreen
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

                       return  Home();
                      }));
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 70.0),
            child: Image.asset('assets/images/Vector.png',
                width: 390, height: 230),
          ),
          Text(
            'Welcome To The',
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
            'Mall Of Tunisia',
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
            'Mall of tunisia is an online store.',
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
            'It has 10K+ products. You can',
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
            'buy easly buy anything you',
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
            'want.',
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
                      fillColor: Colors.redAccent,
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
                      fillColor: Colors.white,
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
                    return AboutUs1();
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
