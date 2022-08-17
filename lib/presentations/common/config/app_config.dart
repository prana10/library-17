import 'package:flutter/cupertino.dart';
import '/presentations/modules/modules.dart';

class AppConfig {
  static String baseUrl = "";
  static String appName = "Library 17";

  //routing external
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => const SplashPage(),
    '/main': (context) => const MainPage(),
    '/home': (context) => const HomePage(),
    '/sign-up': (context) => const SignUpPage(),
    '/sign-in': (context) => const SignInPage(),
    '/settings': (context) => const SettingPage(),
    '/list_book': (context) => const ListBookPage(),
    '/detail_book': (context) => const DetailBookPage(),
    '/transaction': (context) => const TransactionPage(),
    '/category_book': (context) => const CategoryBookPage(),
    '/settings_profile': (context) => const SettingEditProfilPage(),
  };
}
