import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

class InputAttendanceHoursPage extends StatefulWidget {
  @override
  _InputAttendanceHoursState createState() => _InputAttendanceHoursState();
}

class _InputAttendanceHoursState extends State<InputAttendanceHoursPage> {
  //日時フォーマット
  final formats = {
    InputType.both: DateFormat("yyyy-MM-dd HH:mm:ss"),
    InputType.date: DateFormat("yyyy-MM-dd"),
    InputType.time: DateFormat("HH:mm")
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("勤怠入力ページ")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildTitle(),
          ],
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Padding(
      padding: EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.access_alarm),
          SizedBox(
            width: 5.0,
          ),
          Text(
            '本日の出勤時間を入力してください',
            style: TextStyle(fontSize: 18.0),
          ),
          Icon(Icons.access_alarm)
        ],
      ),
    );
  }
}
