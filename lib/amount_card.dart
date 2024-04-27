import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/constants/constants.dart' as constants;


class AmountCard extends StatelessWidget {
  const AmountCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
              child: Image.asset('assets/plus_icon.png'),
              backgroundColor: constants.Colors.darkPink,
            ),
          ),
        ],
      ),
    );
  }
}
