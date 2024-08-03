import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingView extends StatefulWidget {
  SettingView({super.key});

  @override
  State<SettingView> createState() => _SettingViewState();
}

class _SettingViewState extends State<SettingView> {
  var languagesList = [
    "English",
    "عربي",
  ];

  var themeList = [
    "Light",
    "Dark",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: languagesList,
            // initialItem: _list[0],
            onChanged: (value) {
              log('changing value to: $value');
            },
          ),
          const SizedBox(height: 70,),
          Text(
            "Theme",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: themeList,
            // initialItem: _list[0],
            onChanged: (value) {
              log('changing value to: $value');
            },
          ),
        ],
      ),
    );
  }
}
