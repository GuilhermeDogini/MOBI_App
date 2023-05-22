import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MainDrawer extends StatelessWidget {

   final String email;

  MainDrawer({Key? key, required this.email}) : super(key: key);

  Widget _createItem(IconData icon, String label) {
    return ListTile(
      leading: Icon(
        icon,
        size: 24,
      ),
      title: Text(
        label,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 17,
        ),
      ),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            color: AppColors.myCustomBlackBlue,
            padding: EdgeInsets.only(top: 35, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 37,
                      backgroundImage:
                          AssetImage("assets/images/avatar.jpg"), // Substitua pelo caminho da imagem da foto do usuário
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 130,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow,
                        ),
                        child: Icon(
                          Icons.edit,
                          size: 12,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  'Nome do usuário',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  email,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Espaçamento de 20 pixels
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _createItem(Icons.pedal_bike, 'ITEM MENU 01'),
                  _createItem(Icons.refresh, 'ITEM MENU 02'),
                  _createItem(Icons.history, 'ITEM MENU 03'),
                  _createItem(Icons.cloud_download, 'ITEM MENU 04'),
                  _createItem(Icons.chat, 'ITEM MENU 05'),
                  _createItem(Icons.lock, 'ITEM MENU 06'),
                  _createItem(Icons.check, 'ITEM MENU 07'),
                  _createItem(Icons.lock_open, 'ITEM MENU 08'),
                  _createItem(Icons.archive_outlined, 'ITEM MENU 09'),
                  _createItem(Icons.manage_accounts, 'ITEM MENU 10'),
                  SizedBox(height: 30),
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: Colors.black,
                          width: 0.5,
                        ),
                      ),
                    ),
                    child: _createItem(Icons.logout, 'Sair'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
