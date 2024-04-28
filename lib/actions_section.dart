import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/constants/constants.dart' as constants;

class ActionSection extends StatefulWidget {
  const ActionSection({Key? key}) : super(key: key);

  @override
  State<ActionSection> createState() => _ActionSectionState();
}

class _ActionSectionState extends State<ActionSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Actions",
              style: TextStyle(
                  color: constants.Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              )
          ),
          Row(
            children: [
              Container(
                height: 200,
                width: 180,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: constants.Colors.pink,
                              borderRadius: BorderRadius.circular(40)
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Receive",
                              style: TextStyle(
                                  color: constants.Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Image.asset("assets/arrow_icon.png")
                          ],
                        )
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/hands.png"),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 180,
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40)
                ),
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        top: 30,
                        bottom: 0,
                        left: 0,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              color: constants.Colors.mediumPurple,
                              borderRadius: BorderRadius.circular(40)
                          ),
                        )
                    ),
                    Positioned(
                        bottom: 20,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Send",
                              style: TextStyle(
                                  color: constants.Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Image.asset("assets/arrow_icon.png")
                          ],
                        )
                    ),
                    Positioned(
                      right: 0,
                      top: 5,
                      child: Image.asset("assets/pocket.png"),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
