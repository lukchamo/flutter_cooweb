import 'package:com_drclik_app/themes/app_theme.dart';
import 'package:flutter/material.dart';

class TitleView extends StatelessWidget {

  final String title;
  final Color color;

  const TitleView({Key key, this.title, this.color: AppTheme.darkText }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
      child: ListTile(
        title: Text(title, style: TextStyle(color: color),),
      )
    );
  }
}