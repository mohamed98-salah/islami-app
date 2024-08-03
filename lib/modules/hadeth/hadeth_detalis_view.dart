import 'package:face_book/modules/hadeth/hadeth_veiw.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HadethDetalisView extends StatelessWidget {
  static const String routename = "hadethDetalis";

  const HadethDetalisView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var data = ModalRoute.of(context)?.settings.arguments as HadithData;
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/home_dark_background.png"),
        fit: BoxFit.cover,
      )),
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("إسلامي")),
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: 10,
            left: 30,
            right: 30,
            bottom: 80,
          ),
          padding: EdgeInsets.only(
            top: 20,
            left: 30,
            right: 30,
            bottom: 20,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF141A2E).withOpacity(0.80),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Text(
                data.title,
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(
                width: 10,
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    data.body,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                  ),
                  itemCount: 6,
                ),
              ),
              // Text(
              //   textAlign: TextAlign.center,
              //   content,
              //   style: theme.textTheme.bodySmall?.copyWith(
              //     height: 1.8
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
