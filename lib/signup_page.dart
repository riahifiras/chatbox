import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          centerTitle: true,
          elevation: 0.0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  const Color.fromRGBO(0, 0, 0, 1)),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0),
              child: const Column(
                children: [
                  SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    "Sign up with Email",
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Get chatting with friends and family today by signing up for or chat app!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(167, 167, 167, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your name",
                        style: TextStyle(
                            color: Color.fromRGBO(36, 120, 109, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                        ),
                        cursorColor: Colors.black,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Your email",
                        style: TextStyle(
                            color: Color.fromRGBO(36, 120, 109, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                        ),
                        cursorColor: Colors.black,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            color: Color.fromRGBO(36, 120, 109, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                        ),
                        cursorColor: Colors.black,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                            color: Color.fromRGBO(36, 120, 109, 1),
                            fontWeight: FontWeight.w500),
                      ),
                      TextField(
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue)),
                        ),
                        cursorColor: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
