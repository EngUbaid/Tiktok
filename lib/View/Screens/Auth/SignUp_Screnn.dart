import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/Auth/Login_Screen.dart';
import 'package:tiktk/View/widget/Buttons.dart';
import 'package:tiktk/View/widget/textformfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController usernamecontroler = TextEditingController();
    final TextEditingController emailcontroler = TextEditingController();
    final TextEditingController passwordcontroler = TextEditingController();

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Tik Tok",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: buttoncolor),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Create account",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1696361375520-7e3c219b9c84?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D'),
                  ),
                  Positioned(
                      bottom: -10,
                      left: 80,
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.add_a_photo)))
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Textinputfield(
                  controller: usernamecontroler,
                  labeltext: "Username",
                  hinttext: "Enter Username",
                  icon: Icons.person),
              SizedBox(
                height: 20,
              ),
              Textinputfield(
                  controller: emailcontroler,
                  labeltext: "Email",
                  hinttext: "Enter Email",
                  icon: Icons.email),
              SizedBox(
                height: 20,
              ),
              Textinputfield(
                  controller: passwordcontroler,
                  labeltext: "Password",
                  hinttext: "Enter Password",
                  icon: Icons.lock),
              SizedBox(
                height: 20,
              ),
              Buttons(tittle: "Sign Up", ontap: () {}, color: buttoncolor, wedth: 70,),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already  Have an Account ?",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ));
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(fontSize: 25, color: buttoncolor),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
