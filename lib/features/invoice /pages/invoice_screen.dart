import 'package:flutter/material.dart';

import '../widgets/invoice_item_in_menu.dart';

class InvoiceScreen extends StatelessWidget {
  const InvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InvoiceItemInMenu(),
      ],
    );
  }
}
