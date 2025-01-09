import 'package:flutter/material.dart';
import 'package:super_market/core/theme/app_color.dart';
import 'package:super_market/features/layout/chees.dart';
import 'package:super_market/features/layout/milk.dart';

import '../departments /departments_screen.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = 'home_screen';

  HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Widget> product = [
    Cheese(),
    Milk(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          'Super Market',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: AppColors.white,
              child: DepartmentsScreen(
                selectedIndex: selectedIndex,
                onDepartmentTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              color: AppColors.primaryColor,
              child: product[selectedIndex],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: AppColors.white,
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color:  AppColors.orange ,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color:  AppColors.primaryColor ,
                        width: 1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'فاتورة المبيعات',
                        style: TextStyle(
                          fontSize: 20,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
