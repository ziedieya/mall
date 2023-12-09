import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:firstapp/accueil.dart';
import 'package:firstapp/bag.dart';
import 'package:firstapp/catalog.dart';
import 'package:firstapp/categories.dart';
import 'package:firstapp/favorites.dart';
import 'package:firstapp/profil.dart';


class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  int selectedIndex = 0;
  Widget _myhome = MyHome();
  Widget _myshop = Myshop();
  Widget _mybag = Mybag();
  Widget _myprofile =MyProfile();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: this.getBody(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.redAccent,

        type: BottomNavigationBarType.fixed,
        currentIndex: this.selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                (this.selectedIndex == 0) ? Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, bottom: 6.0),
                  child: Container(
                    height: 4.0,
                    color: Colors.redAccent,
                  ),
                ) : Container(),
                Icon(Icons.house),
              ],
            ),
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                (this.selectedIndex == 1) ? Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, bottom: 6.0),
                  child: Container(
                    height: 4.0,
                    color: Colors.redAccent,
                  ),
                ) : Container(),
                Icon(FontAwesomeIcons.cartShopping),

              ],
            ),
            label: "shop",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                (this.selectedIndex == 2) ? Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, bottom: 6.0),
                  child: Container(
                    height: 4.0,
                    color: Colors.redAccent,
                  ),
                ) : Container(),
                Icon(FontAwesomeIcons.bagShopping),
              ],
            ),
            label: "bag",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                (this.selectedIndex == 3) ? Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, bottom: 6.0),
                  child: Container(
                    height: 4.0,
                    color: Colors.redAccent,
                  ),
                ) : Container(),
                Icon(Icons.favorite),
              ],
            ),
            label: "favorites",
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                (this.selectedIndex == 4) ? Padding(
                  padding: const EdgeInsets.only(
                      right: 24.0, left: 24.0, bottom: 6.0),
                  child: Container(
                    height: 4.0,
                    color: Colors.redAccent,
                  ),
                ) : Container(),
                Icon(FontAwesomeIcons.user),
              ],
            ),
            label: "Profile",
          )
        ],
        onTap: (int index) {
          this.onTapHandler(index);
        },
      ),
    );
  }

  Widget getBody() {
    if (this.selectedIndex == 0) {
      return Accueil();
    }
    else if (this.selectedIndex == 1) {
      return Catalog();
    }
    else if (this.selectedIndex == 2) {
      return Bag();}
     else if(this.selectedIndex==3){
      return Favorites();
    }
    else{
      return Profil();
    }
  }

  void onTapHandler(int index) {
    this.setState(() {
      this.selectedIndex = index;
    });
  }
}
  class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Center(child: Text("home"));
  }
  }

  class Myshop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Center(child: Text("shop"));
  }
  }

  class Mybag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Center(child: Text("bag"));
  }
  }
class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("Profile"));
  }
}

