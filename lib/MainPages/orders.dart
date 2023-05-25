import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/product.dart';
import 'package:mobile_app/Widgets/show_qr_Code.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:page_transition/page_transition.dart';

import '../Widgets/menu1.dart';
import '../Widgets/menu2.dart';
import '../Widgets/menu3.dart';

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
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            width: MediaQuery.of(context).size.height * 1,
            child: ListView(
              children: [
                for (var i = 0; i <= 5; i++)
                  if (nr_products[i] > 0)
                    Product(
                      nume: name[i],
                      pret: price[i],
                      photo: image[i],
                      nrproducts: nr_products[i],
                      index: i,
                      categ: 0,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products1[i] > 0)
                    Product(
                      nume: name1[i],
                      pret: price1[i],
                      photo: image1[i],
                      nrproducts: nr_products1[i],
                      index: i,
                      categ: 1,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products2[i] > 0)
                    Product(
                      nume: name2[i],
                      pret: price2[i],
                      photo: image2[i],
                      nrproducts: nr_products2[i],
                      index: i,
                      categ: 2,
                    ),
                for (var i = 0; i <= 5; i++)
                  if (nr_products3[i] > 0)
                    Product(
                      nume: name3[i],
                      pret: price3[i],
                      photo: image3[i],
                      nrproducts: nr_products3[i],
                      index: i,
                      categ: 3,
                    ),
              ],
            ),
          ),

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
