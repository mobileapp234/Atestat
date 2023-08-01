import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/Globals_Variables.dart' as ind;
import 'package:mobile_app/Widgets/food_page.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

List<String> menu_day_name = ["Meniu"];
List<String> menu_day_photo = ["assets/png/menu.png"];
List<int> menu_day_price = [25];
List<String> image = [
  "assets/images/1.jpg",
  "assets/images/2.jpg",
  "assets/images/3.jpg",
  "assets/images/4.jpg",
  "assets/images/5.jpg",
  "assets/images/istockphoto-614135148-612x612.jpg",
];

List<String> name = [
  "Sandwich cu puiiiii",
  "Sandwich 2",
  "Sandwich 3",
  "Sandwich 4",
  "Sandwich 5",
  "Sandwich 6",
];
List<int> price = [
  12,
  33,
  15,
  19,
  20,
  12,
];

// ignore: non_constant_identifier_names
int nr_menu = 0;
List<int> nr_products = [0, 0, 0, 0, 0, 0];
List<String> calories = ['250', '320', '280', '350', '400', '290'];
List<String> protein = ['10', '15', '12', '18', '20', '14'];
List<String> fats = ['8', '12', '10', '15', '18', '11'];
List<String> carbs = ['35', '40', '30', '45', '50', '38'];
List<String> ingredients = [
  "•Faina\n•Cacao\n•3 ora\n•Praf de copt\n•Ciocolata\n•Esenta de vanilie\n•Fructe de padure",
  "•Sliced turkey breast\n•Lettuce\n•Tomato\n•Mayonnaise\n•Mustard\n•Sliced cheese (such as cheddar or Swiss)\n•Sliced bread",
  "•Fresh mozzarella cheese\n•Tomato\n•Fresh basil leaves\n•Extra virgin olive oil\n•Balsamic glaze/reduction\n•Salt and pepper\n•Baguette or ciabatta bread",
  "•Bacon\n•Lettuce\n•Tomato\n•Mayonnaise\n•Sliced bread (toasted, if desired)",
  "•Hummus\n•Sliced cucumbers\n•Sliced bell peppers\n•Shredded carrots\n•Sliced avocado\n•Spinach or lettuce leaves\n•Tortilla wrap (whole wheat, spinach, or your preference)",
  "•Grilled chicken breast\n•Romaine lettuce\n•Caesar dressing\n•Shredded Parmesan cheese\n•Sliced bread (ciabatta or French baguette)"
];

class _MenuState extends State<Menu> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView.builder(
            itemCount: 3,
            itemBuilder: (BuildContext ctxt, i) {
              if (i > 0) i++;
              if (i > 2) i++;
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            ind.food = i;
                            ind.course_index = 0;
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FoodPage()));
                        },
                        child: Container(
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
                                        image: AssetImage(image[i]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: AutoSizeText(
                                    name[i],
                                    style: const TextStyle(
                                        fontFamily: "SignikaNegative-Regular",
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, bottom: 5),
                                  child: Text("${price[i]} lei",
                                      style: const TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            ind.food = i + 1;
                            ind.course_index = 0;
                          });
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const FoodPage()));
                        },
                        child: Container(
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
                                        image: AssetImage(image[i + 1]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 12,
                                  ),
                                  child: AutoSizeText(
                                    name[i + 1],
                                    style: const TextStyle(
                                        fontFamily: "SignikaNegative-Regular",
                                        fontSize: 19,
                                        fontWeight: FontWeight.w400),
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 2, bottom: 5),
                                  child: Text("${price[i + 1]} lei",
                                      style: const TextStyle(fontSize: 18)),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02)
                ],
              );
            }));
  }
}
