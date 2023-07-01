import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MemBreadLogo extends StatelessWidget {
  double size;
  MemBreadLogo({Key? key,this.size = 12}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "MEM",
          style: GoogleFonts.indieFlower(
              textStyle: TextStyle(
                  fontSize: size+3,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor,letterSpacing: 15)),
        ),
        Text(
          "BREAD",
          style: GoogleFonts.indieFlower(
              textStyle: TextStyle(
                  fontSize: size,
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }
}
