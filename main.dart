import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget{

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void initState(){
    super.initState();
    googleSignIn.signOut();
  }

//  final _auth = FirebaseAuth.instance;
//  final googleSignIn = GoogleSignIn();

  userGoogleSignIn() async{



      try {
        await googleSignIn.signIn().then((data){
          print(data.email);
//          assert();
          if(data.email != null){

          }
          print(data);
        });
      } catch (error) {
        print(error);
      }

//    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//    final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//
//    final AuthCredential credential = GoogleAuthProvider.getCredential(
//      accessToken: googleSignInAuthentication.accessToken,
//      idToken: googleSignInAuthentication.idToken,
//    );
//
//    final AuthResult authResult = await _auth.signInWithCredential(credential);
//    final FirebaseUser user = authResult.user;
//
//    assert(!user.isAnonymous);
//
//    assert(await user.getIdToken() != null);
//
//    final FirebaseUser currentUser = await _auth.currentUser();
//    assert(user.uid == currentUser.uid);
//
//    return 'SignInWithGoogle succeeded: $user';
  }

  userData() async{

  }

  availableUser() {

  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
//          color: Colors.black12,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 10,
                child: GestureDetector(
                  onTap: () {
                    userGoogleSignIn();
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 40.0),
                      ),
                      Image.asset("assets/google.png", height: 50, width: 50,),
                      Text("SIGN IN WITH GOOGLE"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}