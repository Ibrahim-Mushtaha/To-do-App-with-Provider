import 'package:flutter/material.dart';
import 'package:flutter_app/model/TaskProvider.dart';
import 'package:provider/provider.dart';
import 'Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskProvider>(
        create: (context){
      return TaskProvider();
    },
    child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home:SplashScreen())
    ,);
    }

}
    
