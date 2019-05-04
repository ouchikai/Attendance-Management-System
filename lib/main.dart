import 'package:flutter/material.dart';
import './pages/input_attendance_hours_page.dart';

// void main() => runApp(MaterialApp(
//   theme: ThemeData.light(),
//   home: InputAttendanceHoursPage(),

// ));
void main() => runApp(new MyApp()); 

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '勤怠管理アプリ',
      theme: ThemeData.light(),
      home: RootPage(),
    );
  }
}

class RootPage extends StatefulWidget{
  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<RootPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('勤怠管理アプリ'),
      ),
      body: InputAttendanceHoursPage(),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            Icon(Icons.android),
            Icon(Icons.android),
          ],
        ),
      ),
    );
  }
}