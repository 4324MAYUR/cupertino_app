import 'package:cupertino_app/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeIsoPage extends StatefulWidget {
  const HomeIsoPage({super.key});

  @override
  State<HomeIsoPage> createState() => _HomeIsoPageState();
}

class _HomeIsoPageState extends State<HomeIsoPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("iOS"),
        trailing: CupertinoSwitch(
          value: context.watch<HomeProvider>().isAndroid,
          onChanged: (value) {
            context.read<HomeProvider>().isChangeAndroid();
          },
        ),
      ),
      backgroundColor: CupertinoColors.white,
      child: Center(
        child: ElevatedButton(
          onPressed: () {
             Scaffold.of(context).showBottomSheet(
                 (BuildContext context){
                   return const Column(
                     children: [
                       Text("iSO"),
                       Text("iOS version "),
                     ],
                   );
                 }
             );
          },
          child: const Text("Show BottomSheet"),
        ),
      ),
    );
  }
}
