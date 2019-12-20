import 'package:advanced_splashscreen/advanced_splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:mobilsharelocation/locator.dart';
import 'package:mobilsharelocation/screens/home_page.dart';

import 'package:mobilsharelocation/utilities/constant.dart';
import 'package:mobilsharelocation/viewmodels/location_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocationViewModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xff2B2C50),
          primarySwatch: Colors.blue,
        ),
        home: AdvancedSplashScreen(
          appTitle: "Welcome",
          appTitleStyle: kSplashTitleStyle,
          child: HomePage(),
          seconds: 3,
          colorList: [
            Color(0xff2B2C50),
            Color(0xff2B2C50),
            Color(0xff2B2C50),
          ],
          appIcon:
              "assets/images/location-clipart-location-pointer-5-removebg-preview.png",
        ),
      ),
    );
  }
}