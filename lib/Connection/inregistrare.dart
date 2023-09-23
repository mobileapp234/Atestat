// ignore_for_file: unused_local_variable, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:mobile_app/main.dart';
import 'google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class Logare extends StatefulWidget {
  const Logare({super.key});

  @override
  State<Logare> createState() => _LogareState();
}

bool whichpage = false;

class _LogareState extends State<Logare> with TickerProviderStateMixin {
  final TextEditingController _emailValue0 = TextEditingController();
  final TextEditingController _passwordValue0 = TextEditingController();
  bool _vizibility = true;

  void _toggleVizibility() {
    setState(() {
      _vizibility = !_vizibility;
    });
  }

  Color culoare0 = Colors.grey;
  Color culoare1 = Colors.grey;
  // ignore: non_constant_identifier_names
  void _ChangeColor00() {
    setState(() {
      culoare1 = Colors.grey;
      culoare0 = Colors.grey;
    });
  }

  // ignore: non_constant_identifier_names
  void _ChangeColor0() {
    setState(() {
      culoare0 = Colors.black54;
      culoare1 = Colors.grey;
    });
  }

  // ignore: non_constant_identifier_names
  void _ChangeColor1() {
    setState(() {
      culoare1 = Colors.black54;
      culoare0 = Colors.grey;
    });
  }

  FocusNode f0 = FocusNode();
  FocusNode f1 = FocusNode();
  final TextEditingController _emailValue1 = TextEditingController();
  final TextEditingController _passwordValue1 = TextEditingController();
  final TextEditingController _passwordValue2 = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;

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
  // ignore: non_constant_identifier_names
  void _ChangeColor000() {
    setState(() {
      color0 = Colors.grey;
      color1 = Colors.grey;
      color2 = Colors.grey;
    });
  }

 
  void _ChangeColor10() {
    setState(() {
      color0 = Colors.black54;
      color1 = Colors.grey;
      color2 = Colors.grey;
    });
  }
 
