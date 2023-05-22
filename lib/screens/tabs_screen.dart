import 'package:flutter/material.dart';

import 'categories_screen.dart';
import '../components/main-drawer.dart';

class TabsScreen extends StatelessWidget {

  final String email;

  TabsScreen({Key? key, required this.email}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('MOBI'),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 23,
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                // Ação ao clicar no ícone do chat
              },
            ),
          ],
        ),
        drawer: MainDrawer(email: email,),
        body: TabBarView(
          children: [
            CategoriesScreen(),
          ],
        ),
      ),
    );
  }
}

