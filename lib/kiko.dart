import 'package:firstapp/bag.dart';
import 'package:firstapp/bagkiko.dart';
import 'package:firstapp/bagkiko1.dart';
import 'package:firstapp/bagkiko2.dart';
import 'package:firstapp/catalog.dart';
import 'package:firstapp/kiko1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/categories.dart';
import 'package:firstapp/homecontainer.dart';
import 'package:firstapp/sale.dart';

class Kiko extends StatefulWidget {
  const Kiko({Key? key}) : super(key: key);

  @override
  State<Kiko> createState() => _KikoState();
}

class _KikoState extends State<Kiko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
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
        Container(
          width: MediaQuery.of(context).size.width,
          height: 536,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/kiko1.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8.0),
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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
                return Kiko1();
              }));
            },

            child: Container(
              width: 300.0, // Largeur du bouton
              height: 50.0, // Hauteur du bouton
              child: Center(
                child: Text(
                  'Shop now',
                  style: TextStyle(
                      fontSize: 15, color: Colors.white, fontFamily: 'poppin'),
                ),
              ),
            ),

            //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            'NEWS',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontFamily: 'poppin'),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
       

        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              //margin: EdgeInsets.symmetric(vertical: 20.0),

              height: 250,

              child: ListView(
                // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),

                scrollDirection: Axis.horizontal,
       
       
       
       
       
        
         // scrollDirection: Axis.horizontal,
          children: [
            Card(
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
    
        child: Image.asset(
          "assets/images/kiko5.jpg",
          width: 150.0, // Largeur de l'image dans la carte
          height: 150.0, // Hauteur de l'image dans la carte
          fit: BoxFit.cover,
        ),
      
    ),

     Card(
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      
        child: Image.asset(
          "assets/images/kiko7.jpg",
          width: 150.0, // Largeur de l'image dans la carte
          height: 150.0, // Hauteur de l'image dans la carte
          fit: BoxFit.cover,
        ),
      
    ),

     Card(
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
     
        child: Image.asset(
          "assets/images/kiko6.jpg",
          width: 150.0, // Largeur de l'image dans la carte
          height: 150.0, // Hauteur de l'image dans la carte
          fit: BoxFit.cover,
        ),
      
    ),

    
            // Ajoutez d'autres cartes d'images au besoin
          ],
        ),
        ),
        ),


        SizedBox(
          height: 12,
        ),
        Center(
          child: Text(
            'SEASONAL TRENDS',
            style: TextStyle(
                fontSize: 25, color: Colors.black, fontFamily: 'poppin'),
          ),
        ),


          SizedBox(
          height: 12,),






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
                          SizedBox(height: 20,),
                          Center (child: 
                           Text(
                              "glose bruillant",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                           
                          ),
                          SizedBox(height: 20,),

                          Center (child: 
                           Text(
                              "50DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                           
                          ),

                         SizedBox(height: 30,),

                      Center(child: Row(
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
                    ]


                          ),
                         ),
                         SizedBox(height: 30,),

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
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
                      fontSize: 15, color: Colors.white, fontFamily: 'poppin'),
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
                                          "assets/images/mat2.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                               
                              ],
                            ),
                          ),
                          SizedBox(height: 20,),
                          Center (child: 
                           Text(
                              "rouge à lévres",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                           
                          ),
                          SizedBox(height: 20,),

                          Center (child: 
                           Text(
                              "45DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                           
                          ),

                         SizedBox(height: 30,),

                      Center(child: Row(
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
                    ]


                          ),
                         ),
                         SizedBox(height: 30,),

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
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
                      fontSize: 15, color: Colors.white, fontFamily: 'poppin'),
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
                          SizedBox(height: 20,),
                          Center (child: 
                           Text(
                              "glose bruillant",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                           
                          ),
                          SizedBox(height: 20,),

                          Center (child: 
                           Text(
                              "39DT",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 10,
                                  color: Colors.black),
                            ),
                           
                          ),

                         SizedBox(height: 30,),

                      Center(child: Row(
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
                    ]


                          ),
                         ),
                         SizedBox(height: 30,),

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
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext ctx) {
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
                      fontSize: 15, color: Colors.white, fontFamily: 'poppin'),
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


