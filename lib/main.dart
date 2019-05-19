import 'package:flutter/material.dart';
import './pages/input_attendance_hours_page.dart';
import './pages/call_phone_page.dart';
import './pages/drawer_generator.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData.light(),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('勤怠管理アプリ'),
      ),
      body: InputAttendanceHoursPage(),
      drawer: CommonDrawerGenarator()
    );
  }
}