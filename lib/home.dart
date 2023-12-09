import 'package:firstapp/homecontainer2.dart';
import 'package:firstapp/kiko.dart';
import 'package:firstapp/zara.dart';
import 'package:flutter/material.dart';
import 'package:firstapp/accueil.dart';
import 'package:firstapp/data/logos_data.dart';
import 'package:firstapp/homecontainer.dart';
import 'package:firstapp/splashscreen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/logo.png',
            width: 200,
            height: 100,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3),
                    itemCount: logosData.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return Column(
                        children: [
                          Image.asset(logosData[index]["path"]),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              switch (logosData[index]["name"]) {
                                case "H&M":
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext ctx) {
                                    return HomeContainer();
                                  }));
                                  break;
                                case "ZARA":
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext ctx) {
                                    return Zara();
                                  }));
                                  break;
                                  case "KIKO":
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (BuildContext ctx) {
                                    return HomeContainer2();
                                  }));
                                  break;
                              }
                            },
                            child: Text(
                              logosData[index]["name"],
                              style: TextStyle(
                                  color: Color.fromARGB(255, 230, 100, 91),
                                  fontSize: 16,
                                  fontFamily: 'poppin'),
                            ),
                          ),
                        ],
                      );
                    })),
          ),
        ],
      ),
    );
  }
}
