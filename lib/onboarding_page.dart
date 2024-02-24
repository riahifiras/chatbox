import 'package:flutter/material.dart';
import 'package:message/signup_page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(26, 26, 26, 1),
        centerTitle: true,
        elevation: 0.0,
        title: const Text(
          "Chatbox",
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Container(
        color: const Color.fromRGBO(26, 26, 26, 1),
        padding: const EdgeInsets.only(
            left: 16.0,
            right: 26.0), // Add padding to separate content from edges
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Connect friends",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
                fontSize: 74,
                height: 1.2,
              ),
            ),
            const Text(
              "easily & quickly",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 74,
                height: 1.2,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Our chat app is the perfect way to stay connected with friends and family.",
              style: TextStyle(color: Color.fromRGBO(185, 193, 190, 1)),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white70, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic
                    },
                    icon: const Icon(Icons.facebook),
                    color: Colors.blue, // Icon color
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white70, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic
                    },
                    icon: const Icon(Icons.bluetooth),
                    color: Colors.blue, // Icon color
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white70, // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Your onPressed logic
                    },
                    icon: const Icon(Icons.apple),
                    color: Colors.blue, // Icon color
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Row(
              children: [
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(205, 209, 208, 1),
                    thickness: 0.6,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Or',
                    style: TextStyle(
                      color: Color.fromRGBO(214, 228, 224, 1),
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: Color.fromRGBO(205, 209, 208, 1),
                    thickness: 0.6,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            TextButton(
              onPressed: () {
                print("hii");
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SignupPage(title: 'SignupPage');
                }));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    const Color.fromRGBO(255, 255, 255, 1)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        10.0), // Adjust the border radius as needed
                  ),
                ),
                minimumSize:
                    MaterialStateProperty.all(const Size(double.infinity, 48)),
              ),
              child: const Text(
                "Sign up with an e-mail",
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Existing account?",
                  style: TextStyle(color: Color.fromRGBO(185, 193, 190, 1)),
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors
                            .transparent; // Set overlay color to transparent
                      },
                    ),
                    tapTargetSize: MaterialTapTargetSize
                        .shrinkWrap, // Remove the default tap target size
                  ),
                  child: const SizedBox(
                    width: 39, // Adjust width as needed
                    child: Text(
                      "Log in",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
