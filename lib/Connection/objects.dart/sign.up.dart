import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../MainPages/main_page.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _emailValue1 = TextEditingController();
  final TextEditingController _passwordValue1 = TextEditingController();
  final TextEditingController _passwordValue2 = TextEditingController();
  FirebaseAuth auth = FirebaseAuth.instance;

  bool _vizibility1 = true;
  void _toggleVizibility1() {
    setState(() {
      _vizibility1 = !_vizibility1;
    });
  }

  bool _vizibility2 = true;
  void _toggleVizibility2() {
    setState(() {
      _vizibility2 = !_vizibility2;
    });
  }

  Color color0 = Colors.grey;
  Color color1 = Colors.grey;
  Color color2 = Colors.grey;
  void _ChangeColor000() {
    setState(() {
      color0 = Colors.grey;
      color1 = Colors.grey;
      color2 = Colors.grey;
    });
  }

  void _ChangeColor0() {
    setState(() {
      color0 = Colors.black54;
      color1 = Colors.grey;
      color2 = Colors.grey;
    });
  }

  void _ChangeColor1() {
    setState(() {
      color1 = Colors.black54;
      color0 = Colors.grey;
      color2 = Colors.grey;
    });
  }

  void _ChangeColor2() {
    setState(() {
      color2 = Colors.black54;
      color1 = Colors.grey;
      color0 = Colors.grey;
    });
  }

  FocusNode f0 = FocusNode();
  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
          child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  setState(() {
                    FocusScope.of(context).requestFocus(f1);
                    _ChangeColor1();
                  });
                },
                onTap: _ChangeColor0,
                focusNode: f0,

                style: const TextStyle(fontSize: 17),
                controller: _emailValue1,
                keyboardType: TextInputType.emailAddress,
                // textAlign: TextAlign.start,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: color0,
                    ),
                    contentPadding: const EdgeInsets.all(13),
                    floatingLabelStyle: const TextStyle(fontSize: 12),
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: 'Email Address',
                    border: InputBorder.none),
              )),
          const SizedBox(height: 20),
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  setState(() {
                    FocusScope.of(context).requestFocus(f2);
                    _ChangeColor2();
                  });
                },
                focusNode: f1,
                onTap: _ChangeColor1,
                style: const TextStyle(fontSize: 17),
                obscureText: _vizibility1,
                controller: _passwordValue1,
                // textAlign: TextAlign.start,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: _toggleVizibility1,
                      child: Icon(
                        _vizibility1 ? Icons.visibility_off : Icons.visibility,
                        color: color1,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.white, //<-- SEE HERE
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: color1,
                    ),
                    contentPadding: const EdgeInsets.all(13),
                    floatingLabelStyle: const TextStyle(fontSize: 12),
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: 'Password',
                    border: InputBorder.none),
              )),
          const SizedBox(height: 20),
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  color: Colors.white54.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10)),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  setState(() {
                    _ChangeColor000();
                  });
                },
                focusNode: f2,
                onTap: _ChangeColor2,
                style: const TextStyle(fontSize: 17),
                obscureText: _vizibility2,
                controller: _passwordValue2,
                // textAlign: TextAlign.start,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: _toggleVizibility2,
                      child: Icon(
                        _vizibility2 ? Icons.visibility_off : Icons.visibility,
                        color: color2,
                      ),
                    ),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: color2,
                    ),
                    contentPadding: const EdgeInsets.all(13),
                    floatingLabelStyle: const TextStyle(fontSize: 12),
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: 'Repeat Password',
                    border: InputBorder.none),
              )),
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
                SignUp();
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Create account".toUpperCase(),
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
                      padding: EdgeInsets.all(8),
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
