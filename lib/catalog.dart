import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/categories.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            //SizedBox(height: 20,),
            Container(
          margin: EdgeInsets.only(top: 40),
          width: double.infinity,
          height: 60, // La hauteur de votre barre rectangulaire
          color: Colors.white, // Couleur de la barre rectangulaire
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //GestureDetector(
                //onTap: _showModalBottomSheetFilter,
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.list_bullet,
                      color: Colors.black,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.black,
                      size: 18.0,
                    )
                  ],
                ),

                Container(
            // Définir la taille de l'image ici
            width: 100.0,
            height: 50.0,
            child: Image(
              image: AssetImage("assets/images/h&m.png"),  // Remplacez 'your_image.png' par le chemin réel de votre image.
              fit: BoxFit.cover,  // Ajustez la valeur selon vos besoins (cover, contain, etc.).
            ),
          ),
                //Image.asset("assets/images/h&m.png"),

                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person_solid,
                      color: Colors.black,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      CupertinoIcons.bag,
                      color: Colors.black,
                      size: 18.0,
                    )
                  ],
                ),

                //GestureDetector(
                //onTap: _showModalBottomSheetFilter,

                // ),
              ],
            ),
          ),
        ),

            //SizedBox(height: 15.0),
            Container(
              //color: Colors.white,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                //boxShadow: [
                //BoxShadow(
                //color: Colors.grey.withOpacity(0.3), //shadow color
                //spreadRadius: 7, // spread radius
                //blurRadius: 5, // shadow blur radius
                //offset: const Offset(0, 3), // changes position of shadow
                //),],
              ),

              child: Column(
                children: [
                  SizedBox(
                    height: 20.0,
                  ),

                  //Container(
                  //color: Colors.white,
                  //height: 70,

                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Container(
                        height: 35,
                        child: ListView(
                          //padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.3), //shadow color
                                    spreadRadius: 2, // spread radius
                                    blurRadius: 2, // shadow blur radius
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Hommes',
                                  style: TextStyle(
                                      fontFamily: 'poppin',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.3), //shadow color
                                    spreadRadius: 2, // spread radius
                                    blurRadius: 2, // shadow blur radius
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Femmes',
                                  style: TextStyle(
                                      fontFamily: 'poppin',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.3), //shadow color
                                    spreadRadius: 2, // spread radius
                                    blurRadius: 2, // shadow blur radius
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Enfants',
                                  style: TextStyle(
                                      fontFamily: 'poppin',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey
                                        .withOpacity(0.3), //shadow color
                                    spreadRadius: 2, // spread radius
                                    blurRadius: 2, // shadow blur radius
                                    offset: const Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  'Enfants',
                                  style: TextStyle(
                                      fontFamily: 'poppin',
                                      fontSize: 16,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),

                  // ),
                  SizedBox(
                    height: 30,
                  ),

                  //Container(
                  //color: Colors.white,
                  //width: MediaQuery.of(context).size.width,
                  //height:200,

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 400,
                      height: 35,
                      color: Color.fromARGB(255, 230, 228, 228),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                             GestureDetector(
                              onTap: _showModalBottomSheetFilter,
                            child:Row(
                              children: [
                                Icon(Icons.filter_list),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'Filters',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12),
                                )
                              ],
                            ),


                             ),
                            GestureDetector(
                              onTap: _showModalBottomSheetFilter,
                              child: Row(
                                children: [
                                  //Image.asset('assets/images/icon.png'),
                                  Icon(
                                    CupertinoIcons.arrow_up_arrow_down,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Text('Price: lowest ti high',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 12)),
                                ],
                              ),
                            ),
                            Icon(FontAwesomeIcons.list)
                          ],
                        ),
                      ),
                    ),
                  ),

                  //
                  // SizedBox(height:30),
                ],
              ),
            ),
            //SizedBox(height:5.0),

            //Padding(
            //padding: const EdgeInsets.symmetric(horizontal:8.0),
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5.0),
                height: 800,
                child: ListView(
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 196,
                            height: 380.0,
                            child: Card(
                                child: Wrap(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        width: 180,
                                        height: 250,
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
                                          width: 50,
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
                                      )
                                    ])),
                                //SizedBox(height: 10.0,),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Container(
                                    width: 110,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 8.0),
                                        Icon(
                                          FontAwesomeIcons.cartShopping,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          'add to cart',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Blouse en satin",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Dorothy perkins",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontFamily: 'poppin',
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),

                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
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
                                            width: 27,
                                            height: 27,
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 196,
                            height: 380.0,
                            child: Card(
                                child: Wrap(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        width: 180,
                                        height: 250,
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
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Container(
                                          width: 50,
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
                                      )
                                    ])),
                                //SizedBox(height: 10.0,),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Container(
                                    width: 110,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 8.0),
                                        Icon(
                                          FontAwesomeIcons.cartShopping,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          'add to cart',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Blouse en satin",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Dorothy perkins",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontFamily: 'poppin',
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),

                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('14DT',
                                            style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 13,
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            )),

                                        //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                        Text('12DT',
                                            style: TextStyle(
                                                fontFamily: 'poppin',
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 230, 100, 91))),
                                        Container(
                                            width: 27,
                                            height: 27,
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            
                            ),
                            width: 196,
                            height: 380.0,
                            child: Card(
                                child: Wrap(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        width: 180,
                                        height: 250,
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/veste en laine mélangée h&m.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Container(
                                          width: 50,
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
                                      )
                                    ])),
                                //SizedBox(height: 10.0,),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Container(
                                    width: 110,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 8.0),
                                        Icon(
                                          FontAwesomeIcons.cartShopping,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          'add to cart',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Blouse en satin",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Dorothy perkins",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontFamily: 'poppin',
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),

                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
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
                                            width: 27,
                                            height: 27,
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 196,
                            height: 380.0,
                            child: Card(
                                child: Wrap(
                              children: <Widget>[
                                Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                    child: Stack(children: <Widget>[
                                      Container(
                                        width: 180,
                                        height: 250,
                                        padding: const EdgeInsets.all(20),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/robe chemise oversize h&m.jpg"),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Container(
                                          width: 50,
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
                                      )
                                    ])),
                                //SizedBox(height: 10.0,),

                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 8.0, top: 8.0),
                                  child: Container(
                                    width: 110,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(width: 8.0),
                                        Icon(
                                          FontAwesomeIcons.cartShopping,
                                          color: Colors.white,
                                          size: 18.0,
                                        ),
                                        SizedBox(width: 7),
                                        Text(
                                          'add to cart',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 12,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Blouse en satin",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Dorothy perkins",
                                    style: TextStyle(
                                        fontSize: 9,
                                        fontFamily: 'poppin',
                                        color: Colors.grey),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),

                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('14DT',
                                            style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 13,
                                              color: Colors.grey,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                            )),

                                        //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                        Text('12DT',
                                            style: TextStyle(
                                                fontFamily: 'poppin',
                                                fontSize: 13,
                                                color: Color.fromARGB(
                                                    255, 230, 100, 91))),
                                        Container(
                                            width: 27,
                                            height: 27,
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
                  ],
                ),
              ),
            ),
            // ),
          ],
        ),
      ),
    );
  }

  Future _showModalBottomSheetFilter() {
    return showModalBottomSheet(
        backgroundColor: Colors.white,
        isDismissible: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0)),
        ),
        context: context,
        builder: (BuildContext ctx) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20.0,),

              Text('Sort by',
                  style: TextStyle(
                      fontFamily: 'poppin',
                      fontSize: 20,
                      color: Colors.black)),
                SizedBox(height: 30.0,),


  SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states){
                if (states.contains(MaterialState.pressed)) {
                return Colors.redAccent;
              }  
                  return Colors.white;
                    }

                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                     (Set<MaterialState> states) {
               if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return Colors.black;
            
            }
                  )

                ),
                //style: ElevatedButton.styleFrom(
                    //primary: Colors.white,
                   // elevation: 3,
                  
                    //padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                   Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return Categories();
                  }));
                },
                
                child:Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 15.0,bottom: 15.0),
                  child: Align(alignment: Alignment.topLeft,
                  
                   child:Text(
                    'Popular',
                    style: TextStyle(fontSize: 18,fontFamily: 'poppin'),
                  ),),
                )
              )
              ),




                      //SizedBox(height: 20.0,),


  SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states){
                if (states.contains(MaterialState.pressed)) {
                return Colors.redAccent;
              }  
                  return Colors.white;
                    }

                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                     (Set<MaterialState> states) {
               if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return Colors.black;
            
            }
                  )

                ),
                //style: ElevatedButton.styleFrom(
                    //primary: Colors.white,
                   // elevation: 3,
                  
                    //padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                   Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return Categories();
                  }));
                },
                
                child:Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 15.0,bottom: 15.0),
                  child: Align(alignment: Alignment.topLeft,
                  
                   child:Text(
                    'Newest',
                    style: TextStyle(fontSize: 18,fontFamily: 'poppin'),
                  ),),
                )
              )
              ),




                     // SizedBox(height: 20.0,),


                   
  SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states){
                if (states.contains(MaterialState.pressed)) {
                return Colors.redAccent;
              }  
                  return Colors.white;
                    }

                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                     (Set<MaterialState> states) {
               if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return Colors.black;
            
            }
                  )

                ),
                //style: ElevatedButton.styleFrom(
                    //primary: Colors.white,
                   // elevation: 3,
                  
                    //padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                   Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return Categories();
                  }));
                },
                
                child:Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 15.0,bottom: 15.0),
                  child: Align(alignment: Alignment.topLeft,
                  
                   child:Text(
                    'Price: lowest to high',
                    style: TextStyle(fontSize: 18,fontFamily: 'poppin'),
                  ),),
                )
              )
              ),





                   //SizedBox(height: 20.0,),



                       
  SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states){
                if (states.contains(MaterialState.pressed)) {
                return Colors.redAccent;
              }  
                  return Colors.white;
                    }

                  ),
                  foregroundColor: MaterialStateProperty.resolveWith<Color>(
                     (Set<MaterialState> states) {
               if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return Colors.black;
            
            }
                  )

                ),
                //style: ElevatedButton.styleFrom(
                    //primary: Colors.white,
                   // elevation: 3,
                  
                    //padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                   Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext ctx) {
                    return Categories();
                  }));
                },
                
                child:Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 15.0,bottom: 15.0),
                  child: Align(alignment: Alignment.topLeft,
                  
                   child:Text(
                    'Price: lowest to low',
                    style: TextStyle(fontSize: 18,fontFamily: 'poppin'),
                  ),),
                )
              )
              ),

                    //SizedBox(height: 30.0,),



            ],
          );
        });
  }
}
