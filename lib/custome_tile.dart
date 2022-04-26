import 'package:flutter/material.dart';

class CustomeTile extends StatelessWidget {
  final _number;
  final _title;
  final _time;

  CustomeTile(this._number, this._title, this._time);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        _number,
        style: TextStyle(
          fontSize: 30,
          color: Color(0xffe4e7f4),
          fontWeight: FontWeight.bold,
        ),
      ),
      title: Text(_title),
      subtitle: Text(_time),
      trailing: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.all(7),
        color: Color(0xff49CC96),
        minWidth: 30,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Icon(
          Icons.arrow_right,
          color: Colors.white,
        ),
      ),
    );
  }
}
