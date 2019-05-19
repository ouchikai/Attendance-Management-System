import 'package:flutter/material.dart';
import 'call_phone_page.dart';
import 'input_attendance_hours_page.dart';

class drawerContent{
  Icon drawerIcon;
  String drawerTitle;
  Widget nextPageName;
  drawerContent(this.drawerIcon, this.drawerTitle, this.nextPageName);
}
class drawerGenerator{
  static var drawerList =[
    drawerContent(Icon(Icons.work), "勤怠時間入力", InputAttendanceHoursPage()),
    drawerContent(Icon(Icons.phone), "現在地一覧", CallPhonePage()),
  ];
}