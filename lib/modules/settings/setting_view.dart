import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Settings View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
