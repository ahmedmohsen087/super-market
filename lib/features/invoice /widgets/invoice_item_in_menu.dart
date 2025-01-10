import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';

class InvoiceItemInMenu extends StatelessWidget {
  const InvoiceItemInMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 389,
                height: 75,
                decoration: BoxDecoration(
                    color: AppColors.itemColor,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: AppColors.orange)),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(spacing: 15, children: [
                    Text(
                      '20 EGP',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'جبنه رومي',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 22,
                        height: 22,
                        decoration: BoxDecoration(
                          color: AppColors.orange,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: AppColors.white,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
              )),
        ),
        GestureDetector(
          onTap: () {},
          child: Center(
            child: Icon(
              Icons.delete_forever,
              color: AppColors.orange,
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
