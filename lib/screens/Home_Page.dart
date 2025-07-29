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
        child: ListView(
          children: [
            TextField(
              style: TextStyle(color: AppColors.textColor),
              decoration: InputDecoration(
                hintText: 'Enter YouTube URL',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(color: AppColors.lightText),
                filled: true,
                fillColor: AppColors.fourthColor,
              ),
              cursorColor: AppColors.textColor,
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle download action
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.textColor,
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Convert'),
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle convert action
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: AppColors.textColor,
                      backgroundColor: AppColors.fourthColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text('Download'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: StyledHeadline('Conversion History'),
            ),
            SizedBox(height: 10.0),
            // List of conversions
            ...List.generate(10, (index) {
              return Card(
                color: AppColors.secondaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      color: AppColors.fourthColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 48,
                    height: 48,
                    child: Icon(Icons.music_note,
                        color: AppColors.textColor, size: 28),
                  ),
                  title: StyledText('Converted Video ${index + 1}'),
                  subtitle: StyledText('Video Title ${index + 1}'),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
