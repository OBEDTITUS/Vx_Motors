import 'package:flutter/material.dart';
import 'package:ty_motors/data/notifiers.dart';
import 'package:ty_motors/views/pages/favorite_page.dart';
import 'package:ty_motors/views/pages/home_page.dart';
import 'package:ty_motors/views/pages/profile_page.dart';
import 'package:ty_motors/views/pages/search_page.dart';

import 'navbar_widget.dart';

List<Widget> pages = [HomePage(), SearchPage(), FavoritePage(), ProfilePage()];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Nigeria"),

        centerTitle: false,
      ),
      body: ValueListenableBuilder(
        valueListenable: selectedPageNotifier,
        builder: (context, selectedPage, child) {
          return pages.elementAt(selectedPage);
        },
      ),

      bottomNavigationBar: NavbarWidget(),
    );
  }
}
