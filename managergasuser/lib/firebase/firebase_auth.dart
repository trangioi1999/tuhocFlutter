// import 'dart:core';
//
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_database/firebase_database.dart';
//
// class Firebase_Auth {
// final FirebaseAuth _fireBaseAuth = FirebaseAuth.instance;
//
//   //Sign up user on Firebase
//   Future<void> signUp(String email, String password, String name, String phone,Function onSuccess, Function(String) onRegisterError)  async{
//     await _fireBaseAuth.createUserWithEmailAndPassword(email: email, password: password)
//     .then((user) {
//       print("Sign Up Success");
//     //todo
//     }).catchError((err) {
//       //todo
//     });
//   }
//
//   //SignIn user with email & password
//
//   Future<void> signIn(String email, String password, Function onSuccess, Function(String) onSignInError) async {
//     await _fireBaseAuth.signInWithEmailAndPassword(email: email, password: password)
//     .then((user) {
//       print("Gioi dep trai");
//       onSuccess();
//       //todo
//     }).catchError((err) {
//       //todo
//     });
//   }
//
//   //create user
//   Function<void> _createUser(
//     String userId,
//     String email,
//     String password,
//     String phone,
//     String name,
//     Function onSuccess,
//     Function(String) onError,
//        ) async {
//          var user = Map<String,String>();
//          user["email"] = email;
//          user["password"] = password;
//          user["phone"] = phone;
//          user["name"] = name;
//          var ref = await FirebaseDatabase.instance.reference().child("users");
//          ref.child(userId).set(user).then((user) {
//            print("Signup success");
//            onSuccess();
//          }).catchError((err) {});
//        }
//
//
//
// }
