import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/login.dart';


class Forget extends StatefulWidget {
  const Forget({ Key? key }) : super(key: key);

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40.0),
        
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              child: Row(
                children: [
                  Icon(FontAwesomeIcons.angleLeft, size: 30, color: Colors.grey),
                ],
              ),
            ),
          ),
            SizedBox(height: 20.0),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:70.0),
            child: Image.asset('assets/images/logo.png',width: 390,height:150),
          ),
          SizedBox(height:50.0),
         Text('Forget Password',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'jacques',
              fontSize: 25,

            ),
          ),
        SizedBox(height: 40.0),
         
           
              
              Text('Please enter your email adress, you will recieve',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'jacques',
                fontSize: 15,

              ),
            ),
             SizedBox(height: 5.0,),
                Text('a link to create a new password via email',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'jacques',
                fontSize: 15,

              ),
            ),



          
          SizedBox(height: 40),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
                 width: 320,
              height: 50,

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
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(FontAwesomeIcons.solidEnvelope,size: 18.0,color: Colors.redAccent,),


                      labelText:"Email",
                    ),

                  ),
                )

            ),
          ),
          SizedBox(height: 60),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child:SizedBox(
              width: 320,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  //bech yhezzni min page lil splashscreen
                   Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

              return  Login();
            }));
                 
                },
                child: Text(
                  'SEND',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )),
          ),


        ],
      ),
    );
  }
}