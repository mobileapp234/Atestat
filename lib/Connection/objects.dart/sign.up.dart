import 'package:flutter/material.dart';

import '../../MainPages/main_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailValue2 = TextEditingController();

  final TextEditingController _passwordlValue2 = TextEditingController();
  final TextEditingController _passwordlValue3 = TextEditingController();

  bool _vizibility0 = true;
  void _toggleVizibility0() {
    setState(() {
      _vizibility0 = !_vizibility0;
    });
  }

  bool _vizibility1 = true;
  void _toggleVizibility1() {
    setState(() {
      _vizibility1 = !_vizibility1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        children: [
          TextField(
            //onTap: (int index){},
            controller: _emailValue2,
            expands: false,
            maxLines: 1,
            decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Email Address',
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white))),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordlValue2,
            expands: false,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: _toggleVizibility0,
                  child: Icon(
                      _vizibility0 ? Icons.visibility_off : Icons.visibility),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white))),
            obscureText: _vizibility0,
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _passwordlValue3,
            expands: false,
            maxLines: 1,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Confirm Password',
                suffixIcon: GestureDetector(
                  onTap: _toggleVizibility1,
                  child: Icon(
                      _vizibility1 ? Icons.visibility_off : Icons.visibility),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white))),
            obscureText: _vizibility1,
          ),
          const SizedBox(height: 40),
          ElevatedButton(
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                          side: const BorderSide(color: Colors.blue)))),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MainPage()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Create Account".toUpperCase(),
                    style: const TextStyle(fontSize: 15)),
              )),
          const SizedBox(height: 30),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/png/google.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.white),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/png/apple.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                        child: SizedBox(
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
