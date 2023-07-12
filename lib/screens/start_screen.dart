import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onContinue});

  final VoidCallback onContinue;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Opacity(
          opacity: 0.1,
          child: Image.asset(
            'assets/images/movieflix-logo.png',
            width: 300,
          ),
        ),
        const SizedBox(height: 80),
        Text(
          "Moviefilx",
          style: GoogleFonts.poppins(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const Text.rich(
          TextSpan(
            text: 'Discover the Blockbusters: ',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            children: [
              TextSpan(
                text: 'Unveiling the Greatest Movies of the 2010s',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        OutlinedButton.icon(
          onPressed: onContinue,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
          icon: const Icon(Icons.arrow_forward_sharp),
          label: const Text('Continue'),
        ),
      ]),
    );
  }
}
