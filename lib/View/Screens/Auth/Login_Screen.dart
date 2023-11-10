import 'package:flutter/material.dart';
import 'package:tiktk/Constant.dart';
import 'package:tiktk/View/Screens/bottom_navigaationScren/All_Navigation_Screen/navigation_Bar.dart';
import 'package:tiktk/View/widget/Buttons.dart';
import 'package:tiktk/View/widget/textformfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                "LOG IN",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
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
              Buttons(tittle: "Log in", ontap: () {}, color: buttoncolor,
              wedth: 70,),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have an Account ?",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                         Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Allnavigation();
                          },
                        ));
                      },
                      child: Text(
                        "Sign Up",
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
