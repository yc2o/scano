import 'package:flutter/material.dart';
import 'package:scano/theme/app_colors.dart';
import 'Widget/DashedBorderPainter.dart';
import 'package:dotted_border/dotted_border.dart';
class ScanCamera extends StatelessWidget {
  const ScanCamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE8E9F3), // Light purple/blue background
      appBar: AppBar(
        backgroundColor: AppColors.senary,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Scan Document',
          style: TextStyle(
            color: Colors.black,
            fontSize: 32,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
  children: [
    Expanded(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: AppColors.black,
              width: 4,
            ),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              // Dotted border container
              Padding(
                padding: const EdgeInsets.all(12),
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(8),
                  dashPattern: const [6, 3], // Mengatur pola garis putus-putus
                  color: AppColors.gray,
                  strokeWidth: 2,
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                  ),
                ),
              ),
              // Camera icon
              Icon(
                Icons.camera_alt_outlined,
                size: 40,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    ),
          // Scan Text button
          Padding(
            padding: const EdgeInsets.only(
              bottom: 40.0,
              left: 20.0,
              right: 20.0,
            ),
            child: SizedBox(
              width: 200, // Atur lebar tetap yang diinginkan
              child: ElevatedButton(
                onPressed: () {
                  // Add scanning functionality here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFFFC0CB),
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 16,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(color: AppColors.black, width: 2),
                  ),
                ),
                child: const Text(
                  'Scan Text',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
