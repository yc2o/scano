import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scano/dat/scan_data.dart';
import 'package:scano/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.tertiary, // Light green background
      appBar: AppBar(
        title: const Text(
          'SCANNO!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: AppColors.primary, // Light blue app bar
        elevation: 0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
          
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: 6, // Number of document cards
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Row(
                      children: [
                        const Text(
                          '30-02-2025',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 12),
                        const Text(
                          'Document Title',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.error_outline,
                          color: Colors.red[300],
                        ),
                      ],
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'I stay out too late Got nothing in my brain That\'s what people say, mm-mm I go on too many dates, But I can\'t mak...',
                        style: TextStyle(
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        margin: const EdgeInsets.only(bottom: 16),
        child: FloatingActionButton(
          backgroundColor: Colors.pink[100],
          child: const Icon(
            Icons.camera_alt,
            size: 32,
            color: Colors.black87,
          ),
          onPressed: () {
            // Add camera functionality here
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}