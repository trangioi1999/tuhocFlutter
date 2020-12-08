import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:managergasuser/theme/colors.dart";

import 'home_page.dart';
class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: primaryColor,
      body: Container(
        alignment:Alignment.topCenter,
        margin:EdgeInsets.symmetric(horizontal:30),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Sign in to GAS THANH HUY and continue",
              textAlign: TextAlign.center,
                style: GoogleFonts.openSans(color: Colors.white,
                fontSize:28
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Enter your email and password below to continue to the The Growing Developer and let the learning begin!',
              textAlign: TextAlign.center,style:GoogleFonts.openSans(color:Colors.white,fontSize:14)
              ),
              SizedBox(height: 50,),
              _buildTextField(emailController, Icons.account_circle, 'Email'),
              SizedBox(height: 20,),
              _buildTextField(passwordController, Icons.lock, 'Password'),
              SizedBox(height: 30,),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed:() {
                  Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()));
                },
                color: loginGreen,
                child: Text('Login',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20,),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Colors.white,
                child: Text('Sign-in using Google',
                    style: TextStyle(color: Colors.black, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20,),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Colors.blue,
                child: Text('Sign-in using Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),
              SizedBox(height: 20,),
              MaterialButton(
                elevation: 0,
                minWidth: double.maxFinite,
                height: 50,
                onPressed: () {},
                color: Colors.red,
                child: Text('Sign-in with phone',
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                textColor: Colors.white,
              ),


              // _buildTextField(controller, icon, labelText)
            ],
          ),
        ),
      ),
    );
  }
  _buildTextField(
      TextEditingController controller, IconData icon, String labelText) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: secondaryColor, border: Border.all(color: Colors.blue)),
      child: TextField(
        controller: controller,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.white),
            icon: Icon(
              icon,
              color: Colors.white,
            ),
            // prefix: Icon(icon),
            border: InputBorder.none),
      ),
    );
  }
}