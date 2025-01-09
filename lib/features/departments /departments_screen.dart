import 'package:flutter/material.dart';

import '../../core/theme/app_color.dart';
import '../../models/departments_model.dart';

class DepartmentsScreen extends StatelessWidget {
  final Function(int) onDepartmentTap;
  final int selectedIndex;

  DepartmentsScreen({
    super.key,
    required this.onDepartmentTap,
    required this.selectedIndex,
  });

  final List<DepartmentsModel> departments = [
    DepartmentsModel(title: 'منتجات الألبان'),
    DepartmentsModel(title: 'منتجات الجبن'),
    DepartmentsModel(title: ' قسم البقوليات'),
    DepartmentsModel(title: 'الارز والمكرونة'),
    DepartmentsModel(title: 'المشروبات الغازية'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'الأقسام',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: departments.length,
            itemBuilder: (context, index) {
              bool isSelected = index == selectedIndex;
              return GestureDetector(
                onTap: () {
                  onDepartmentTap(index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: isSelected ? AppColors.primaryColor : AppColors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: isSelected ? AppColors.primaryColor : AppColors.deapGray,
                      width: 1,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      departments[index].title,
                      style: TextStyle(
                        fontSize: 16,
                        color: isSelected ? AppColors.orange: AppColors.black,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
