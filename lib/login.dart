import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/account.dart';
import 'package:firstapp/forget.dart';
import 'package:firstapp/home.dart';

class Login extends StatefulWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
         SizedBox(height:30.0),
          Text('Welcome Back',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'josefin',
              fontSize: 30,

            ),
          ),
          SizedBox(height:20.0),


          Text('Login to your account',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'jacques',
              fontSize: 25,

            ),
          ),
          SizedBox(height: 40.0),
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
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                icon: Icon(FontAwesomeIcons.solidEnvelope,size: 18.0,color: Colors.redAccent,),

                  hintText:' Email',
                ),

              ),
            )
            ),
          ),
          SizedBox(height: 20.0),
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
                 
                      //Icon(FontAwesomeIcons.lock,size: 15.0,color: Colors.redAccent,),
                      //SizedBox(width: 7.0,),
                   child:TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      icon: Icon(FontAwesomeIcons.lock,size: 18.0,color: Colors.redAccent,),
                      
                      hintText:' Password',
                    ),

                  ),
              
                )
            ),
          ),

           SizedBox(height: 20.0),
           Padding(
             padding: const EdgeInsets.only(right:45.0),
             child: Align(
              alignment: Alignment.topRight,
                child:GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext ctx) {
                                return Forget();
                              }));
                            },
               child:Text('Forgot Password ?', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'poppin',
                fontSize: 15.0,
                color:Colors.redAccent,
                
                ),),),


             ),
           ),


          SizedBox(height: 80.0,),
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
                     Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ctx){

              return  Home();
            }));
                  //bech yhezzni min page lil splashscreen
                 
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              )),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              Text('Dont have an account ?', style: TextStyle(fontFamily: 'poppin',
              fontSize: 15.0,
              color:Colors.grey,
              
              ),),
                GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext ctx) {
                                return Account();
                              }));
                            },

              child:Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold,fontFamily: 'poppin',
              fontSize: 15.0,
              color:Colors.redAccent,
              decoration: TextDecoration.underline,
              ),),),
            ],
          )

        ],
      ),

    );


  }
}