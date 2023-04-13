import 'package:flutter/material.dart';

class ChooseFoodType extends StatefulWidget {
  const ChooseFoodType({super.key});

  @override
  State<ChooseFoodType> createState() => _ChooseFoodTypeState();
}

class _ChooseFoodTypeState extends State<ChooseFoodType> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        child:
            // Generated code for this ListView Widget...
            ListView(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 8, 0, 8),
              child: Container(
                width: 120,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x230E151B),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Icon(
                          Icons.soup_kitchen_sharp,
                          color: Color(0xFF57636C),
                          size: 44,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text('Ciorbe', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
              child: Container(
                width: 120,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x230E151B),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Icon(
                          Icons.food_bank_outlined,
                          color: Color(0xFF57636C),
                          size: 44,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text('Felul 2', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
              child: Container(
                width: 120,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x230E151B),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Icon(
                          Icons.cake_outlined,
                          color: Color(0xFF57636C),
                          size: 44,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text('Desert', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 8, 0, 8),
              child: Container(
                width: 120,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Color(0x230E151B),
                      offset: Offset(0, 2),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                        child: Icon(
                          Icons.wine_bar_outlined,
                          color: Color(0xFF57636C),
                          size: 44,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text('Bauturi', style: TextStyle(fontSize: 12)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}