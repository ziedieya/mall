import 'package:firstapp/bag.dart';
import 'package:firstapp/bagkiko.dart';
import 'package:firstapp/bagkiko2.dart';
import 'package:firstapp/bagkiko3.dart';
import 'package:firstapp/bagkiko4.dart';
import 'package:firstapp/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/categories.dart';
import 'package:firstapp/homecontainer.dart';
import 'package:firstapp/sale.dart';

class Kiko1 extends StatefulWidget {
  const Kiko1({Key? key}) : super(key: key);

  @override
  State<Kiko1> createState() => _Kiko1State();
}

class _Kiko1State extends State<Kiko1> {
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
              image: AssetImage("assets/images/kiko9.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
       
        SizedBox(
          height: 30,
        ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              width:  MediaQuery.of(context).size.width,
              //margin: EdgeInsets.symmetric(vertical: 20.0),

              height: 350,
          child: Card(
           shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0), // Ajustez la valeur pour obtenir un cercle plus ou moins prononcé
            ),
            elevation: 5, // Ajustez la valeur pour l'ombre souhaitée
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
              child: Image.asset(
                'assets/images/kiko10.jpg', // Remplacez l'URL par l'URL de votre image
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),

        ),),
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
                                          "assets/images/mask1.jpg"),
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
                              "kiko maskara",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                           
                          ),
                          SizedBox(height: 20,),

                          Center (child: 
                           Text(
                              "90DT",
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
                return Bagkiko3();
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
                                          "assets/images/fond1.jpg"),
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
                              "kiko foundation",
                              style: TextStyle(
                                  fontFamily: 'poppin',
                                  fontSize: 15,
                                  color: Colors.black),
                            ),
                           
                          ),
                          SizedBox(height: 20,),

                          Center (child: 
                           Text(
                              "100DT",
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
                return Bagkiko4();
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
                              "40DT",
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

            SizedBox(height: 20,),
             Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),

             child:Container(
          width: MediaQuery.of(context).size.width,
                      child: Card(
                          child: Wrap(
                        children: <Widget>[
               Text("The lights go out, a hush descends, the curtain opens. At the most anticipated time of the year, beauty takes to the stage."
              ,style: TextStyle(color: Colors.black),),
               Text("- A complete range of exquisite products for the festive season: make-up, skincare, body care and beautiful gift sets"
              ,style: TextStyle(color: Colors.black,fontFamily: 'poppin'),),
               Text("- Metallic finishes for giving your skin extraordinary radiance, and trendy shades for enhancing your features"
              ,style: TextStyle(color: Colors.black),),
               Text("- Innovative, high-performance, clinically tested formulas with multiple benefits."
              ,style: TextStyle(color: Colors.black),),
               Text("- Indulgent textures with amazing colour payoff, infused with sweet fragrances like orange, vanilla, almond and honey."
              ,style: TextStyle(color: Colors.black,fontFamily: 'poppin'),),
               Text("- Endless possibilities for mixing and matching to create a première-ready look with stage presence."
              ,style: TextStyle(color: Colors.black),),
               Text("- Two enveloping eau de parfums—one woody, one amber—to accompany an astonishing symphony of must-have beauty."
              ,style: TextStyle(color: Colors.black),),
               Text("- Luxurious white and gold packaging with elegant matelassé motifs, turning each product into the perfect gift for yourself."
              ,style: TextStyle(color: Colors.black,fontFamily: 'poppin'),),
       ]),), ),),







      ],
    )));
  }
}


