import 'package:crypto_wallet_ui/actions_section.dart';
import 'package:crypto_wallet_ui/amount_card.dart';
import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/constants/constants.dart' as constants;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: constants.Colors.white,
        toolbarHeight: 90,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello Fabio", style: TextStyle(color: constants.Colors.pink, fontSize: 24)),
                Text("Welcome Back!", style: TextStyle(color: constants.Colors.black, fontSize: 32)),
              ],
            ),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: constants.Colors.lightGrey
              ),
              child: Image.asset('assets/icon_notifications.png'),
            )
          ],
        ),
        elevation: 0,
      ),
      body: Container(
        color: constants.Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AmountCard(),
            ActionSection(),
          ],
        ),
      ),
    );
  }
}
