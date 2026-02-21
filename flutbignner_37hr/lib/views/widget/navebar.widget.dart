import 'package:flutbignner_37hr/data/notifiers.dart';
import 'package:flutter/material.dart';

class NavebarWidget extends StatelessWidget {
  const NavebarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(valueListenable: selectedPageNotifier,
     builder:(context, selectedPage, child){
      return NavigationBar(
          destinations:[
            NavigationDestination(icon: Icon(Icons.home), label:'home'),
          NavigationDestination(icon: Icon(Icons.person),label:'profile'),
          
       ],
       onDestinationSelected: (int value){
       selectedPageNotifier.value = value;
       },
        selectedIndex: selectedPage,
    );
    },
     ); 
  }
}