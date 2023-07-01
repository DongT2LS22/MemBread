
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gr1_flutter/widget/atoms/buttons/light_button.dart';

import '../../atoms/buttons/primary_button.dart';

class WelcomeButton extends StatelessWidget {
  const WelcomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          PrimaryButton(
              width: MediaQuery.of(context).size.width - 40,
              child: Center(
                  child: Text(
                    "GET STARTED",
                    style: Theme.of(context).textTheme.labelMedium,
                  ))),
          LightButton(
            width: MediaQuery.of(context).size.width - 40,
            child: Center(
              child: Text(
                "I ALREADY HAVE AN ACCOUNT",
                style: Theme.of(context).textTheme.displayMedium
              ),
            ),

          )
        ],
      ),
    );
  }
}
