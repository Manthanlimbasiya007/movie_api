import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_api/screen/view/home_screen.dart';
import 'package:provider/provider.dart';
import 'screen/provider/home_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => HomeScreen(),
        },
      ),
    ),
  );
}