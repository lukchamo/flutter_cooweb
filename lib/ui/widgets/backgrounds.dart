

import 'dart:math';

import 'package:com_drclik_app/themes/app_theme.dart';
import 'package:flutter/material.dart';




Widget buildOvalBackground(BuildContext context){ 

  final _buildCircle =  Container(
      width: MediaQuery.of(context).size.width + 600,
      height: 980,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(800)),
        gradient: AppTheme.primaryGradient
      )
  );
  

  return Stack(
    children: <Widget>[
      //_bg,
      Positioned(
        left: -300,
        top: -705,
        child: _buildCircle,           
      ),
    ],
  );
}


Widget buildOvalBackground2 (BuildContext context){ 

  final _buildCircle =  Container(
      width: MediaQuery.of(context).size.width + 600,
      height: 980,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(800)),
        gradient: AppTheme.primaryGradient
      )
  );
  

  return Stack(
    children: <Widget>[
      //_bg,
      Positioned(
        left: -300,
        top: -845,
        child: _buildCircle,           
      ),
    ],
  );
}