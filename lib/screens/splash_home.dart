
import 'package:car_market/screens/search_page.dart';
import 'package:car_market/screens/settings.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../pages/custom_animated_bottom_bar.dart';
import '../pages/new_card.dart';
import 'home_button.dart';



class splashHomePage extends StatefulWidget {
  @override
  _splashHomePage createState() => _splashHomePage();
}

class _splashHomePage extends State<splashHomePage> {
  int _currentIndex = 0;
  final user = FirebaseAuth.instance.currentUser!;

  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    //final List<NewEntry> ent;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rental Car Service',
          style: Theme.of(context).textTheme.headline6,
        ),

      ),

      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   title: Text("Welcome"),
      //   backgroundColor: Colors.green[200],
      // ),
        body: getBody(),
        bottomNavigationBar: _buildBottomBar());

  }

  Widget _buildBottomBar() {
    return CustomAnimatedBottomBar(
      containerHeight: 70,
      backgroundColor: Colors.black,
      selectedIndex: _currentIndex,
      showElevation: true,
      itemCornerRadius: 24,
      curve: Curves.easeIn,
      onItemSelected: (index) => setState(() => _currentIndex = index),
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.apps),
          title: const Text('Home'),
          activeColor: Colors.amber,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),

        BottomNavyBarItem(
          icon: const Icon(Icons.search),
          title: const Text(
            'Search ',
          ),
          activeColor: Colors.green,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.favorite_rounded),
          title: const Text('Favorite'),
          activeColor: Colors.red,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
        BottomNavyBarItem(
          icon: const Icon(Icons.settings),
          title: const Text('Settings'),
          activeColor: Colors.blue,
          inactiveColor: _inactiveColor,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget getBody() {

    final int index;
    List<Widget> pages = [
      HomeButtonPage(),
      SearchPage(),
      MyCard(),
      settingPage(),




    ];
    return IndexedStack(
      index: _currentIndex,
      children: pages,
    );

  }
}
