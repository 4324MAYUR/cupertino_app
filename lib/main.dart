import 'package:cupertino_app/screen/home/home_iso_page.dart';
import 'package:cupertino_app/screen/home/home_page.dart';
import 'package:cupertino_app/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) => HomeProvider(),
      child: const MyApp(),
    ),
   );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeProvider>(context);
    return homeProvider.isAndroid
        ? const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
        : const CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomeIsoPage(),
    );
  }
}

