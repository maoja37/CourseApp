// ignore_for_file: prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, sized_box_for_whitespace
// ignore_for_file: prefer_const_constructors
import 'package:course_app/detail_screen.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final _title;
  final _courseAmount;
  final _imageUrl;
  final _categoryData;

  CategoryCard(this._title, this._courseAmount, this._imageUrl,this._categoryData);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(_imageUrl,_categoryData)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 30,
          height: MediaQuery.of(context).size.height / 4 - 20,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Hero(
                tag: _imageUrl,
                child: Image.asset(
                  _imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 20,
                left: 20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '$_courseAmount Courses',
                      style: TextStyle(
                        color: Color(0xff8F95B2),
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
