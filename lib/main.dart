import 'package:flutter/material.dart';
import 'package:homepro_b2c_1/screens/accountScreen/accountScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/addressBookScreen.dart';
import 'package:homepro_b2c_1/screens/cartScreen/cartScreen.dart';
import 'package:homepro_b2c_1/screens/categoryScreen/categoryScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/contactUsScreen.dart';
import 'package:homepro_b2c_1/screens/favoriteScreen/favoriteScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/findStoreScreen.dart';
import 'package:homepro_b2c_1/screens/homeCardScreen/connectHomeCardScreen.dart';
import 'package:homepro_b2c_1/screens/homeCardScreen/homeCardScreen.dart';
import 'package:homepro_b2c_1/screens/flashSaleScreen/flashSaleScreen.dart';
import 'package:homepro_b2c_1/screens/homeCardScreen/registerHomeCardScreen.dart';
import 'package:homepro_b2c_1/screens/homeScreen/homeScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/homeServicesScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/inspireMeScreen.dart';
import 'package:homepro_b2c_1/screens/introScreen/introScreen.dart';
import 'package:homepro_b2c_1/screens/mainScreen.dart';
import 'package:homepro_b2c_1/screens/notificationScreen/notificationScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/orderHistoryScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/promotionsScreen.dart';
import 'package:homepro_b2c_1/screens/darwerScreen/shopByBrandScreen.dart';
import 'package:homepro_b2c_1/screens/recommendProductScreen/recommendProductScreen.dart';
import 'package:homepro_b2c_1/screens/searchScreen.dart';
import 'package:homepro_b2c_1/screens/signinOrSignupScreen/signinOrSignupScreen.dart';
import 'package:homepro_b2c_1/screens/testScreen/testScreen.dart';
import 'package:homepro_b2c_1/screens/topSelectionScreen/topSelectionScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      title: 'B2C Homepro',
      home: IntroScreen(),
      routes: <String, WidgetBuilder>{
        '/intro': (BuildContext context) => IntroScreen(),
        '/main': (BuildContext context) => MainScreen(),
        '/home': (BuildContext context) => HomeScreen(),
        '/category': (BuildContext context) => CategoryScreen(),
        '/favorite': (BuildContext context) => FavoriteScreen(),
        '/cart': (BuildContext context) => CartScreen(),
        '/account': (BuildContext context) => AccountScreen(),
        '/signinOrSignup': (BuildContext context) => SignInOrSignUpScreen(),
        '/notification': (BuildContext context) => NotificationScreen(),
        '/homecard': (BuildContext context) => HomeCardScreen(),
        '/addressbook': (BuildContext context) => AddressBookScreen(),
        '/contactus': (BuildContext context) => ContactUsScreen(),
        '/orderhistory': (BuildContext context) => OrderHistoryScreen(),
        '/shopbybrand': (BuildContext context) => ShopByBrandScreen(),
        '/promotions': (BuildContext context) => PromotionsScreen(),
        '/inspireme': (BuildContext context) => InspireMeScreen(),
        '/homeservice': (BuildContext context) => HomeServicesScreen(),
        '/findstore': (BuildContext context) => FindStoreScreen(),
        '/flashsale': (BuildContext context) => FlashSaleScreen(),
        '/topselection': (BuildContext context) => TopSelectionScreen(),
        '/recommendProduct': (BuildContext context) => RecommendProductScreen(),
        '/test': (BuildContext context) => TestScreen(),
        '/registerhomecard': (BuildContext context) => RegisterHomeCardScreen(),
        '/connecthomecard': (BuildContext context) => ConnectHomeCardScreen(),
        '/search': (BuildContext context) => SearchScreen(),
      },
    );
  }
}
