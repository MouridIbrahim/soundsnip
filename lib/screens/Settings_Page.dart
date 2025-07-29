import 'package:flutter/material.dart';
import 'package:soundsnip/shared/StyledText.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledHeadline('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StyledTitle('Preferences'),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      title: StyledText('Theme'),
                      trailing: DropdownButton<String>(
                        value: 'Light',
                        underline: SizedBox(), // This removes the line under the selected value
                        items: <String>['Light', 'Dark'].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          // Handle theme change
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}