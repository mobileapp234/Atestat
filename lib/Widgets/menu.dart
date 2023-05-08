import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

List<String> imagini = [
  "assets/images/tomatosoup_13560_16x9.jpg",
  "assets/images/soupes1.jpg",
  "assets/images/Soupes2.jpg",
  "assets/images/Soupes3.jpg",
  "assets/images/Soupes4.jpg",
  "assets/images/Soupes5.jpg",
];
List<String> nume = [
  "Supa de perisoare",
  "Supa 2",
  "Supa 3",
  "Supa 4",
  "Supa 5",
  "Supa 6"
];
List<int> pret = [12, 33, 15, 19, 20, 12];

class _MenuState extends State<Menu> {
  int i = -2;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.75,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext ctxt, int index) {
              i += 2;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(1, 3),
                              )
                            ]),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imagini[i]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                child: AutoSizeText(
                                  nume[i],
                                  style: TextStyle(
                                      fontFamily: "SignikaNegative-Regular",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, bottom: 5),
                                child: Text("${pret[i]} lei",
                                    style: const TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.45,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: const [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x230E151B),
                                offset: Offset(1, 3),
                              )
                            ]),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              width: double.infinity,
                              height: 120,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(imagini[i + 1]),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 12,
                                ),
                                child: AutoSizeText(
                                  nume[i + 1],
                                  style: TextStyle(
                                      fontFamily: "SignikaNegative-Regular",
                                      fontSize: 19,
                                      fontWeight: FontWeight.w400),
                                  maxLines: 1,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 2, bottom: 5),
                                child: Text("${pret[i + 1]} lei",
                                    style: const TextStyle(fontSize: 18)),
                              ),
                            ],
                          ),
                        ]),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05)
                ],
              );
            }));
  }
}

// class Menu extends StatefulWidget {
//   final String nume;
//   final int pret;
//   final String imagini;
//   const Menu(
//       {super.key,
//       required this.nume,
//       required this.pret,
//       required this.imagini});

//   @override
//   State<StatefulWidget> createState() {
//     return _Menu();
//   }
// }



// class _Menu extends State<Menu> {
//   int i = -2;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width * 1,
//       height: MediaQuery.of(context).size.height * 0.7,
//       child: ListView.builder(
//           itemCount: 2,
//           itemBuilder: (BuildContext ctxt, int index) {
//             i += 2;
//             return Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.45,
//                       height: MediaQuery.of(context).size.height * 0.25,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: const [
//                             BoxShadow(
//                               blurRadius: 4,
//                               color: Color(0x230E151B),
//                               offset: Offset(0, 2),
//                             )
//                           ]),
//                       child: Column(children: [
//                         Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: Container(
//                             width: double.infinity,
//                             height: 120,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: AssetImage(imagini[i]),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(10)),
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 top: 12,
//                               ),
//                               child: AutoSizeText(
//                                 nume[i],
//                                 style: TextStyle(
//                                     fontFamily: "SignikaNegative-Regular",
//                                     fontSize: 19,
//                                     fontWeight: FontWeight.w400),
//                                 maxLines: 1,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 2, bottom: 5),
//                               child: Text("${pret[i]} lei",
//                                   style: const TextStyle(fontSize: 18)),
//                             ),
//                           ],
//                         ),
//                       ]),
//                     ),
//                     const SizedBox(width: 20),
//                     Container(
//                       width: MediaQuery.of(context).size.width * 0.45,
//                       height: MediaQuery.of(context).size.height * 0.25,
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: const [
//                             BoxShadow(
//                               blurRadius: 4,
//                               color: Color(0x230E151B),
//                               offset: Offset(0, 2),
//                             )
//                           ]),
//                       child: Column(children: [
//                         Padding(
//                           padding: const EdgeInsets.all(5),
//                           child: Container(
//                             width: double.infinity,
//                             height: 120,
//                             decoration: BoxDecoration(
//                                 image: DecorationImage(
//                                     image: AssetImage(imagini[i + 1]),
//                                     fit: BoxFit.cover),
//                                 borderRadius: BorderRadius.circular(10)),
//                           ),
//                         ),
//                         Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Padding(
//                               padding: EdgeInsets.only(
//                                 top: 12,
//                               ),
//                               child: AutoSizeText(
//                                 nume[i + 1],
//                                 style: TextStyle(
//                                     fontFamily: "SignikaNegative-Regular",
//                                     fontSize: 19,
//                                     fontWeight: FontWeight.w400),
//                                 maxLines: 1,
//                               ),
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.only(top: 2, bottom: 5),
//                               child: Text("${pret[i + 1]} lei",
//                                   style: const TextStyle(fontSize: 18)),
//                             ),
//                           ],
//                         ),
//                       ]),
//                     ),
//                     const SizedBox(height: 20),
//                   ],
//                 ),
//                 const SizedBox(
//                   height: 20,
//                 )
//               ],
//             );
//           }),
//     );
//   }
// }
