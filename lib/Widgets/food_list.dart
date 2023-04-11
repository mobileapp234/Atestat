import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  const FoodList({super.key});

  @override
  State<FoodList> createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 300,
        // height: 300,
        child: Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x230E151B),
                  offset: Offset(0, 2),
                )
              ]),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 100,
                    height: 90,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/tomatosoup_13560_16x9.jpg"))),
                  ),
                )
              ]),
            ),
            const SizedBox(width: 20),
            Container(
              width: MediaQuery.of(context).size.width * 0.45,
              height: 200,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  color: Color(0x230E151B),
                  offset: Offset(0, 2),
                )
              ]),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    width: 100,
                    height: 90,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/tomatosoup_13560_16x9.jpg"))),
                  ),
                )
              ]),
            )
          ],
        )
      ],
    ));
  }
}
