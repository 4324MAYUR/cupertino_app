import 'package:cupertino_app/screen/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ANDROID",
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
        ),
        actions: [
          Switch(
            value: context.watch<HomeProvider>().isAndroid,
              onChanged: (value) {
              context.read<HomeProvider>().isChangeAndroid();
               },
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: const Center(
        child: Text("ANDROID VERSION",
        style: TextStyle(
          color: Colors.white,
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
        ),
      ),
    );
  }
}