  void _ChangeColor11() {
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

  FocusNode f2 = FocusNode();

  final textcontoller = TextEditingController();

  late TabController tb;

  @override
  void initState() {
    super.initState();
    tb =
        TabController(animationDuration: Duration.zero, length: 2, vsync: this);
  }

  @override
  void dispose() {
    tb.dispose();
    super.dispose();
  }
  int verifypass(TextEditingController a, TextEditingController b){
if(a.value==b.value)return 1;
return 0;
  }
  void errorMessage0(){
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                    'Parola trebuie sa contina cel putin 6 caractere ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();
}
void errorMessage1(){
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                    'Emailul este deja folosit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();
}
void errorMessage2(){
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                    'Parolele nu corespund',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();
}
void errorMessage3(){
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                    'Utilizatorul nu a fost gasit',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();
}
void errorMessage4(){
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                    'Parola gresita',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken)),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: MediaQuery.of(context).size.width * 0.19),
            const Center(
              child: SizedBox(
                  child: AutoSizeText("Themis Bistro",
                      maxLines: 1,
                      style: TextStyle(
                        fontFamily: "RobotoMono-Regular",
                        fontSize: 35,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ))),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.2),
            TabBar(
              labelColor: Colors.white,
              isScrollable: true,
              controller: tb,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.grey,
              tabs: const [
                
                Tab(
                  child: Text("Sign Up",
                      style: TextStyle(
                        fontFamily: "SecularOne-Regular",
                        fontSize: 28,
                      )),
                ),
                Tab(
                    child: Text("Sign In",
                        style: TextStyle(
                          fontFamily: "SecularOne-Regular",
                          fontSize: 28,
                        ))),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              //width: MediaQuery.of(context).size.width * 0.64,

              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 1,
              child: TabBarView(
                controller: tb,
                // key: const Key("Sign up"),
                children: [
                 
                  SizedBox(
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
                              onTap: _ChangeColor10,
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
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 12),
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
                              onTap: _ChangeColor11,
                              style: const TextStyle(fontSize: 17),
                              obscureText: _vizibility1,
                              controller: _passwordValue1,
                              // textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility1,
                                    child: Icon(
                                      _vizibility1
                                          ? Icons.visibility_off
                                          : Icons.visibility,
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
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 12),
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
                                      _vizibility2
                                          ? Icons.visibility_off
                                          : Icons.visibility,
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
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 12),
                                  // filled: true,
                                  // fillColor: Colors.white,
                                  hintText: 'Repeat Password',
                                  border: InputBorder.none),
                            )),
                        const SizedBox(height: 40),
                        ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: Colors.blue)))),
                            onPressed: () async {
                              if(verifypass( _passwordValue2,  _passwordValue1)==1 ){
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .createUserWithEmailAndPassword(
                                  email: _emailValue1.text,
                                  password: _passwordValue1.text,
                                );

                                final User? user = userCredential.user;
                                final uid = user?.uid;
                                final email = user?.email;

                                if (uid != null) {
                                  // Save UID to Firestore
                                  await FirebaseFirestore.instance
                                      .collection('users')
                                      .doc(uid)
                                      .set({'uid': uid, 'email': email});
                                }
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                 
                                 errorMessage0();
                                  
                                  print('The password provided is too weak.');
                                } 
                                else if (e.code == 'email-already-in-use') {
                                errorMessage1();                     
                                  print('The account is already in use.');
                                }
                              } catch (e) {  
  AwesomeDialog(
            context: context,
            animType: AnimType.scale,
            dialogType: DialogType.error,
            body: Center(child: Text(
                   e.toString(),
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),),
            title: 'Eroare',
            desc:   'This is also Ignored',
            btnOkOnPress: () {},
            )..show();

                              }
                              }
                              else errorMessage4();
                              const Isconnected();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text("Creaza un cont".toUpperCase(),
                                  style: const TextStyle(fontSize: 15)),
                            )),
                        const SizedBox(height: 30),
                         GestureDetector(
                          onTap: () {
                      
;
                            print(1);
                            AuthGoogle().signInWithGoogleAndSaveUid();
                            
                            }
                              ,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
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
                        ),
                      ],
                    )),
                  ),








                  
                   SizedBox(
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
                              controller: _emailValue0,
                              keyboardType: TextInputType.emailAddress,
                              // textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: culoare0,
                                  ),
                                  contentPadding: const EdgeInsets.all(13),
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 12),
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
                                  _ChangeColor00();
                                });
                              },
                              focusNode: f1,
                              onTap: _ChangeColor1,
                              style: const TextStyle(fontSize: 17),
                              obscureText: _vizibility,
                              controller: _passwordValue0,
                              // textAlign: TextAlign.start,
                              decoration: InputDecoration(
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleVizibility,
                                    child: Icon(
                                      _vizibility
                                          ? Icons.visibility_off
                                          : Icons.visibility,
                                      color: culoare1,
                                    ),
                                  ),
                                  labelStyle: const TextStyle(
                                    color: Colors.white, //<-- SEE HERE
                                  ),
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: culoare1,
                                  ),
                                  contentPadding: const EdgeInsets.all(13),
                                  floatingLabelStyle:
                                      const TextStyle(fontSize: 12),
                                  // filled: true,
                                  // fillColor: Colors.white,
                                  hintText: 'Password',
                                  border: InputBorder.none),
                            )),
                        const SizedBox(height: 40),
                        ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        side: const BorderSide(
                                            color: Colors.blue)))),
                            onPressed: () async {
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: _emailValue0.text,
                                            password: _passwordValue0.text);
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                
                                errorMessage3();
                                } else if (e.code == 'wrong-password') {
                                  errorMessage4();
                                  print(
                                      'Wrong password provided for that user.');
                                }
                              }
                              const Isconnected();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(15),
                              child: Text("Login".toUpperCase(),
                                  style: const TextStyle(fontSize: 15)),
                            )),
                        const SizedBox(height: 30),
                        GestureDetector(
                          onTap: () =>
                              AuthGoogle().signInWithGoogleAndSaveUid(),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.white,
                            ),
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
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    ));
  }
}
