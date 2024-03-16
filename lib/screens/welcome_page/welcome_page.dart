import 'package:flutter/material.dart';
import 'package:gr1_flutter/widget/atoms/logo/logo.dart';
import 'package:gr1_flutter/widget/molecules/welcome_button/welcome_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        leading: Container(),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Hi there! I'm Bread",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Center(
                child: MemBreadLogo(
                  size: 70,
                ),
              ),
              Text(
                "Let's eat memory bread",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const WelcomeButton()
            ],
          )),
    );
  }
}
