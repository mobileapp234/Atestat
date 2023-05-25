import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';

class Product extends StatefulWidget {
  final String nume;
  final int pret;
  final String photo;
  final int nrproducts;
  final int index;
  final int categ;
  const Product(
      {required this.nume,
      required this.pret,
      required this.photo,
      required this.nrproducts,
      required this.index,
      required this.categ});

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int nr_food1 = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height * 0.09,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 5,
                  color: Color(0x230E151B),
                  offset: Offset(2, 0),
                )
              ],
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image:
                            DecorationImage(image: AssetImage(widget.photo))),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      widget.nume,
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height *
                                  0.1 *
                                  MediaQuery.of(context).size.width /
                                  1000 -
                              15),
                    ),
                    Text(
                      " ${widget.pret} lei",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height *
                                  0.1 *
                                  MediaQuery.of(context).size.width /
                                  1000 -
                              15),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (nr_food1 > 1) nr_food1 -= 1;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.09,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                            (widget.categ == 0
                                ? nr_products[widget.index].toString()
                                : widget.categ == 1
                                    ? nr_products1[widget.index].toString()
                                    : widget.categ == 2
                                        ? nr_products2[widget.index].toString()
                                        : widget.categ == 3
                                            ? nr_products3[widget.index]
                                                .toString()
                                            : ""),
                            style: TextStyle(
                                fontSize: MediaQuery.of(context).size.height *
                                        0.1 *
                                        MediaQuery.of(context).size.width /
                                        1000 -
                                    10)),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            nr_food1 += 1;
                          });
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 0.09,
                          width: MediaQuery.of(context).size.width * 0.09,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                          ),
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),
      ],
    );
  }
}
