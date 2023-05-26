import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthGoogle {
  Future<UserCredential> signInWithGoogleAndSaveUid() async {
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );

    final UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

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

    return userCredential;
  }
}
