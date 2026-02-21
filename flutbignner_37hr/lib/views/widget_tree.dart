import 'package:flutbignner_37hr/data/notifiers.dart';
import 'package:flutbignner_37hr/views/pages/home_page.dart';
import 'package:flutbignner_37hr/views/pages/profile_page.dart';
import 'package:flutter/material.dart';

import 'widget/navebar.widget.dart';

List<Widget> page = [
  HomePage(),
  ProfilePage(),
];
class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('flutter mapp'),
        actions: [
          IconButton(
            onPressed:() {
    isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon:ValueListenableBuilder(
              valueListenable:isDarkModeNotifier ,
             builder: (context, isDarkMode, child) {
            return Icon(isDarkMode?
              Icons.light_mode: Icons.dark_mode,
            ) ; 
            },
            ), 
            ),
        ],
        ),
        body:ValueListenableBuilder(valueListenable: selectedPageNotifier, 
        builder: (context, selectedPage, child) {
        return  page.elementAt(selectedPage); 
        },
        ), 
        bottomNavigationBar: NavebarWidget(),
      );
  }
}