import 'package:app1/login.dart';
import 'package:app1/pages/descricao.dart';
import 'package:app1/pages/reactnative.dart';
import 'package:flutter/material.dart';
import 'package:app1/app_controller.dart';
import 'pages/bootstrap.dart';
import 'pages/css.dart';
import 'pages/html.dart';


class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            title:'App Portifólio',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.red,
              
              brightness: AppController.instance.isDarkTheme
                  ? Brightness.dark
                  : Brightness.light,
            ),
            initialRoute: '/',
            routes:{
              '/' : (contex) => LogPage(),           
              '/html' : (context) => HtmlPage(),
              '/css' : (context) => CssPage(),
              '/reactnative' : (context) => ReactNativePage(),
              '/bootstrap' : (context) => BootstrapPage(),
              '/descricao' : (context) => Descricao(),
            }
          );
        });
  }
}  
