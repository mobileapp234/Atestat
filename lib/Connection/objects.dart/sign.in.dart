import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController _emailValue1 = TextEditingController();
  final TextEditingController _passwordlValue1 = TextEditingController();
  bool _vizibility = true;
  void _toggleVizibility() {
    setState(() {
      _vizibility = !_vizibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
          child: Column(
        children: [
          Container(
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: TextField(
                // focusNode: myFocusNode,
                controller: _emailValue1,
                decoration: const InputDecoration(
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: '  Email Address',
                    border: InputBorder.none),
              )),
          const SizedBox(height: 20),
          TextFormField(
            autofocus: false,
            // autovalidateMode: AutovalidateMode.always,
            controller: _passwordlValue1,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(10),
                filled: true,
                fillColor: Colors.white,
                hintText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: _toggleVizibility,
                  child: Icon(
                      _vizibility ? Icons.visibility_off : Icons.visibility),
                ),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    borderSide: BorderSide(color: Colors.white))),
            obscureText: _vizibility,
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
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Login".toUpperCase(),
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
