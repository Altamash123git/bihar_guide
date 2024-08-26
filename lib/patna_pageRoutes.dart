import 'package:bihar_tour/Patna.dart';
import 'package:bihar_tour/muzaffarpur.dart';
import 'package:bihar_tour/splash.dart';
import 'package:flutter/cupertino.dart';

class  Approutes {
  static final splash_page='/splash';
  static final patna_page= '/patna';
  static final muzaffarpur_page='/muz';
  static final nalanda_page='/nalanda';

  static Map<String, Widget Function(BuildContext)> getRouteMap()=>{
    patna_page: (context)=> Patna(),
    muzaffarpur_page: (context)=> muzaffarpur(),
    splash_page: (context)=> SplashPage(),
  };

}