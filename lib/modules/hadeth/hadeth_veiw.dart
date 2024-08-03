import 'package:face_book/modules/hadeth/hadeth_detalis_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HadethVeiw extends StatefulWidget {
  const HadethVeiw({super.key});

  @override
  State<HadethVeiw> createState() => _HadethVeiwState();
}

class _HadethVeiwState extends State<HadethVeiw> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (dataList.isEmpty) loadHadithData();
    return Column(
      children: [
        Image.asset(
          "assets/icon/hadith_header.png",
          scale: 1.2,
        ),
        Divider(
          thickness: 3,
        ),
        Text(
          "الأحاديث",
          style: theme.textTheme.bodyMedium,
        ),
        Divider(
          thickness: 3,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) =>
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetalisView.routename ,
                    arguments: dataList[index]
                    );

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      dataList[index].title,
                    ),
                  ),
                ),
            itemCount: dataList.length,
          ),
        )
      ],
    );
  }

  List<HadithData> dataList = [];

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString(
      "assets/files/hadith.txt",

    );

    List<String> allHadithDataList = content.split("#");

    for (int i = 0; i < allHadithDataList.length; i++) {
      String singlHadith = allHadithDataList[i].trim();

      int titleLength = singlHadith.indexOf("/n");

      String title = singlHadith.substring(0, titleLength);
      String body = singlHadith.substring(titleLength + 1);

      HadithData hadithData = HadithData(body: body, title: title);
      dataList.add(hadithData);
    }
  }
}

class HadithData {
  final String title;
  final String body;

  HadithData({
    required this.body,
    required this.title,
  });
}
