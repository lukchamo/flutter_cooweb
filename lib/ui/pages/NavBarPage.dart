
import 'package:com_drclik_app/ui/pages/MyAccount/index.dart';
import 'package:com_drclik_app/ui/pages/phonepad/PhonePadPage.dart';
import 'package:com_drclik_app/ui/widgets/backgrounds.dart';
import 'package:flutter/material.dart';

import 'MainMenu/MainMenuPage.dart';


class NavbarPage extends StatefulWidget {
  const NavbarPage({Key key}) : super(key: key);

  @override
  _NavbarPageState createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {


  int _currentIndex = 0;


  Widget _callPage(int index){
    switch (index) {
      case 0: return MainMenuPage();
      case 1: return ChromeSafariBrowserExampleScreen();
      case 2: return MyAccount();
        
      default: return MainMenuPage();
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          buildOvalBackground(context),
          _callPage(_currentIndex)
        ],
      ),
      
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar(){
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index){
        _callPage(index);

        setState(() {
          _currentIndex = index;
        });
        
      },
      showUnselectedLabels: false,
      selectedFontSize: 10,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('HOME')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.phone),
          title: Text('PHONEPAD')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('MY ACCOUNT')
        ),
      ],
    );
  }
}