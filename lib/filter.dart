import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';



class Filter extends StatefulWidget {
  const Filter({ Key? key }) : super(key: key);

  @override
  State<Filter> createState() => _FilterState();
}

class _FilterState extends State<Filter> {
 

  @override
  Widget build(BuildContext context) {
   //double value1 = 20.0;  
   double start = 20.0;
   double end = 70.0;


 return Scaffold(
      body:SingleChildScrollView(
      child:Column(
        children: [
           Container(
         width: MediaQuery.of(context).size.width,
          height: 110,
          color: Colors.white,

          child:Padding(
            //padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 18.0),
               padding: const EdgeInsets.only(left: 8.0,right: 8.0,top: 10.0),



            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(FontAwesomeIcons.angleLeft, size: 30, color: Colors.grey),
              Row(
                children: [
                  Image.asset("assets/images/hm.png", width: 30, height: 30),
                  SizedBox(width: 5,),
                  Text('Filters',style: TextStyle(fontSize: 20,fontFamily: 'poppin' ),)
                ],
              ),
              Icon(Icons.close, size: 30, color: Colors.grey),
            ],),

          ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text('Price range',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppin',
                fontSize: 15.0,
              ),
              
              ),
            ),
          ),

          SizedBox(height: 20,),
          Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.white,
        
            child: RangeSlider(
               min: 0.0,
               max: 100.0,
               activeColor: Colors.redAccent,
               inactiveColor: Colors.grey,
               divisions: 15,
               labels: RangeLabels(
               "${ start.round().toString()}\DT",
                "${ end.round().toString()}\DT",
               ),
              
              values: RangeValues(start, end),
              onChanged: (values){
                setState(() {
                  start = values.start;
                  end = values.end;
                });
              },


            ),
          ),
         
     

         
       SizedBox(height: 20,),
        Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text('Colors',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppin',
                fontSize: 15.0,
              ),
              
              ),
            ),
          ),
       SizedBox(height: 20,),



       Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:20.0),
                child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Colors.black,
                               borderRadius: BorderRadius.circular(30),
                              )

                ),
              ),
              SizedBox(width: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Color.fromARGB(255, 211, 209, 209),
                               borderRadius: BorderRadius.circular(30),
                              )

              ),
                ),

                SizedBox(width: 20.0,),
                
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Colors.redAccent,
                               borderRadius: BorderRadius.circular(30),
                              )

              ),
                ),

                SizedBox(width: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Color.fromARGB(255, 243, 230, 156),
                               borderRadius: BorderRadius.circular(30),
                              )

              ),
                ),

                   SizedBox(width: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Color.fromARGB(255, 2, 20, 36),
                               borderRadius: BorderRadius.circular(30),
                              )

              ),
                ),

               SizedBox(width: 20.0,),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:20.0),
                  child: Container(
                  width: 40,
                  height: 20,
                   decoration: BoxDecoration(
                               color: Colors.green,
                               borderRadius: BorderRadius.circular(30),
                              )

              ),
                ),




            ],
          ),
          
         

       ),
        SizedBox(height: 20,),
         Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text('Sizes',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppin',
                fontSize: 15.0,
              ),
              
              ),
            ),
          ),
            SizedBox(height: 20,),


           Container(
          width: MediaQuery.of(context).size.width,
          height: 80,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               //SizedBox(width: 20.0,),
                 Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Container(
                    width: 60,
                    height: 60,
                     decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.black,width: 1),
                                ),
                                  child: Align(
                                alignment: Alignment.center,
                                  //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('XS',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                ),


                ),
                  ),


                   //SizedBox(width: 20.0,),
                 Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Container(
                    width: 60,
                    height: 60,
                     decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.black,width: 1),
                                ),
                                  child: Align(
                                alignment: Alignment.center,
                                  //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('S',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                ),


                ),
                  ),

                   //SizedBox(width: 20.0,),
                 Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Container(
                    width: 60,
                    height: 60,
                     decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.black,width: 1),
                                ),
                                  child: Align(
                                alignment: Alignment.center,
                                  //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('M',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                ),


                ),
                  ),

                   //SizedBox(width: 20.0,),
                 Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Container(
                    width: 60,
                    height: 60,
                     decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.black,width: 1),
                                ),
                                  child: Align(
                                alignment: Alignment.center,
                                  //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('L',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                ),


                ),
                  ),
                  // SizedBox(width: 20.0,),
                 Padding(
                    padding: const EdgeInsets.symmetric(vertical:20.0),
                    child: Container(
                    width: 60,
                    height: 60,
                     decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.circular(10),
                                 border: Border.all(color: Colors.black,width: 1),
                                ),
                                  child: Align(
                                alignment: Alignment.center,
                                  //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Text('XL',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                ),


                ),
                  ),







              ],

            ),
          ),
          ),
            SizedBox(height: 20,),
         Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text('Category',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppin',
                fontSize: 15.0,
              ),
              
              ),
            ),
          ),
           SizedBox(height: 20,),


            Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          color: Colors.white,
          child:Column(
            children:[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[

            //Padding(
                      //padding: const EdgeInsets.symmetric(vertical:20.0),
                       Container(
                      width: 110,
                      height: 60,
                       decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Colors.black,width: 1),
                                  ),
                                    child: Align(
                                  alignment: Alignment.center,
                                    //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Hommes',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                  ),


                  ),
                    
                     Padding(
                      padding: const EdgeInsets.symmetric(vertical:20.0),
                      child: Container(
                      width: 110,
                      height: 60,
                       decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Colors.black,width: 1),
                                  ),
                                    child: Align(
                                  alignment: Alignment.center,
                                    //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Femmes',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                  ),


                  ),
                    ),

                     Padding(
                      padding: const EdgeInsets.symmetric(vertical:20.0),
                      child: Container(
                      width: 110,
                      height: 60,
                       decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Colors.black,width: 1),
                                  ),
                                    child: Align(
                                  alignment: Alignment.center,
                                    //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Enfants',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                  ),


                  ),
                    ),
              ]
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Padding(
                      padding: const EdgeInsets.symmetric(vertical:20.0),
                      child: Container(
                      width: 110,
                      height: 60,
                       decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(10),
                                   border: Border.all(color: Colors.black,width: 1),
                                  ),
                                    child: Align(
                                  alignment: Alignment.center,
                                    //padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text('Bébé',style: TextStyle(fontFamily: 'poppin',fontSize: 16,color: Colors.black),),
                                  ),


                  ),
                    ),
                    



              ],
              
            ),
          )
            ]
          ),

          
          ),

          SizedBox(height: 20.0,),
           Padding(
            padding: const EdgeInsets.only(left:20.0),
            child: Align(
              alignment:Alignment.topLeft,
              child: Text('Family',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'poppin',
                fontSize: 15.0,
              ),
              
              ),
            ),
          ),
                    SizedBox(height: 20.0,),

          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal:20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('T-shirts, crop top, blouses, bag...',
                   style: TextStyle(
                  color: Color.fromARGB(255, 214, 214, 214),
                  fontFamily: 'poppin',
                  fontSize: 15.0,
                ),
                
                  
                  ),
                  Icon(FontAwesomeIcons.angleRight,size: 20.0,color: Colors.black,)

                ],
              ),
            ),
          )

          





        ],
      )
      ),

      
    );
  }
}