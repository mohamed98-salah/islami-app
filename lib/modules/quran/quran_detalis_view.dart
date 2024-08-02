import 'package:face_book/modules/quran/quran_veiw.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class QuranDetalisView extends StatefulWidget {
  static const String routeName = "quranDetailsView";

  const QuranDetalisView({super.key});

  @override
  State<QuranDetalisView> createState() => _QuranDetalisViewState();
}

class _QuranDetalisViewState extends State<QuranDetalisView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context);
    if (content.isEmpty) lodaData(data.suraNumber);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/background_salami.png"),
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
            color: const Color(0XFFF8F8F8).withOpacity(0.80),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " سورة ${data.suraName}",
                    style: theme.textTheme.bodyMedium,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.play_circle_fill_rounded),
                ],
              ),
              Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}}${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8),
                  ),
                  itemCount: versesList.length,
                ),
              )
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

  String content = "";
  List<String> versesList = [];

  Future<void> lodaData(String suraNumer) async {
    content = await rootBundle.loadString("assets/files/$suraNumer.txt");
    versesList = content.split("/n");
    setState(() {});
    print(content);
  }
}
