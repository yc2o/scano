import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scano/dat/scan_data.dart';
import 'package:scano/theme/app_colors.dart';

class ScanResultScreen extends StatelessWidget{
  final ScanData scanData;
  const ScanResultScreen({super.key, required this.scanData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: MediaQuery.of(context).size.height * 0.075,
        title: Text(
          'Scan Result',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: AppColors.quinary,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
            child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.black,
                width: 4.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black,
                  blurRadius: 0.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: AppColors.black,
              ),
              iconSize: 30,
              onPressed: () => Navigator.of(context).pop(),
              splashRadius: 22,
              padding: EdgeInsets.zero,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Container(
            height: 4.0,
            color: AppColors.black,
          ),
        ),
        
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: AppColors.bodyGradient,
        ),
        padding: const EdgeInsets.all(24.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.all(24.0),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(8.0),
              border: Border.all(
                color: AppColors.black,
                width: 4.0,
              ),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black,
                  blurRadius: 0,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  scanData.title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.start,
                ),
                Text(
                  'Date: ${formatDate(scanData.date)}',
                  style: TextStyle(fontSize: 14, color: AppColors.gray),
                ),
                SizedBox(height: 12),
                Text(
                  scanData.content,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          border: Border(
            top: BorderSide(
              color: AppColors.black,
              width: 4.0,
            ),
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.1,
          child: Row(
            spacing: MediaQuery.of(context).size.width * 0.075,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: AppColors.black,
                  width: 2.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black,
                    blurRadius: 0.0,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.list,
                  color: AppColors.black
                ),
                label: Text(
                  "Save to List",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                color: AppColors.tertiary,
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: AppColors.black,
                  width: 2.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.black,
                    blurRadius: 0.0,
                    offset: Offset(2, 2),
                  ),
                ],
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.download,
                  color: AppColors.black
                ),
                label: Text(
                  "Download PDF",
                  style: TextStyle(
                    color: AppColors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String formatDate(DateTime date) {
    return DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(date);
  }
}