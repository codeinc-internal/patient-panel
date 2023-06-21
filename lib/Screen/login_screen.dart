import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patient_panel/Screen/signup_screen.dart';
import 'package:patient_panel/widgets/navbar_roots.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool passToggle = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.asset("assets/doctors.png"),
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Username"),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Enter Password"),
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: InkWell(
                    onTap: () {
                      if (passToggle == true) {
                        passToggle = false;
                      } else {
                        passToggle = true;
                      }
                      setState(() {});
                    },
                    child: passToggle
                        ? Icon(CupertinoIcons.eye_slash_fill)
                        : Icon(CupertinoIcons.eye_fill),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xFF0000FF),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NavbarRoots(),
                        ),
                      );
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a account?",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                  },
                  child: Text(
                    "Create a account",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0000FF),
                    ),
                  ),
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
