import 'package:com_drclik_app/themes/app_theme.dart';
import 'package:com_drclik_app/ui/widgets/TitleView.dart';
import 'package:com_drclik_app/ui/widgets/backgrounds.dart';
import 'package:flutter/material.dart';

class MainMenuPage extends StatefulWidget {
  const MainMenuPage({Key key}) : super(key: key);

  @override
  _MainMenuPageState createState() => _MainMenuPageState();
}

class _MainMenuPageState extends State<MainMenuPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Hola', style: TextStyle(color: Colors.white)),

        // ),
        body: Column(
          
          children: <Widget>[
            _buildHeader(),
            TitleView(title: 'Our Services', color: Colors.white,), 
            _buildListServices()
          ],
        ),
        backgroundColor: Colors.transparent,
      ),
    );
  }

  Widget _buildHeader(){
    return ListTile(
      leading:  Icon(Icons.menu, color: Colors.white,),
      trailing:  Icon(Icons.notifications, color: Colors.white,),
      title: Text('Hola', style: TextStyle(color: Colors.white, fontSize: 21.0)),
      subtitle: Text('Linda Varon', style: AppTheme.styleWhite,),
    );
  }

  Widget _buildListServices(){
    return Container(
      height: 200.0,
      width: double.infinity,
      child: ListView(
        padding: EdgeInsets.only(left: 10.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildItemService(),
          _buildItemService(),
          _buildItemService(),
          _buildItemService(),
          _buildItemService(),
          _buildItemService(),
          _buildItemService(),

        ],
      ),
    );
  }

  Widget _buildItemService(){
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, 'phonepad');
      },
      child: Container(
        width: 130.0,
        height: 220.0,
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey[400],
          boxShadow: [
            BoxShadow(
              blurRadius: 2.0,
              color: Colors.black12,

            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          //textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text('Title', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            Text('Subtitle', style: TextStyle(color: Colors.white, fontSize: 10.0))
          ],
        ),
      ),
    );
  }
}