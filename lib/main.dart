import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:scano/dat/scan_data.dart';
import 'package:scano/screens/camera_scan_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDateFormatting('id_ID');
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScanCamera(),
      debugShowCheckedModeBanner: false,
    );
    /*
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
    */
  }
}
