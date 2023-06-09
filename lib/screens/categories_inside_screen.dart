import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoriesInsideScreen extends StatelessWidget {

 
  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: Center(child: Text('Conteudo ${category.id} esperado...'),
      ),
    );
  }
}