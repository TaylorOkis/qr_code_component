import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/styles/colors.dart';
import '../../core/styles/constants.dart';

class QRScreen extends StatelessWidget {
  const QRScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Card(
          elevation: 10,
          shadowColor: AppColors.backgroundColor,
          color: AppColors.cardBackgroundColor,
          child: SizedBox(
            width: 320,
            height: 497,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: const Image(
                          image: AssetImage('assets/images/image-qr-code.png')),
                    ),
                  ),
                  normalSpacing,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: [
                        Text(
                          'Improve your front-end skills by buiding projects',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: AppColors.largeTextColor,
                          ),
                        ),
                        normalSpacing,
                        Text(
                          'Scan the QR code to visit Frontend Mentor and take your coding skills to the next level',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.outfit(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.smallTextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
