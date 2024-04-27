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
        height: 250,
        margin: const EdgeInsets.all(5),
        color: constants.Colors.white,
        child: Stack(
          children: [
            Positioned(
              top: 20,
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                margin: const EdgeInsets.all(15),
                height: 150,
                decoration:  const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(250, 18),
                    topRight: Radius.elliptical(250, 18),
                    bottomRight: Radius.elliptical(250, 20),
                    bottomLeft: Radius.elliptical(250, 20),
                  ),
                  gradient: LinearGradient(
                      colors: [constants.Colors.darkPurple, constants.Colors.lightPurple]
                  ),
                ),
                child: const Stack(
                  children: [
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Text('2.70% Today', style: TextStyle(
                          color: constants.Colors.white,
                          fontSize: 16
                      )),
                    ),
                    Positioned(
                      top: 40,
                      left: 20,
                      child: Text('\$12,670.90',
                          style: TextStyle(
                          color: constants.Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.bold
                      )),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 6,
              child: Image.asset("assets/coin_stack.png"),
            ),
            Positioned(
              bottom: 12,
              left: 30,
              child: FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.add),
                backgroundColor: constants.Colors.darkPink,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
