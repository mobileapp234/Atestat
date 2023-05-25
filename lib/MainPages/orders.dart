import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/product.dart';
import 'package:mobile_app/Widgets/show_qr_Code.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';

int nr_food1 = 1;
int final_price = 0;
List<String> orders = [];

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  bool isFinished = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "O R D E R S",
          style: TextStyle(fontSize: 20, fontFamily: "SignikaNegative-Regular"),
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          // Disable back button functionality
          return false;
        },
        child: Column(children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Product(
              nume: "Sanswich cu pui",
              pret: "12 lei",
              photo: "assets/images/1.jpg",
              nrproducts: 1),

          // Expanded(
          //   child: ListView.builder(

          //       // physics: const NeverScrollableScrollPhysics(),
          //       itemCount: 4,
          //       itemBuilder: (context, index1) {
          //         // setState(() {
          //         //   final_price += 10;
          //         // });
          //         return Column(
          //           children: [
          //             Container(
          //                 height: MediaQuery.of(context).size.height * 0.09,
          //                 width: MediaQuery.of(context).size.width * 0.9,
          //                 decoration: BoxDecoration(
          //                   color: Colors.white,
          //                   borderRadius: BorderRadius.circular(12),
          //                   boxShadow: const [
          //                     BoxShadow(
          //                       blurRadius: 5,
          //                       color: Color(0x230E151B),
          //                       offset: Offset(2, 0),
          //                     )
          //                   ],
          //                 ),
          //                 child: Row(
          //                   children: [
          //                     Padding(
          //                       padding: const EdgeInsets.all(8.0),
          //                       child: Container(
          //                         height:
          //                             MediaQuery.of(context).size.height * 0.2,
          //                         width:
          //                             MediaQuery.of(context).size.width * 0.2,
          //                         decoration: BoxDecoration(
          //                             borderRadius: BorderRadius.circular(10),
          //                             image: DecorationImage(
          //                                 image: AssetImage(
          //                                     "assets/images/steak1.jpg"))),
          //                       ),
          //                     ),
          //                     SizedBox(
          //                       width: MediaQuery.of(context).size.width * 0.03,
          //                     ),
          //                     Column(
          //                       mainAxisAlignment: MainAxisAlignment.center,
          //                       children: [
          //                         Text(
          //                           "Prajitura de mere",
          //                           style: TextStyle(
          //                               fontSize:
          //                                   MediaQuery.of(context).size.height *
          //                                           0.1 *
          //                                           MediaQuery.of(context)
          //                                               .size
          //                                               .width /
          //                                           1000 -
          //                                       20),
          //                         ),
          //                         Text(
          //                           "12 lei",
          //                           style: TextStyle(
          //                               fontSize:
          //                                   MediaQuery.of(context).size.height *
          //                                           0.1 *
          //                                           MediaQuery.of(context)
          //                                               .size
          //                                               .width /
          //                                           1000 -
          //                                       20),
          //                         )
          //                       ],
          //                     ),
          //                     Padding(
          //                       padding: const EdgeInsets.only(left: 20),
          //                       child: Row(
          //                         mainAxisAlignment: MainAxisAlignment.center,
          //                         children: [
          //                           GestureDetector(
          //                             onTap: () {
          //                               setState(() {
          //                                 if (nr_food1 > 1) nr_food1 -= 1;
          //                               });
          //                             },
          //                             child: Container(
          //                               height:
          //                                   MediaQuery.of(context).size.width *
          //                                       0.09,
          //                               width:
          //                                   MediaQuery.of(context).size.width *
          //                                       0.09,
          //                               decoration: BoxDecoration(
          //                                 borderRadius:
          //                                     BorderRadius.circular(30),
          //                                 color: Colors.blue,
          //                               ),
          //                               child: Icon(
          //                                 Icons.remove,
          //                                 color: Colors.white,
          //                               ),
          //                             ),
          //                           ),
          //                           Padding(
          //                             padding: const EdgeInsets.all(8.0),
          //                             child: Text(nr_food1.toString(),
          //                                 style: TextStyle(
          //                                     fontSize: MediaQuery.of(context)
          //                                                 .size
          //                                                 .height *
          //                                             0.1 *
          //                                             MediaQuery.of(context)
          //                                                 .size
          //                                                 .width /
          //                                             1000 -
          //                                         10)),
          //                           ),
          //                           GestureDetector(
          //                             onTap: () {
          //                               setState(() {
          //                                 nr_food1 += 1;
          //                               });
          //                             },
          //                             child: Container(
          //                               height:
          //                                   MediaQuery.of(context).size.width *
          //                                       0.09,
          //                               width:
          //                                   MediaQuery.of(context).size.width *
          //                                       0.09,
          //                               decoration: BoxDecoration(
          //                                 borderRadius:
          //                                     BorderRadius.circular(30),
          //                                 color: Colors.blue,
          //                               ),
          //                               child: Icon(
          //                                 Icons.add,
          //                                 color: Colors.white,
          //                               ),
          //                             ),
          //                           ),
          //                         ],
          //                       ),
          //                     ),
          //                   ],
          //                 )),
          //             SizedBox(
          //                 height: MediaQuery.of(context).size.height * 0.02),
          //           ],
          //         );
          //       }),
          // ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: SwipeableButtonView(
                  buttonText: "Send Rhe order for $final_price lei",
                  buttonWidget: Container(
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.grey,
                    ),
                  ),
                  activeColor: Color(0xff3398F6),
                  isFinished: isFinished,
                  onWaitingProcess: () {
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        isFinished = true;
                      });
                    });
                  },
                  onFinish: () async {
                    await Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: const ShowQrCode()));

                    setState(() {
                      isFinished = false;
                    });
                  })),
          // const Divider(
          //   height: 30,
          //   thickness: 2,
          //   indent: 25,
          //   endIndent: 25,
          // ),
        ]),
      ),
    );
  }
}
