import 'package:flutter/material.dart';
import 'package:crypto_wallet_ui/constants/constants.dart' as constants;

class MoversSection extends StatelessWidget {
  const MoversSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Top Movers",
              style: TextStyle(
                  color: constants.Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              )
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Container(
                height: 90,
                width: 160,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: constants.Colors.lightGrey
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("+34.98%",
                            style: TextStyle(
                                color: constants.Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )
                        ),
                        Text("BTC \$21.58",
                            style: TextStyle(
                                color: constants.Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("assets/purple_graph.png")
                    )
                  ],
                ),
              ),
              SizedBox(width: 20,),
              Container(
                height: 90,
                width: 160,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: constants.Colors.lightGrey
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("+34.98%",
                                style: TextStyle(
                                    color: constants.Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                            Text("BTC \$21.58",
                                style: TextStyle(
                                    color: constants.Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                )
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Image.asset("assets/pink_graph.png")
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
