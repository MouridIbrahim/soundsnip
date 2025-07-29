import 'package:flutter/material.dart';
import 'package:soundsnip/shared/StyledText.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  // Example list of downloads
  List<Map<String, dynamic>> downloads = [
    {'title': 'Song 1', 'progress': 0.0, 'isDownloading': true},
    {'title': 'Song 2', 'progress': 0.0, 'isDownloading': true},
    {'title': 'Song 3', 'progress': 0.0, 'isDownloading': true},
  ];

  @override
  void initState() {
    super.initState();
    // Simulate download progress for each item
    for (int i = 0; i < downloads.length; i++) {
      _simulateDownload(i);
    }
  }

  void _simulateDownload(int index) async {
    while (downloads[index]['progress'] < 1.0) {
      await Future.delayed(const Duration(milliseconds: 300));
      setState(() {
        downloads[index]['progress'] += 0.1;
        if (downloads[index]['progress'] >= 1.0) {
          downloads[index]['progress'] = 1.0;
          downloads[index]['isDownloading'] = false;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: StyledHeadline('Downloads'),leading: Icon(Icons.arrow_back),),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: downloads.length,
        itemBuilder: (context, index) {
          final download = downloads[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 12),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledText(download['title']),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: download['progress'],
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StyledText(
                        download['isDownloading']
                            ? 'Downloading...'
                            : 'Download Complete!',
                      ),
                      StyledText(
                        '${(download['progress'] * 100).toStringAsFixed(0)}%',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
