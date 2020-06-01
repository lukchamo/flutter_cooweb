// import 'package:flutter/material.dart';



// class PhonepadPage extends StatelessWidget {
//   const PhonepadPage({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('Phonepad'),
//     );
//   }
// }



import 'package:com_drclik_app/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

// import 'main.dart';

class MyChromeSafariBrowser extends ChromeSafariBrowser {
  MyChromeSafariBrowser(browserFallback) : super(bFallback: browserFallback);

  @override
  void onOpened() {
    print("ChromeSafari browser opened");
  }

  @override
  void onCompletedInitialLoad() {
    print("ChromeSafari browser initial load completed");
  }

  @override
  void onClosed() {
    print("ChromeSafari browser closed");
  }
}

class ChromeSafariBrowserExampleScreen extends StatefulWidget {
  final ChromeSafariBrowser browser =
      new MyChromeSafariBrowser(new InAppBrowser());

  @override
  _ChromeSafariBrowserExampleScreenState createState() =>
      new _ChromeSafariBrowserExampleScreenState();
}

class _ChromeSafariBrowserExampleScreenState
    extends State<ChromeSafariBrowserExampleScreen> {


    TextEditingController _textController = TextEditingController();
    bool _enabledTwilio = false;
  
  @override
  void initState() {
    widget.browser.addMenuItem(new ChromeSafariBrowserMenuItem(id: 1, label: 'Custom item menu 1', action: (url, title) {
      print('Custom item menu 1 clicked!');
      print(url);
      print(title);
    }));
    widget.browser.addMenuItem(new ChromeSafariBrowserMenuItem(id: 2, label: 'Custom item menu 2', action: (url, title) {
      print('Custom item menu 2 clicked!');
      print(url);
      print(title);
    }));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    

    return Scaffold(
        appBar: AppBar(
            iconTheme: IconThemeData(
              color: Colors.white
            ),
            title: Text(
              "PhonePad",
              style: AppTheme.styleWhite,
            )),
        //drawer: myDrawer(context: context),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
           // verticalDirection: VerticalDirection.down,
            children: <Widget>[

              
              Text('Sample of integration External WebView. SmartVideo'),
              SizedBox(height: 20.0,),
              RaisedButton(
                color: AppTheme.secondary,
                elevation: 6.0,
                onPressed: () async {
                  await widget.browser.open(
                      url: "https://bops-phonepad.firebaseapp.com/?ParamOne=01ca1839-68a2-4c8d-8d96-36ab59da1026&ParamTwo=227254e2-18aa-48db-a43f-8613121b2c27",
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false, keepAliveEnabled: true),
                          ios: IOSSafariOptions(
                              dismissButtonStyle: IOSSafariDismissButtonStyle.CLOSE,
                              presentationStyle: IOSUIModalPresentationStyle.OVER_FULL_SCREEN
                          )));
                },
                child: Text("Start Consulting Option # 1", style: AppTheme.styleWhite,)),

                 RaisedButton(
                color: AppTheme.secondary,
                elevation: 6.0,
                onPressed: () async {
                  await widget.browser.open(
                      url: "https://bops-group.firebaseapp.com/?ParamOne=01ca1839-68a2-4c8d-8d96-36ab59da1026&ParamTwo=227254e2-18aa-48db-a43f-8613121b2c27",
                      options: ChromeSafariBrowserClassOptions(
                          android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false, keepAliveEnabled: true),
                          ios: IOSSafariOptions(
                              dismissButtonStyle: IOSSafariDismissButtonStyle.CLOSE,
                              presentationStyle: IOSUIModalPresentationStyle.OVER_FULL_SCREEN
                          )));
                },
                child: Text("Start Consulting Option # 2", style: AppTheme.styleWhite,)),

                SizedBox(height: 20.0,),

                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20.0),
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: AppTheme.secondary,
                      width: 2.0
                    )
                  ),
                  child: Column(
                    children: <Widget>[
                       TextField(
                         controller: _textController,
                         onEditingComplete: (){
                          print(_textController.text.replaceAll(' ', '%20'));



                         },
                          // onChanged: (value){
                          //   print('VALUE: ${value}');

                          //   if(value != '') {
                          //      setState(() {
                          //        _enabledTwilio = true;
                          //      });
                          //   }else{
                          //      _enabledTwilio = false;
                          //   }
                           
                          //   //_textController.text = value;
                          //   // _textController.value = value.;
                          // },
                          //obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Pacient Name',
                          ),
                        ), 
                        SizedBox(height: 20.0,),
                        Text(_textController.text == '' ? 'Pacient name is required' : _textController.text ),
                        RaisedButton(
                          color: AppTheme.secondary,
                          elevation: 6.0,
                          onPressed: _textController.text == '' ? null : () async {


                            final String param2 = _textController.text.replaceAll(' ', '%20');

                            final String _url = "https://video-twilio-dot-bops-dashboard.uc.r.appspot.com/quickstart/?param1=Hs0aji3jaasnj2334&param2=${param2}";
                            print('_URL: ${_url}');


                   
                            await widget.browser.open(
                                url: _url,
                                options: ChromeSafariBrowserClassOptions(
                                    android: AndroidChromeCustomTabsOptions(addDefaultShareMenuItem: false, keepAliveEnabled: true),
                                    ios: IOSSafariOptions(
                                        dismissButtonStyle: IOSSafariDismissButtonStyle.CLOSE,
                                        presentationStyle: IOSUIModalPresentationStyle.OVER_FULL_SCREEN
                                    ))); 

                                    
                          },
                          child: Text("Start Consulting (Twilio)", style: AppTheme.styleWhite,)
                        ),
                    ],
                  ),
                ),

                
            ],
          )
        ));
  }
}