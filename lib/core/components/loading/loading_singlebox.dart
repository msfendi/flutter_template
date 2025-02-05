import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/theme/theme.dart';

class LoadingSingleBox extends StatelessWidget {
  final double height;
  final Color? color;

  const LoadingSingleBox({
    super.key,
    this.height = 150,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSetting.deviceWidth,
      height: AppSetting.setHeight(height),
      color: color ?? MyTheme.color.grey.withOpacity(0.3),
    );
  }
}

class LoadingSingleBoxCircular extends StatelessWidget {
  final double height;

  const LoadingSingleBoxCircular({
    super.key,
    this.height = 150,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        width: AppSetting.deviceWidth,
        height: AppSetting.setHeight(height),
        decoration: BoxDecoration(
          color: MyTheme.color.grey.withOpacity(0.3),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}