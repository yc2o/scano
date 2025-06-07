import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:scano/dat/scan_data.dart';
import 'package:scano/theme/app_colors.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.090,
        title: Column(
          children: [
            Text(
              'SCANNO!',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Hasil Scanning Dokumenmu',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: AppColors.tertiary,
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
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: scanDataMockList.length,
          itemBuilder: (context, index) {
            final scanData = scanDataMockList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: AppColors.black,
                    width: 2.0,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.black,
                      blurRadius: 0,
                      offset: Offset(3, 3),
                    )
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          DateFormat('dd-MM-yyyy').format(scanData.date),
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 16,
                          height: 16,
                          decoration: BoxDecoration(
                            color: AppColors.quaternary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            scanData.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: AppColors.secondary,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: AppColors.black,
                              width: 2.0,
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.black,
                                blurRadius: 0,
                                offset: Offset(1.5, 1.5),
                              )
                            ],
                          ),
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            iconSize: 16,
                            onPressed: () {
                              // DELETE
                            },
                            icon: Icon(
                              Icons.delete,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      scanData.content,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppColors.gray,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.black,
            width: 4.0,
          ),
          boxShadow: [
            BoxShadow(
              color: AppColors.black,
              blurRadius: 0,
              offset: Offset(3, 3),
            )
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColors.secondary,
          elevation: 0,
          shape: CircleBorder(),
          child: Icon(
            Icons.photo_camera,
            color: AppColors.black,
            size: 32,
          ),
        ),
      ),
    );
  }

  String formatDate(DateTime date) {
    return DateFormat('EEEE, d MMMM yyyy', 'id_ID').format(date);
  }
}