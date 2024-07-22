import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethVeiw extends StatelessWidget {
  const HadethVeiw({super.key});


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Hadith View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
