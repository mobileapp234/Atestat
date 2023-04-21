// import 'package:flutter/material.dart';
// import 'package:auto_size_text/auto_size_text.dart';

// class FoodList extends StatefulWidget {
//   const FoodList({super.key});

//   @override
//   State<FoodList> createState() => _FoodListState();
// }

// int nr_food_first = 4;
// List<String> imagini=["assets/images/"]
// List<String> Nume = ["Supa de perisoare", "Supa de cartofi"];
// List<int> pret = [12, 33];
// int i = 0;

// class _FoodListState extends State<FoodList> {
//   Widget menu(List<String> nume, List<int> pret, int nrElement,
//       String numeMancare, int pretulMancarii) {
//     if (i == 0) {
//       return Container(
//         width: MediaQuery.of(context).size.width * 0.45,
//         height: MediaQuery.of(context).size.height * 0.25,
//         decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: const [
//               BoxShadow(
//                 blurRadius: 4,
//                 color: Color(0x230E151B),
//                 offset: Offset(0, 2),
//               )
//             ]),
//         child: Column(children: [
//           Padding(
//             padding: EdgeInsets.all(5),
//             child: Container(
//               width: double.infinity,
//               height: 120,
//               decoration: BoxDecoration(
//                   image: const DecorationImage(
//                       image:
//                           AssetImage("assets/images/tomatosoup_13560_16x9.jpg"),
//                       fit: BoxFit.cover),
//                   borderRadius: BorderRadius.circular(10)),
//             ),
//           ),
//           Column(
//             //crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(
//                   top: 12,
//                 ),
//                 child: AutoSizeText(
//                   nume[1],
//                   style: TextStyle(
//                       fontFamily: "SignikaNegative-Regular",
//                       fontSize: 19,
//                       fontWeight: FontWeight.w400),
//                   maxLines: 1,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.only(top: 2, bottom: 5),
//                 child: Text("Pret:12 lei", style: TextStyle(fontSize: 18)),
//               ),
//             ],
//           ),
//         ]),
//       );
//     } else {
//       return const SizedBox(width: 0);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//         width: MediaQuery.of(context).size.width * 1,
//         height: MediaQuery.of(context).size.height * 3,
//         child: Column(
//           children: [
//             //  meniu(1, 2, "3", 4),
//             //meniu(1, 2, "3", 4),
//           ],
//         ));
//   }
// }
