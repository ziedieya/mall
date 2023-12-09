import 'package:firstapp/data/favorites_data_kiko.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/data/favorites_data.dart';

class Favoritekiko extends StatefulWidget {
  const Favoritekiko({ Key? key }) : super(key: key);

  @override
  State<Favoritekiko> createState() => _FavoritekikoState();
}

class _FavoritekikoState extends State<Favoritekiko> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
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
           
              Expanded(
             
                
                   child: Container(
                  //padding: EdgeInsets.symmetric(vertical: 5.0),
                  //height: 700,
              
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:8.0),
                    child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisSpacing: 10,childAspectRatio: 0.52),
                            scrollDirection: Axis.vertical,
                      itemCount: FavoritesDataKiko.length,
                      
                      itemBuilder: (BuildContext ctx,index){
                        return 
                        Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                //color: Colors.black
                              ),
                              width: 196,
                              height: 380.0,
                               child:Card(
                                //semanticContainer: true,
                                //elevation: 40,
                              
                                
                                  child: Wrap(
                                children: <Widget>[
                                  Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 8, 8, 0),
                                      child: Stack(children: <Widget>[
                                        Container(
                                          width: 180,
                                          height: 220,
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                  FavoritesDataKiko[index]["path"]),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0,vertical: 10.0),
                                              child:Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children:[
                                                
                                           Container(
                                            width: 50,
                                            decoration: BoxDecoration(
                                              color: FavoritesDataKiko[index]["couleur"],
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: Text(
                                                FavoritesDataKiko[index]["category"],
                                                style: TextStyle(
                                                    fontFamily: 'poppin',
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                                  
                                          Icon(Icons.close,color: Colors.grey,size: 25.0,)
                                                ]
                                        )
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
                                      FavoritesDataKiko[index]["name"],
                                      style: TextStyle(
                                          fontFamily: 'poppin',
                                          fontSize: 15,
                                          color: Colors.black),
                                    ),
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child:Row(
                                      children: [
                                    Text(
                                     "Color: " +""+ FavoritesDataKiko[index]["color"],
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'poppin',
                                          color: Colors.redAccent),
                                    ),
                                    SizedBox(width: 8.0,),
                                     Text(
                                      "size: "+ ""+FavoritesDataKiko[index]["size"],
                                      style: TextStyle(
                                          fontSize: 9,
                                          fontFamily: 'poppin',
                                          color: Colors.black),
                                    ),

                                    ]
                                    )
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
                                          Text(FavoritesDataKiko[index]["ancienprix"],
                                              style: TextStyle(
                                                fontFamily: 'poppin',
                                                fontSize: 13,
                                                color: Colors.grey,
                                                decoration:
                                                    TextDecoration.lineThrough,
                                              )),

                                          //IconButton(onPressed: (){},icon: const Icon(Icons.add_a_photo_rounded))
                                          Text(FavoritesDataKiko[index]["nouvprix"],
                                              style: TextStyle(
                                                  fontFamily: 'poppin',
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      255, 230, 100, 91))),
                                          Container(
                                              width: 27,
                                              height: 27,
                                              decoration: BoxDecoration(
                                                color: Colors.redAccent,
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
                                                FontAwesomeIcons.bagShopping,
                                                color: Colors.white,
                                                size: 15,
                                              )), //Image.asset('assets/images/add.png',width:30,height: 30,)
                                        ],
                                      ))
                                ],
                              )
                              )
                              );


                      }),
                  )


                  //padding: EdgeInsets.symmetric(horizontal: 8.0),
                  //scrollDirection: Axis.vertical,
                


                  ),
      ),
    

            
            
            
            



          ],
        ),
        ),

      
      
    );
  }
}
