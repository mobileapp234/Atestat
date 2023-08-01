// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/menu.dart';
import 'package:mobile_app/Widgets/menu1.dart';
import 'package:mobile_app/Widgets/menu2.dart';
import 'package:mobile_app/Widgets/menu3.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Product extends StatefulWidget {
  final String nume;
  final int pret;
  final String photo;
  final int nrproducts;
  final int index;
  final int categ;
  const Product(
      {super.key,
      required this.nume,
      required this.pret,
      required this.photo,
      required this.nrproducts,
      required this.index,
      required this.categ});

  @override
  // ignore: library_private_types_in_public_api
  _ProductState createState() => _ProductState();
}

// int _counter = 0;
// Key _pageKey = UniqueKey();

class _ProductState extends State<Product> {
  // ignore: non_constant_identifier_names
  int nr_food1 = 1;
  @override
  Widget build(BuildContext context) {
    return (nr_products[widget.index] == 0 && widget.categ == 0) ||
            (nr_products1[widget.index] == 0 && widget.categ == 1) ||
            (nr_products2[widget.index] == 0 && widget.categ == 2) ||
            (nr_products3[widget.index] == 0 && widget.categ == 3) ||
            (nr_menu == 0 && widget.categ == 10)
        ? const SizedBox(height: 0)
        : Column(
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
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(widget.photo))),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 1,
                            child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    AutoSizeText(
                                      widget.nume,
                                      style: TextStyle(fontSize: 20),
                                      maxLines: 1,
                                    ),
                                    AutoSizeText(
                                      (widget.categ == 0
                                              ? "${widget.pret * nr_products[widget.index]} lei"
                                              : widget.categ == 1
                                                  ? "${widget.pret * nr_products1[widget.index]} lei"
                                                  : widget.categ == 2
                                                      ? "${widget.pret * nr_products2[widget.index]} lei"
                                                      : widget.categ == 3
                                                          ? "${widget.pret * nr_products3[widget.index]} lei"
                                                          : widget.categ == 10
                                                              ? "${widget.pret * nr_menu} lei"
                                                              : Text(""))
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.05),
                                      maxLines: 1,
                                    )
                                  ],
                                )),
                          ),
                        ),
                        Row(
                          //  mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (nr_products[widget.index] == 1) {}
                                  switch (widget.categ) {
                                    case 0:
                                      nr_products[widget.index] -= 1;

                                      ind.nr_products -= 1;

                                      break;
                                    case 1:
                                      nr_products1[widget.index] -= 1;
                                      ind.nr_products -= 1;

                                      break;
                                    case 2:
                                      nr_products2[widget.index] -= 1;
                                      ind.nr_products -= 1;

                                      break;
                                    case 3:
                                      nr_products3[widget.index] -= 1;
                                      ind.nr_products -= 1;

                                      break;
                                    case 10:
                                      nr_menu -= 1;
                                      ind.nr_products -= 1;
                                      break;
                                  }
                                });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.09,
                                width: MediaQuery.of(context).size.width * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: nr_products[widget.index] == 1
                                        ? Colors.red
                                        : nr_products1[widget.index] == 1
                                            ? Colors.red
                                            : nr_products2[widget.index] == 1
                                                ? Colors.red
                                                : nr_products3[widget.index] ==
                                                        1
                                                    ? Colors.red
                                                    : nr_menu == 1
                                                        ? Colors.red
                                                        : nr_products[widget
                                                                    .index] >
                                                                1
                                                            ? Colors.blue
                                                            : nr_products1[widget
                                                                        .index] >
                                                                    1
                                                                ? Colors.blue
                                                                : nr_products2[widget
                                                                            .index] >
                                                                        1
                                                                    ? Colors
                                                                        .blue
                                                                    : nr_products3[widget.index] >
                                                                            1
                                                                        ? Colors
                                                                            .blue
                                                                        : nr_menu >
                                                                                1
                                                                            ? Colors.blue
                                                                            : Colors.blue),
                                child: const Icon(
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
                                          ? nr_products1[widget.index]
                                              .toString()
                                          : widget.categ == 2
                                              ? nr_products2[widget.index]
                                                  .toString()
                                              : widget.categ == 3
                                                  ? nr_products3[widget.index]
                                                      .toString()
                                                  : widget.categ == 10
                                                      ? nr_menu.toString()
                                                      : ""),
                                  style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.height *
                                                  0.1 *
                                                  MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1000 -
                                              20)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  switch (widget.categ) {
                                    case 0:
                                      nr_products[widget.index] += 1;
                                      ind.nr_products += 1;
                                      break;
                                    case 1:
                                      nr_products1[widget.index] += 1;
                                      ind.nr_products += 1;
                                      break;
                                    case 2:
                                      nr_products2[widget.index] += 1;
                                      ind.nr_products += 1;
                                      break;
                                    case 3:
                                      nr_products3[widget.index] += 1;
                                      ind.nr_products += 1;
                                      break;
                                    case 10:
                                      nr_menu++;
                                      ind.nr_products++;
                                      break;
                                  }
                                });
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 0.09,
                                width: MediaQuery.of(context).size.width * 0.09,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.blue),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ],
          );
  }
}
