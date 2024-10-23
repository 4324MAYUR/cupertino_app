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
      backgroundColor: Colors.white,
      body:  Center(
        child: ElevatedButton(onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context){
                return BottomSheet(onClosing: () {

                },
                    builder: (context) {
                      return const Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           SizedBox(height: 20),
                           Text("Android",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                          SizedBox(height: 20),
                          Text("ShowModalBottomSheet in Android",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      ],
                      );
                    },);
              }
          );
        },
            child: const Text("ShowModalBottomSheet",
            style: TextStyle(
              fontSize: 20,
            ),
            ),),
      ),
    );
  }
}
