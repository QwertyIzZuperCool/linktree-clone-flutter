import 'package:firebase_admob/firebase_admob.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linktree_iqfareez_flutter/utils/ad_manager.dart';
import 'package:linktree_iqfareez_flutter/views/basicPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseAdMob.instance.initialize(appId: AdManager.appId);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Linktree Clone',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        //karla is font use in real linktree
        textTheme: GoogleFonts.karlaTextTheme(),
      ),
      home: BasicPage(),
    );
  }
}
