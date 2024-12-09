import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  final String path;
  final Color? color;
  final double size;
  const SvgIcon({
    required this.path,
    this.color,
    required this.size,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: size,
      colorFilter: color != null
      ? ColorFilter.mode(
        color!,
        BlendMode.srcIn
      )
      : null
    );
  }
}