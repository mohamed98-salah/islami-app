import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaspehView extends StatelessWidget {
  const TaspehView({super.key});


  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
      child: Text(
        "Taspeh View",
        style: theme.textTheme.titleLarge,
      ),
    );
  }
}
