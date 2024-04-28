import 'package:crypto_wallet_ui/actions_section.dart';
import 'package:crypto_wallet_ui/amount_card.dart';
import 'package:crypto_wallet_ui/movers_section.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
  int currentPageIndex = 2;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AmountCard(),
              ActionSection(),
              MoversSection()
            ],
          ),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        backgroundColor: constants.Colors.white,
        color: constants.Colors.darkPurple,
        buttonBackgroundColor: constants.Colors.darkPurple,
        items: [
          Image.asset("assets/home.png"),
          Image.asset("assets/wallet.png"),
          Container(child: const Text('')),
          Image.asset("assets/market.png"),
          Image.asset("assets/setting.png"),
        ],
        index: currentPageIndex,
        letIndexChange: (index) => true,
        onTap: (index){
          currentPageIndex = index;
        },
      ),
      floatingActionButton: SizedBox(
        height: 70,
        width: 70,
        child: FloatingActionButton(
          onPressed: (){
            final CurvedNavigationBarState? navBarState =
                _bottomNavigationKey.currentState;
            navBarState?.setPage(2);
          },
          child: Image.asset("assets/swap-fill.png"),
          backgroundColor: constants.Colors.mediumPurple,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
