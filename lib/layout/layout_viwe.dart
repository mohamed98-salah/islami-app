import 'package:face_book/modules/hadeth/hadeth_veiw.dart';
import 'package:face_book/modules/quran/quran_veiw.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:face_book/modules/radio/radio_view.dart';
import 'package:face_book/modules/settings/setting_view.dart';
import 'package:face_book/modules/taspeh/taspeh_view.dart';
import 'package:flutter/material.dart';

class LayoutViwe extends StatefulWidget {
  static const String routeName = "layout";

  const LayoutViwe({super.key});

  @override
  State<LayoutViwe> createState() => _LayoutViweState();
}

class _LayoutViweState extends State<LayoutViwe> {
  int selectedIndex = 0;
  List<Widget> screensList = [
    QuranView(),
    HadethVeiw(),
    TaspehView(),
    RadioView(),
    SettingView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang = AppLocalizations.of(context)!;
    return Stack(
      children: [
        Image.asset("assets/images/home_dark_background.png"),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                lang.isalami,
                style: TextStyle(

                ),
              ),
            ),
          ),
          body:screensList[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) =>
            {
              selectedIndex = value,
              setState(() {})
            },
            items:  [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/quran x3.png")),
                label:  lang.quran,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/hades_x3.png")),
                label: lang.hadith,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/sebha_blue.png")),
                label: lang.tasbeh,
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/radio_blue.png")),
                label: lang.radio,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: lang.settings,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
