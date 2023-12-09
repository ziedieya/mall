import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/categories.dart';

class Sale extends StatefulWidget {
  const Sale({Key? key}) : super(key: key);

  @override
  State<Sale> createState() => _SaleState();
}

class _SaleState extends State<Sale> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/imagee.png"),
              fit: BoxFit.cover,
            )),
          ),
          SizedBox(height: 12.0),
          Expanded(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            width: 135,
                            height: 40,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                //bech yhezzni min page lil splashscreen
                                Navigator.of(context).push(
                                    MaterialPageRoute(builder: (BuildContext ctx) {
                                  return Categories();
                                }));
                              },
                              child: Text(
                                'Catégorie',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontFamily: 'poppin'),
                              ),
                            )),
                      ),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'poppin'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'super summer sale',
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'poppin'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          //margin: EdgeInsets.symmetric(vertical: 20.0),
          
                          height: 320,
          
                          child: ListView(
                            // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/sweat.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 8.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(vertical: 8.0),
                                                      child: Container(
                                                          width: 40,
                                                          height: 20,
                                                          decoration: BoxDecoration(
                                                            color: Colors.redAccent,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(30),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                Alignment.center,
                                                            child: Text(
                                                              '-20%',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'poppin',
                                                                  fontSize: 12,
                                                                  color:
                                                                      Colors.white),
                                                            ),
                                                          )),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                        title: Text(
                                          "Evening Dress",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                          //padding: const EdgeInsets.only(left:20.0,right: 10,bottom: 30.0),
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 10, bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('15DT',
                                                  style: TextStyle(
                                                    fontFamily: 'poppin',
                                                    fontSize: 13,
                                                    color: Colors.grey,
                                                    decoration:
                                                        TextDecoration.lineThrough,
                                                  )),
                                              Text('12DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Colors.redAccent)),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )), //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/pull h&m.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Container(
                                                  width: 40,
                                                  height: 20,
                                                  decoration: BoxDecoration(
                                                    color: Colors.redAccent,
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Align(
                                                    alignment: Alignment.center,
                                                    child: Text(
                                                      '-20%',
                                                      style: TextStyle(
                                                          fontFamily: 'poppin',
                                                          fontSize: 12,
                                                          color: Colors.white),
                                                    ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Blouse en satin",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 10, bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('22DT',
                                                  style: TextStyle(
                                                    fontFamily: 'poppin',
                                                    fontSize: 13,
                                                    color: Colors.grey,
                                                    decoration:
                                                        TextDecoration.lineThrough,
                                                  )),
                                              Text('19DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 230, 100, 91))),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )),
                                              //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/chemise oxford oversize.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.redAccent,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    '-20%',
                                                    style: TextStyle(
                                                        fontFamily: 'poppin',
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Blouse en satin",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 10, bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('14DT',
                                                  style: TextStyle(
                                                    fontFamily: 'poppin',
                                                    fontSize: 13,
                                                    color: Colors.grey,
                                                    decoration:
                                                        TextDecoration.lineThrough,
                                                  )),
                                              Text('12DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 230, 100, 91))),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )), //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                            ],
                          ),
                        )),
                    SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.black,
                              fontFamily: 'poppin'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "You've never seen it before",
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                              fontFamily: 'poppin'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          //margin: EdgeInsets.symmetric(vertical: 20.0),
          
                          height: 320,
          
                          child: ListView(
                            // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/blouse en satin.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'New',
                                                    style: TextStyle(
                                                        fontFamily: 'poppin',
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Blouse en satin",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                          //padding: const EdgeInsets.only(left:20.0,right: 10,bottom: 30.0),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('12DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 230, 100, 91))),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )), //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/pull h&m.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'New',
                                                    style: TextStyle(
                                                        fontFamily: 'poppin',
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Blouse en satin",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 10, bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('12DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 230, 100, 91))),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )),
                                              //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                              Container(
                                  width: 170.0,
                                  child: Card(
                                      child: Wrap(
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                        child: Stack(
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 200,
                                              padding: const EdgeInsets.all(20),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/chemise oxford oversize.jpg"),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Container(
                                                width: 40,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                  borderRadius:
                                                      BorderRadius.circular(30),
                                                ),
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    'New',
                                                    style: TextStyle(
                                                        fontFamily: 'poppin',
                                                        fontSize: 12,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      ListTile(
                                        title: Text(
                                          "Blouse en satin",
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 15,
                                              color: Colors.black),
                                        ),
                                        subtitle: Text(
                                          "Dorothy perkins",
                                          style: TextStyle(
                                              fontSize: 9,
                                              fontFamily: 'poppin',
                                              color: Colors.grey),
                                        ),
                                      ),
                                      Padding(
                                          padding: const EdgeInsets.only(
                                              left: 20.0, right: 10, bottom: 20.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                              Text('12DT',
                                                  style: TextStyle(
                                                      fontFamily: 'poppin',
                                                      fontSize: 13,
                                                      color: Color.fromARGB(
                                                          255, 230, 100, 91))),
                                              Container(
                                                  width: 24,
                                                  height: 24,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(
                                                                0.3), //shadow color
                                                        spreadRadius:
                                                            5, // spread radius
                                                        blurRadius:
                                                            7, // shadow blur radius
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(30),
                                                  ),
                                                  child: Icon(
                                                    FontAwesomeIcons.heart,
                                                    color: Color.fromARGB(
                                                        255, 230, 100, 91),
                                                    size: 15,
                                                  )), //Image.asset('assets/images/add.png',width:30,height: 30,)
                                            ],
                                          ))
                                    ],
                                  ))),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
