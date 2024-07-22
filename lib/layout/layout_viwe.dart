import 'package:face_book/modules/hadeth/hadeth_veiw.dart';
import 'package:face_book/modules/quran/quran_veiw.dart';
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
    return Stack(
      children: [
        Image.asset("assets/images/background_salami.png"),
        Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "إسلامي",
                style: TextStyle(

                ),
              ),
            ),
          ),
          body:screensList[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFFB7935F),
            currentIndex: selectedIndex,
            onTap: (value) =>
            {
              selectedIndex = value,
              setState(() {})
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/quran x3.png")),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/hades_x3.png")),
                label: "Hadth",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/sebha_blue.png")),
                label: "Sebha",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icon/radio_blue.png")),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "Setting",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
