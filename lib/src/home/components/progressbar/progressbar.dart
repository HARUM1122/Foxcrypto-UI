import 'package:flutter/material.dart' hide ProgressIndicator;

import 'progress_indicator.dart';

class Progressbar extends StatelessWidget {
  final int currentPage;
  const Progressbar({required this.currentPage, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProgressIndicator(
          active: currentPage == 0,
        ),
        const SizedBox(width: 4),
        ProgressIndicator(
          active: currentPage == 1,
        ),
        const SizedBox(width: 4),
        ProgressIndicator(
          active: currentPage == 2,
        )
      ],
    );
  }
}