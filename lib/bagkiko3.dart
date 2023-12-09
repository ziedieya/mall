import 'package:firstapp/bagkiko.dart';
import 'package:firstapp/bagkiko1.dart';
import 'package:firstapp/bagkiko2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/data/bag_data.dart';

class Bagkiko3 extends StatefulWidget {
  const Bagkiko3({Key? key}) : super(key: key);

  @override
  State<Bagkiko3> createState() => _Bagkiko3State();
}

class _Bagkiko3State extends State<Bagkiko3> {

  int counter = 0;
  double articlePrice = 90.0; // Prix initial de l'article
  double totalPrice = 0;

  void incrementCounter() {
    setState(() {
      counter++;
      articlePrice = 90.0 * counter;
      calculateTotalPrice();
    });
  }

  void decrementCounter() {
    if (counter > 0) {
      setState(() {
        counter--;
        articlePrice = 90.0* counter;
        calculateTotalPrice();
      });
    }
  }

   void calculateTotalPrice() {
    setState(() {
      totalPrice = articlePrice;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            //child: Container(
            //height: MediaQuery.of(context).size.height,
            //color: Colors.grey,

            child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 40),
          width: double.infinity,
          height: 60, // La hauteur de votre barre rectangulaire
          color: Colors.black, // Couleur de la barre rectangulaire
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
                      color: Colors.white,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.white,
                      size: 18.0,
                    )
                  ],
                ),
                Image.asset("assets/images/kiko3.png"),

                Row(
                  children: [
                    Icon(
                      CupertinoIcons.person_solid,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      CupertinoIcons.bag,
                      color: Colors.white,
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

        SizedBox(
          height: 30,
        ),
        Center(
          child: Text(
            'Cart',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontFamily: 'poppin'),
          ),
        ),

        SizedBox(
          height: 15,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 243, 224, 140),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Center(
                child: Text(
                  'Suite à un grand nombre de commandes sur notre site,nous sommes navrés de vous informer quevotre commande pourrait subir un retard de livraison de 5 à 6 jours ouvrés.',
                  style: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 216, 243, 207),
                borderRadius: BorderRadius.circular(3.0),
              ),
              child: Center(
                child: Text(
                  'Tous les emballages utilisés pour les livraisons sont en papier 100 % recyclé et recyclable',
                  style: TextStyle(fontSize: 14.0, color: Colors.green),
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 30,
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),

          //padding: EdgeInsets.fromLTRB(20,20,10,0),

          child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              height: 160,
              child: Card(
                  child: Wrap(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 100,
                        height: 136,
                        padding: const EdgeInsets.only(
                            left: 8.0, top: 8.0, bottom: 8.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage("assets/images/mask1.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        // color: Colors.grey,
                        width: 260,

                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "kiko maskara",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'poppin',
                                  fontSize: 20,
                                ),
                              ),
                            ),

                            //SizedBox(height: 10.0,),

                            Row(children: [
                              Text(
                                "Color:rose",
                                //"Color: " +""+ BagData[index]["color"],
                                style: TextStyle(
                                    fontSize: 9,
                                    fontFamily: 'poppin',
                                    color: Colors.redAccent),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                            ]),

                            SizedBox(
                              height: 30.0,
                            ),

                            Padding(
                              padding: const EdgeInsets.only(bottom: 20.0),
                              child: Row(
                                children: [
                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    onPressed: decrementCounter, 
                                    child: Container(
                                      width: 20.0, // Largeur du bouton
                                      height: 20.0, // Ha

                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '-',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  //padding: const EdgeInsets.only(bottom:100.0),
                                  Text(
                                     '$counter',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'poppin',
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),

                                  ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    onPressed: incrementCounter,
                                    child: Container(
                                      width: 20.0, // Largeur du bouton
                                      height: 20.0, // Ha

                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          '+',
                                          style: TextStyle(
                                              fontFamily: 'poppin',
                                              fontSize: 20,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Text(
                                    "$totalPrice",
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontFamily: 'poppin',
                                        color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ]))),
        ),

        //SizedBox(height: 40.0,),
        //Padding(
        //padding: const EdgeInsets.symmetric(horizontal:8.0),
        //padding: const EdgeInsets.only(left:8.0),

        // ),

        SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            'Complete your look',
            style: TextStyle(
                fontSize: 20, color: Colors.black, fontFamily: 'poppin'),
          ),
        ),

        SizedBox(
          height: 12,
        ),

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              //margin: EdgeInsets.symmetric(vertical: 20.0),

              height: 360,

              child: ListView(
                // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),

                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                      width: 250.0,
                      child: Card(
                          child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 240,
                                  height: 200,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/glose1.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "glose bruillant",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "50DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.star,
                                    color: CupertinoColors.black,
                                    //color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                //bech yhezzni min page lil splashscreen
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext ctx) {
                                  return Bagkiko();
                                }));
                              },

                              child: Container(
                                width: 100.0, // Largeur du bouton
                                height: 30.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),
                        ],
                      ))),
                  Container(
                      width: 250.0,
                      child: Card(
                          child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 240,
                                  height: 200,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage("assets/images/mat2.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "rouge à lévres",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "45DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.star,
                                    color: CupertinoColors.black,
                                    //color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                //bech yhezzni min page lil splashscreen
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext ctx) {
                                  return Bagkiko1();
                                }));
                              },

                              child: Container(
                                width: 100.0, // Largeur du bouton
                                height: 30.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),
                        ],
                      ))),
                  Container(
                      width: 250.0,
                      child: Card(
                          child: Wrap(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                            child: Stack(
                              children: <Widget>[
                                Container(
                                  width: 240,
                                  height: 200,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/glose3.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "glose bruillant",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Center(
                            child: Text(
                              "39DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.star,
                                    color: CupertinoColors.black,
                                    //color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                  Icon(
                                    CupertinoIcons.star,
                                    color: Colors.black,
                                    size: 18.0,
                                  ),
                                ]),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Center(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.black,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                              ),
                              onPressed: () {
                                //bech yhezzni min page lil splashscreen
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (BuildContext ctx) {
                                  return Bagkiko2();
                                }));
                              },

                              child: Container(
                                width: 100.0, // Largeur du bouton
                                height: 30.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),
                        ],
                      ))),
                ],
              ),
            )),
      ],
    )));
  }
}
