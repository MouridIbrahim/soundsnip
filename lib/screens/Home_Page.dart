import 'package:flutter/material.dart';
import 'package:soundsnip/shared/StyledText.dart';
import 'package:soundsnip/themes.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledHeadline('Youtube to MP3')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: AppColors.textColor),
              decoration: InputDecoration(
                hintText: 'Enter YouTube URL',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ), 
                  borderSide:
                      BorderSide.none, 
                ),
                hintStyle: TextStyle(color: AppColors.lightText),

                filled: true,
                fillColor: AppColors.fourthColor,
              ),
              cursorColor: AppColors.textColor,
            ),
          ],
        ),
      ),
    );
  }
}
