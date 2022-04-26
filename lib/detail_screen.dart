import 'package:course_app/constants.dart';
import 'package:course_app/custome_tile.dart';
import 'package:course_app/home_screen.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final _imageUrl;
  final _categoryData;

  DetailScreen(this._imageUrl, this._categoryData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 + 60,
            width: MediaQuery.of(context).size.width,
            child: Hero(
                  tag: _imageUrl,
              child: Image.asset(
                _imageUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
            top: 50,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xff616888),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      'BESTSELLER',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    decoration: BoxDecoration(
                        color: Color(
                          0xffFFD073,
                        ),
                        borderRadius: BorderRadius.circular(3)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    _categoryData['courseName'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.people,
                        size: 28,
                        color: Color(0xff616888),
                      ),
                      Text(
                        _categoryData['number'],
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff616888),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.star,
                        size: 28,
                        color: Color(0xff616888),
                      ),
                      Text(
                        _categoryData['rating'],
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff616888),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    _categoryData['price'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 + 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Course Content',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: courseContent.map((content) {
                        return CustomeTile(
                          content['number'],
                          content['title'],
                          content['time'],
                        );
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 70,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      padding: EdgeInsets.symmetric(vertical: 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Icon(
                        Icons.shop,
                        color: Color(0xffFF6670),
                      ),
                      color: Color(0xffFFEDEE),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      color: Color(0xff6E8AFA),
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
