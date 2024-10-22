import 'package:cupertino_app/screen/home/provider/home_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class HomeIsoPage extends StatefulWidget {
  const HomeIsoPage({super.key});

  @override
  State<HomeIsoPage> createState() => _HomeIsoPageState();
}

class _HomeIsoPageState extends State<HomeIsoPage> {
  @override
  Widget build(BuildContext context) {
    return   CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text("iSO"),
        trailing: CupertinoSwitch(
            value:  context.watch<HomeProvider>().isAndroid,
            onChanged: (value) {
              context.read<HomeProvider>().isChangeAndroid();
             },
        ),
      ),
      child: const Center(
        child: Text("iSO VERSION",
        style: TextStyle(
          fontWeight: FontWeight.bold,
           fontSize: 40,
        ),
        ),
      ),
     );
  }
}
