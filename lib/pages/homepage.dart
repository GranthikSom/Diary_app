import 'dart:ui';

import 'package:dairyhelper/features/bottombar.dart';
import 'package:dairyhelper/features/drawer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text("Dear Diary", style: GoogleFonts.pacifico(fontSize: 24)),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.0),
      ),
      drawer: const MyDrawer(),

      body: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 32.0, sigmaY: 32.0),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 350,
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(color: Colors.grey.shade900),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: const Bottombar(),
    );
  }
}
