import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'dart:async';

class InputAttendanceHoursPage extends StatefulWidget {
  @override
  _InputAttendanceHoursState createState() => _InputAttendanceHoursState();
}

class _InputAttendanceHoursState extends State<InputAttendanceHoursPage> {
  //日時フォーマット
  final formats = {
    InputType.both: DateFormat("yyyy-MM-dd HH:mm:ss"),
    InputType.date: DateFormat("yyyy-MM-dd"),
    InputType.time: DateFormat("HH:mm:ss")
  };
  DateTime birthDate;
  DateTime now;
  bool morningIconChangeFlg = true;
  bool nightIconChangeFlg = true;

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        now = new DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("勤怠入力ページ")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _buildTitle(),
            _buildNowTextField(),
            _buildIcons(deviceHeight, deviceWidth),
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
            style: TextStyle(fontSize: 20.0),
          ),
          Icon(Icons.access_alarm)
        ],
      ),
    );
  }

  Widget _buildNowTextField() {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Text("今日の勤務時間"),
          Text(
            "${_getNow()}",
            style: TextStyle(fontSize: 30.0, color: Colors.blueAccent[200]),
          )
        ],
      ),
    );
  }

  // 追加
  String _getNow() {
    return now != null ? formats[InputType.time].format(now) : "なし";
  }

  Widget _buildIcons(double deviceheight, double deviceWidth) {
    //デバイス画面の高さ横幅を元にアイコンの位置と間隔を計算
    double iconHeight = (deviceWidth / 3).roundToDouble();
    double iconWidth = (deviceWidth / 3).roundToDouble();
    double iconsIntervalHeight = (deviceheight * 2 / 3).roundToDouble();
    return Row(
      children: <Widget>[
        SizedBox(height: iconsIntervalHeight),
        Expanded(
          child: GestureDetector(
            child: Image.asset("${_getMorningIconPath()}",
                height: iconHeight, width: iconWidth),
            onTap: () {
              setState(() {
                morningIconChangeFlg
                    ? morningIconChangeFlg = false
                    : morningIconChangeFlg = true;
              });
            },
          ),
        ),
        Expanded(
          child: GestureDetector(
            child: Image.asset("${_getNightIconPath()}",
                height: iconHeight, width: iconWidth),
            onTap: () {
              setState(() {
                nightIconChangeFlg
                    ? nightIconChangeFlg = false
                    : nightIconChangeFlg = true;
              });
            },
          ),
        ),
      ],
    );
  }

  String _getMorningIconPath() {
    return morningIconChangeFlg
        ? 'assets/morning_icon_on.png'
        : 'assets/morning_icon_off.png';
  }

  String _getNightIconPath() {
    return nightIconChangeFlg
        ? 'assets/night_icon_on.png'
        : 'assets/night_icon_off.png';
  }
}
