import 'package:com_drclik_app/ui/pages/NavBarPage.dart';

import 'package:com_drclik_app/ui/pages/phonepad/PhonePadPage.dart';
import 'package:flutter/material.dart';


Map <String, WidgetBuilder> getRoutes(){
  return <String,WidgetBuilder>{
    '/' : (BuildContext context) => NavbarPage(),
    'phonepad':   (BuildContext context) => ChromeSafariBrowserExampleScreen(),
  };
}