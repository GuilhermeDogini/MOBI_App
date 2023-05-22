import 'package:flutter/material.dart';
import '../models/category.dart';
import '../utils/app_routes.dart';

class CategoryItem extends StatefulWidget {
  final Category category;

  CategoryItem(this.category);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  int _viewsCount = 0;

  void _selectCategory(BuildContext context) {
    setState(() {
      _viewsCount++;
    });

    Navigator.of(context).pushNamed(
      AppRoutes.SCREEN,
      arguments: widget.category,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectCategory(context),
      borderRadius: BorderRadius.circular(15),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: LinearGradient(
            colors: [
              widget.category.color,
              widget.category.color,
            ],
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 3,
              child: Icon(
                widget.category.iconData, // Usando o ícone da categoria
                size: 27,
                color: Colors.yellow,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 41),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Views:',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 4),
                    Text(
                      '$_viewsCount',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  widget.category.title,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Colors.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
