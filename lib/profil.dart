import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Profil extends StatefulWidget {
  const Profil({ Key? key }) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
                  Container(
         width: MediaQuery.of(context).size.width,
          height: 110,
          color: Colors.white,

          child:Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 18.0),
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 25.0),



            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.angleLeft, size: 30, color: Colors.grey),
              
              
              Text('My Profile',style: TextStyle(fontSize: 20,fontFamily: 'poppin' ),),
                
              
              Icon(Icons.close, size: 30, color: Colors.grey),
            ],),

          ),
          ),
          SizedBox(height: 50.0,),
            Container(
                                                      width: 100,
                                                      height: 100,
                                                   // padding: const EdgeInsets.only(left:8.0,top:8.0,bottom:8.0),
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(50),

                                                         image: DecorationImage(
                                                          image: AssetImage("assets/images/profil.jpg"),
                                                               fit:BoxFit.cover,
                                                            ),


                                                        ),
                                                        ),
                                                        SizedBox(height: 10.0,),
                                                        Text('Matilda Brown',style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'poppin',
                                                          fontSize: 18.0
                                                        ),),
                                                         SizedBox(height: 5.0,),
                                                        Text('Matildabrown@gmail.com',style: TextStyle(
                                                          color: Color.fromARGB(255, 190, 190, 190),
                                                          fontFamily: 'poppin',
                                                          fontSize: 15.0
                                                        ),),
                                      SizedBox(height: 50.0,),
                                        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
               width: 350,
              height: 70,

              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
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
              ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                   Row(
                    children:[
                       Icon(FontAwesomeIcons.solidUser,size: 18.0,color: Colors.black,),
                        SizedBox(width:10.0),
                   Text('My orders',style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'poppin',
                                                          fontSize: 15.0
                                                        ),),
                    ]),
                                                        Icon(FontAwesomeIcons.angleRight)

                ],
              )
            )
            ),
          ),
          SizedBox(height: 20.0,),
                                     Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
               width: 350,
              height: 70,

              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
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
              ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children:[
                       Icon(FontAwesomeIcons.locationDot,size: 18.0,color: Colors.black,),
                        SizedBox(width:10.0),
                   Text('Shippings adresses',style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'poppin',
                                                          fontSize: 15.0
                                                        ),),
                    ]),
                                                        Icon(FontAwesomeIcons.angleRight)

                ],
              )
            )
            ),
          ),


           SizedBox(height: 20.0,),
                                     Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
               width: 350,
              height: 70,

              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
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
              ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children:[
               Icon(FontAwesomeIcons.circleDollarToSlot,size: 18.0,color: Colors.black,),
                                     SizedBox(width:10.0),


                   Text('Payment methods',style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'poppin',
                                                          fontSize: 15.0
                                                        ),),


                    ]),
                                                        Icon(FontAwesomeIcons.angleRight)

                ],
              )
            )
            ),
          ),

           SizedBox(height: 20.0,),
                                     Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
               width: 350,
              height: 70,

              decoration: BoxDecoration(
                color: Colors.white,
                //border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(10),
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
              ),
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Row(
                    children:[
                      Icon(FontAwesomeIcons.gear,size: 18.0,color: Colors.black,),
                      SizedBox(width:10.0),
                   Text('Settings',style: TextStyle(
                                                          color: Colors.black,
                                                          fontFamily: 'poppin',
                                                          fontSize: 15.0
                                                        ),),
                    ]),



                                                        Icon(FontAwesomeIcons.angleRight)

                ],
              )
            )
            ),
          ),








          ],
        )
         ),
      
    );
  }
}