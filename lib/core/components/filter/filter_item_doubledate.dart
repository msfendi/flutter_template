import 'package:flutter/material.dart';
import 'package:flutter_template/config/app_config.dart';
import 'package:flutter_template/core/components/textfield/primary_textfield.dart';
import 'package:flutter_template/utils/date/date_format_utils.dart';
import 'package:flutter_template/gen/assets.gen.dart';
import 'package:flutter_template/theme/theme.dart';

class FilterItemDoubleDate extends StatefulWidget {
  final String title;
  final String dateFrom;
  final String dateTo;

  const FilterItemDoubleDate({
    super.key,
    required this.title,
    required this.dateFrom,
    required this.dateTo,
  });

  @override
  State<FilterItemDoubleDate> createState() => _FilterItemDoubleDateState();
}

class _FilterItemDoubleDateState extends State<FilterItemDoubleDate> {
  var dateFromController = TextEditingController();
  var dateToController = TextEditingController();

  void pickDate(bool isFrom) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().add(const Duration(days: -365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      if (isFrom) {
        dateFromController.text = formatterClassic.format(picked);
      } else {
        dateToController.text = formatterClassic.format(picked);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: MyTheme.style.title.copyWith(
            fontSize: AppSetting.setFontSize(40),
            color: MyTheme.color.black,
          ),
        ),
        Space.h(20),
        Row(
          children: [
            Expanded(
              child: PrimaryTextfield(
                title: "",
                hintText: "Pilih Tanggal",
                action: TextInputAction.done,
                type: TextInputType.text,
                controller: dateFromController,
                fontSize: 35,
                hintTextColor: MyTheme.color.grey,
                textColor: MyTheme.color.black,
                onChange: (value) {},
                onClick: () => pickDate(true),
                enableOutline: true,
                showSuffixIcon: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(20),
                  ),
                  child: Assets.icons.iconCalendar.image(
                    width: AppSetting.setWidth(50),
                    height: AppSetting.setHeight(50),
                  ),
                ),
                readOnly: true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(30),
                  vertical: AppSetting.setHeight(0),
                ),
                validator: (value) {
                  return null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppSetting.setWidth(20),
              ),
              child: Text(
                "to",
                style: MyTheme.style.subtitle.copyWith(
                  fontSize: AppSetting.setFontSize(35),
                  color: MyTheme.color.black,
                ),
              ),
            ),
            Expanded(
              child: PrimaryTextfield(
                title: "",
                hintText: "Pilih Tanggal",
                action: TextInputAction.done,
                type: TextInputType.text,
                controller: dateToController,
                fontSize: 35,
                hintTextColor: MyTheme.color.grey,
                textColor: MyTheme.color.black,
                onChange: (value) {},
                onClick: () => pickDate(false),
                enableOutline: true,
                showSuffixIcon: true,
                readOnly: true,
                prefixIcon: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSetting.setWidth(20),
                  ),
                  child: Assets.icons.iconCalendar.image(
                    width: AppSetting.setWidth(50),
                    height: AppSetting.setHeight(50),
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: AppSetting.setWidth(30),
                  vertical: AppSetting.setHeight(0),
                ),
                validator: (value) {
                  return null;
                },
              ),
            ),
          ],
        )
      ],
    );
  }
}