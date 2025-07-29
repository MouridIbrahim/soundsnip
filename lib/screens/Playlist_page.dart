import 'package:flutter/material.dart';
import 'package:soundsnip/shared/StyledText.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPageState();
}

class _PlaylistPageState extends State<PlaylistPage> {
  // Example list of installed sounds
  final List<Map<String, String>> installedSounds = [
    {'title': 'Sound 1', 'subtitle': 'Artist 1'},
    {'title': 'Sound 2', 'subtitle': 'Artist 2'},
    {'title': 'Sound 3', 'subtitle': 'Artist 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledHeadline('Installed Sounds'),leading: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView.builder(
          itemCount: installedSounds.length,
          itemBuilder: (context, index) {
            final sound = installedSounds[index];
            return Card(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: ListTile(
                leading: Icon(Icons.music_note),
                title: StyledText(sound['title'] ?? ''),
                subtitle: StyledText(sound['subtitle'] ?? ''),
                // You can add trailing icons or actions here
              ),
            );
          },
        ),
      ),
    );
  }
}
