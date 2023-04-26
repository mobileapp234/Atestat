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

  Color culoare0 = Colors.grey;
  Color culoare1 = Colors.grey;
  void _ChangeColor0() {
    setState(() {
      culoare0 = Colors.black54 as Color;
      culoare1 = Colors.grey as Color;
    });
  }

  void _ChangeColor1() {
    setState(() {
      culoare1 = Colors.black54 as Color;
      culoare0 = Colors.grey as Color;
    });
  }

  FocusNode myFocusNode = new FocusNode();
//   myFocusNode.addListener(() {
//   setState(() {});
// });
  // @override
  // void dispose() {
  //   myFocusNode.dispose();
  //   super.dispose();
  // }

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
                onTap: _ChangeColor0,
                focusNode: myFocusNode,

                style: TextStyle(fontSize: 17),
                controller: _emailValue1,
                keyboardType: TextInputType.emailAddress,
                // textAlign: TextAlign.start,
                decoration: InputDecoration(
                    labelStyle: TextStyle(
                        color: myFocusNode.hasFocus ? Colors.red : Colors.pink),
                    prefixIcon: Icon(
                      Icons.email,
                      color: culoare0,
                    ),
                    contentPadding: EdgeInsets.all(13),
                    floatingLabelStyle: TextStyle(fontSize: 12),
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
              child: TextField(
                onTap: _ChangeColor1,
                style: TextStyle(fontSize: 17),
                obscureText: _vizibility,
                controller: _passwordlValue1,
                // textAlign: TextAlign.start,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                      onTap: _toggleVizibility,
                      child: Icon(
                        _vizibility ? Icons.visibility_off : Icons.visibility,
                        color: culoare1,
                      ),
                    ),
                    labelStyle: TextStyle(
                      color: Colors.white, //<-- SEE HERE
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: culoare1,
                    ),
                    contentPadding: EdgeInsets.all(13),
                    floatingLabelStyle: TextStyle(fontSize: 12),
                    // filled: true,
                    // fillColor: Colors.white,
                    hintText: 'Password',
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
