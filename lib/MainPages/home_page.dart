import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/choose_food_type.dart';
import 'package:mobile_app/Widgets/food_list.dart';
import 'package:mobile_app/Widgets/home_slider.dart';
import 'package:mobile_app/Widgets/food_list.dart';
import 'package:mobile_app/Globals_Variables.dart' as c;
import '../Widgets/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

List<String> imagini = [
  "assets/images/tomatosoup_13560_16x9.jpg",
  "assets/images/Catalog-Kaufland-6-mai-12-mai-2020.jpg"
];
List<String> nume1 = ["Supa de perisoare", "Supa de cartofi"];
List<int> pret1 = [12, 33];
// class HomePageScreenSize extends StatelessWidget {
//   const HomePageScreenSize({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // final screenSize = MediaQuery.of(context);
//     // final s_s = screenSize.size.width * 0.05;
//     // final padding1 = EdgeInsets.all(s_s);
//     // final
//     return const HomePage();
//   }
// }

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // late final padding1;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   padding1=widget.
  // }
  // final menu mn=new Meniu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(scrollDirection: Axis.vertical, children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.withOpacity(0.5)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("1111"),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 7, 0, 0),
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/png/Dollar-Coins-PNG_azdjjc.png"))),
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
            child: Row(children: [
              Text(
                "Themis Bistro",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blue,
                ),
              )
            ]),
          ),
          const SizedBox(height: 12),
          SizedBox(height: 200, width: double.infinity, child: HomeSlider()),
          const SizedBox(height: 20),
          const ChooseFoodType(),
          const SizedBox(height: 20),
          //  const FoodList(),
          const SizedBox(height: 5),
          //  const FoodList(),

          if (c.categorie == 0)
            Menu(
              nume: nume1[0],
              pret: pret1[0],
              imagini: imagini[0],
            )
          else if (c.categorie == 1)
            Menu(
              nume: nume1[1],
              pret: pret1[1],
              imagini: imagini[1],
            )
        ],
      ),
    ]));
  }
}
