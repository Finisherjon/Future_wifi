import 'package:flutter/material.dart';
import 'package:future_wifi_code/adjust_size.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'login_screen.dart';

class IntroPageScreen extends StatefulWidget {
  const IntroPageScreen({super.key});

  @override
  State<IntroPageScreen> createState() => _IntroPageScreenState();
}

class _IntroPageScreenState extends State<IntroPageScreen> {
  PageController _controller = PageController();

  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  isLastPage = index == 4;
                });
              },
              children: [
                _introPage1(context),
                _introPage2(context),
                _introPage3(context),
                _introPage4(context),
                _introPage5(context),
              ],
            ),
            Container(
              alignment: Alignment(0, 0.80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      _controller.jumpToPage(4);
                    },
                    child: Text("Skip", style: TextStyle(color: Colors.white)),
                  ),
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 5,
                    effect: WormEffect(activeDotColor: Colors.lightGreenAccent),
                  ),
                  isLastPage
                      ? TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Done",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                      : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          );
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _introPage1(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Welcome!",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 10),
              child: Text(
                "Now you have full and easy control over your WiFi network.",
                style: Theme.of(context).textTheme.bodyLarge,
                // textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.1),
            Lottie.asset("assets/Internet Device.json"),
          ],
        ),
      ),
    );
  }

  _introPage2(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Guest WiFi",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 10),
              child: Text(
                "Create a secure and separate internet connection for your guests.",
                style: Theme.of(context).textTheme.bodyLarge,
                // textAlign: TextAlign.center,
              ),
            ),
            Center(child: Lottie.asset("assets/guest.json")),
          ],
        ),
      ),
    );
  }

  _introPage3(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Set Limits",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 10),
              child: Text(
                "Restrict users by MB, time, or block access to specific sites.",
                style: Theme.of(context).textTheme.bodyLarge,
                // textAlign: TextAlign.center,
              ),
            ),
            Center(child: Lottie.asset("assets/limit.json")),
          ],
        ),
      ),
    );
  }

  _introPage4(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Manage Devices",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 10),
              child: Text(
                "See connected users and instantly remove unwanted devices.",
                style: Theme.of(context).textTheme.bodyLarge,
                // textAlign: TextAlign.center,
              ),
            ),
            Center(child: Lottie.asset("assets/manageDevices.json")),
          ],
        ),
      ),
    );
  }

  _introPage5(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Full Settings",
                style: Theme.of(context).textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: Sizes.heights(context) * 0.01),
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 10),
              child: Text(
                "Change WiFi name, password, and all other settings anytime.",
                style: Theme.of(context).textTheme.bodyLarge,
                // textAlign: TextAlign.center,
              ),
            ),
            Center(child: Lottie.asset("assets/Infographics.json")),
          ],
        ),
      ),
    );
  }
}
