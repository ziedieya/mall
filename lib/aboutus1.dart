import 'package:flutter/material.dart';
import 'package:firstapp/aboutus.dart';
import 'package:firstapp/aboutus2.dart';


class AboutUs1 extends StatefulWidget {
  const AboutUs1({ Key? key }) : super(key: key);

  @override
  State<AboutUs1> createState() => _AboutUs1State();
}

class _AboutUs1State extends State<AboutUs1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:70.0),
            child: Image.asset('assets/images/Vector (1).png',width: 390,height:230),
          ),
          Text('Easy Way To',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'jacques',
            fontSize: 25,

          ),
          ),
          SizedBox(height: 10.0,),
           Text('Make Payment',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'jacques',
            fontSize: 40,

          ),
           ),
          SizedBox(height: 10.0,),

               Text('Mall of tunisia guarantees you.',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'josefin',
            fontSize: 16,

          ),
           ),
          SizedBox(height: 5.0,),
           Text('the easiest way to pay while',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'josefin',
            fontSize: 16,

          ),
           ),
            SizedBox(height: 5.0,),

             Text('protecting your personal information.',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'josefin',
            fontSize: 16,

          ),
           ),
          
           
          SizedBox(height: 25.0,),

          Container(
             margin: EdgeInsets.only(bottom: 10.0),
                  alignment: Alignment.bottomCenter,
            child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              RawMaterialButton(
                       onPressed: () {
                         Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

             return  AboutUs();
            }));
                       },
                        constraints:
                        BoxConstraints.tightFor(height: 10.0, 
                         width: 10.0),
                        shape: CircleBorder(),
                        fillColor: Colors.white,
                         ),
RawMaterialButton(
onPressed: () {
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

             return  AboutUs1();
            }));
},
constraints:
BoxConstraints.tightFor(height: 10.0, 
width: 10.0),
shape: CircleBorder(),
fillColor: Colors.redAccent,
),
RawMaterialButton(
onPressed: () {
   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

             return  AboutUs2();
            }));
},
constraints:
BoxConstraints.tightFor(height: 10.0, 
                         width: 10.0),
                     shape: CircleBorder(),
                      fillColor: Colors.white,
                       ),

                ]
                
                )
               ),

               SizedBox(height: 30,),


                SizedBox(
              width:300 ,
              height: 60,
            
            
            child:ElevatedButton(
              style:ElevatedButton.styleFrom(
                primary: Colors.red,
                elevation: 3,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                padding: EdgeInsets.all(20)

              ),
            onPressed: (){
              //bech yhezzni min page lil splashscreen
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

              return  AboutUs2();
            }));
            },

            child: Text('Next',style: TextStyle(fontSize: 18,color: Colors.white),),

             )
            ),









        ],
      ),

      
    );
  }
}