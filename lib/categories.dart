import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         // SizedBox(height: 20,),
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
          SizedBox(height: 35),
          Padding(
            padding: const EdgeInsets.only(left:8.0),
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
                                color: Colors.grey.withOpacity(0.3), //shadow color
                                spreadRadius: 2, // spread radius
                                blurRadius: 2, // shadow blur radius
                                offset: const Offset(0, 3), // changes position of shadow
                              ),],

                            borderRadius: BorderRadius.circular(30),),

                         


                             child: Align(
                              alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('Hommes',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.white),),
                              ),


                         


                      ),
                      SizedBox(width:10),

                      Container(
                          width: 110,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), //shadow color
                                spreadRadius: 2, // spread radius
                                blurRadius: 2, // shadow blur radius
                                offset: const Offset(0, 2), // changes position of shadow
                              ),],

                            borderRadius: BorderRadius.circular(30),),

                        
                               child:Align(
                              alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('Femmes',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.white),),
                              ),



                         

                      ),
                      SizedBox(width:10),



                      Container(
                          width: 110,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), //shadow color
                                spreadRadius: 2, // spread radius
                                blurRadius: 2, // shadow blur radius
                                offset: const Offset(0, 2), // changes position of shadow
                              ),],

                            borderRadius: BorderRadius.circular(30),),

                          
                             child: Align(
                              alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('Enfants',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.white),),
                              ),



                      ),

                      SizedBox(width:10),


                      Container(
                          width: 110,

                          decoration: BoxDecoration(
                            color: Colors.black,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3), //shadow color
                                spreadRadius: 2, // spread radius
                                blurRadius: 2, // shadow blur radius
                                offset: const Offset(0, 2), // changes position of shadow
                              ),],

                            borderRadius: BorderRadius.circular(30),),

                        

                               child: Align(
                              alignment: Alignment.center,
                                //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text('Enfants',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.white),),
                              ),



                      ),
                    ],
                )
            ),
          ),
          SizedBox(height: 15,),
                   
                    //khedma copier coller
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Container(
                          //margin: EdgeInsets.symmetric(vertical: 20.0),

                          //width: MediaQuery.of(context).size.width,
                          height: 500,
                          child: ListView(
                            scrollDirection: Axis.vertical,

                            //padding: EdgeInsets.fromLTRB(20,20,10,0),
                            children: <Widget>[
                              Container(
                                  width:MediaQuery.of(context).size.width ,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),

                                 // height:110 ,
                                  child:Card(
                                      child: Wrap(
                                          children:<Widget> [
                                           
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0),
                                               child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('New',style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'poppin',
                                                    fontSize: 20,
                                                  ),),

                                                  Container(
                                                      width: 171,
                                                      height: 100,
                                                    padding: const EdgeInsets.all(20),
                                                  decoration: BoxDecoration(
                                                    //borderRadius: BorderRadius.circular(20),

                                                         image: DecorationImage(
                                                          image: AssetImage("assets/images/image 4.1.png"),
                                                               fit:BoxFit.cover,
                                                            ),


                                                        ),
                                                        ),
                                                  
                                                ],
                                               ),
                                             ),
                                            
                                          ]
                                      )
                                  )
                              ),
                              SizedBox(height: 8.0,),

                                      Container(
                                  width:MediaQuery.of(context).size.width ,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),

                                 // height:110 ,
                                  child:Card(
                                      child: Wrap(
                                          children:<Widget> [
                                           
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0),
                                               child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Vetements',style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'poppin',
                                                    fontSize: 20,
                                                  ),),

                                                  Container(
                                                      width: 171,
                                                      height: 100,
                                                    padding: const EdgeInsets.all(20),
                                                  decoration: BoxDecoration(
                                                    //borderRadius: BorderRadius.circular(20),

                                                         image: DecorationImage(
                                                          image: AssetImage("assets/images/image (1).png"),
                                                               fit:BoxFit.cover,
                                                            ),


                                                        ),
                                                        ),
                                                  
                                                ],
                                               ),
                                             ),
                                            
                                          ]
                                      )
                                  )
                              ),
                                                            SizedBox(height: 8.0,),


                                      Container(
                                  width:MediaQuery.of(context).size.width ,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),

                                 // height:110 ,
                                  child:Card(
                                      child: Wrap(
                                          children:<Widget> [
                                           
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0),
                                               child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Chaussures',style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'poppin',
                                                    fontSize: 20,
                                                  ),),

                                                  Container(
                                                      width: 171,
                                                      height: 100,
                                                    padding: const EdgeInsets.all(20),
                                                  decoration: BoxDecoration(
                                                    //borderRadius: BorderRadius.circular(20),

                                                         image: DecorationImage(
                                                          image: AssetImage("assets/images/image 2.png"),
                                                               fit:BoxFit.cover,
                                                            ),


                                                        ),
                                                        ),
                                                  
                                                ],
                                               ),
                                             ),
                                            
                                          ]
                                      )
                                  )
                              ),
                                                            SizedBox(height: 8.0,),


                                      Container(
                                  width:MediaQuery.of(context).size.width ,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),),

                                 // height:110 ,
                                  child:Card(
                                      child: Wrap(
                                          children:<Widget> [
                                           
                                             Padding(
                                               padding: const EdgeInsets.only(left:8.0),
                                               child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text('Accessoires',style: TextStyle(
                                                    color: Colors.black,
                                                    fontFamily: 'poppin',
                                                    fontSize: 20,
                                                  ),),

                                                  Container(
                                                      width: 171,
                                                      height: 100,
                                                    padding: const EdgeInsets.all(20),
                                                  decoration: BoxDecoration(
                                                    //borderRadius: BorderRadius.circular(20),

                                                         image: DecorationImage(
                                                          image: AssetImage("assets/images/image 3.png"),
                                                               fit:BoxFit.cover,
                                                            ),


                                                        ),
                                                        ),
                                                  
                                                ],
                                               ),
                                             ),
                                            
                                          ]
                                      )
                                  )
                              ),
                             



                            ],

                          )
                      ),
                    )


                  ]

              )
          );




        


    
    
  }
}
