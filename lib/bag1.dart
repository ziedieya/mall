import 'package:firstapp/bag.dart';
import 'package:firstapp/bag2.dart';
import 'package:firstapp/bagkiko.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/data/bag_data.dart';

class Bag1 extends StatefulWidget {
  const Bag1({ Key? key }) : super(key: key);

  @override
  State<Bag1> createState() => _Bag1State();
}

class _Bag1State extends State<Bag1> {


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
      body:SingleChildScrollView(
       //child: Container(
        //height: MediaQuery.of(context).size.height,
       //color: Colors.grey,

        child: Column(
          children: [
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
                            image: AssetImage("assets/images/blouse en satin.jpg"),
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
                                "blouse en satin",
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
                                "Color:beige",
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
                       
          
                    

                      
          
        SizedBox(height: 20.0,),

         Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 8.0),
                         child: Align(
                    alignment:Alignment.topLeft,
                    child:Text('New',style: TextStyle(fontSize: 25,color: Colors.black,fontFamily: 'poppin'),),
                         ),
                       ),

                    SizedBox(height: 8.0,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Align(
                    alignment:Alignment.topLeft,
                    child: Text("You've never seen it before",style: TextStyle(fontSize: 12,color: Colors.grey,fontFamily: 'poppin'),),
                    ),
                      ),
                      SizedBox(height: 8.0,),








                                
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:8.0),
              child: Container(
           //margin: EdgeInsets.symmetric(vertical: 20.0),

              height: 400,
             
                child: ListView(
               // padding: EdgeInsets.fromLTRB(20, 0, 0, 0),


                  scrollDirection: Axis.horizontal,
                  children: <Widget> [
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
                                SizedBox(height: 20.0,),


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
                                  return Bag1();
                                }));
                              },

                              child: Container(
                                width: 90.0, // Largeur du bouton
                                height: 20.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),

                                


                                SizedBox(
                                  height: 20.0,
                                ),

                                Center(
                                  //padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Blouse en satin",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Center(
                                 // padding: const EdgeInsets.only(left: 8.0),
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
                                                "assets/images/surchemise en twill.jpg"),
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
                                SizedBox(height: 20.0,),


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
                                  return Bag2();
                                }));
                              },

                              child: Container(
                                width: 90.0, // Largeur du bouton
                                height: 20.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),

                                


                                SizedBox(
                                  height: 20.0,
                                ),

                                Center(
                                  //padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "surchemise en twill",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Center(
                                 // padding: const EdgeInsets.only(left: 8.0),
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
                                SizedBox(height: 20.0,),


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
                                  return Bag();
                                }));
                              },

                              child: Container(
                                width: 90.0, // Largeur du bouton
                                height: 20.0, // Hauteur du bouton
                                child: Center(
                                  child: Text(
                                    'add to cart',
                                    style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                        fontFamily: 'poppin'),
                                  ),
                                ),
                              ),

                              //child: Text('Catégorie ',style: TextStyle(fontSize: 15,color: Colors.white,fontFamily: 'poppin'),),
                            ),
                          ),

                                


                                SizedBox(
                                  height: 20.0,
                                ),

                                Center(
                                  //padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(
                                    "Sweat H&M",
                                    style: TextStyle(
                                        fontFamily: 'poppin',
                                        fontSize: 15,
                                        color: Colors.black),
                                  ),
                                ),

                                Center(
                                 // padding: const EdgeInsets.only(left: 8.0),
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
                    
             
                  ],
                ),
              )
          
            ),



                  
                  


                       
                    
          ],
        

      )
      
      )
      
    );
  }
}
