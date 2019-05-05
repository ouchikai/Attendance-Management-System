import 'package:flutter/material.dart';
import './pages/input_attendance_hours_page.dart';
import './pages/call_phone_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '勤怠管理アプリ',
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
      body: CallPhonePage(),
      drawer: _getMailAccountDrwer(),
    );
  }
}

Drawer _getMailAccountDrwer() {
  var drawerIcons = [
    Icon(Icons.work),
    Icon(Icons.inbox),
    Icon(Icons.people),
    Icon(Icons.local_offer),
    Icon(Icons.star),
    Icon(Icons.access_time),
    Icon(Icons.label),
    Icon(Icons.send),
    Icon(Icons.send),
    Icon(Icons.note),
    Icon(Icons.mail),
    Icon(Icons.error),
    Icon(Icons.delete),
    Icon(Icons.label),
    Icon(Icons.label),
    Icon(Icons.settings),
    Icon(Icons.help),
  ];

  var drawerText = [
    "勤怠時間入力",
    "Primary",
    "Social",
    "Promotions",
    "Starred",
    "Snoozed",
    "Important",
    "Sent",
    "Outbox",
    "Drafts",
    "All mail",
    "Spam",
    "Bin",
    "[Imap]/Sent",
    "[Imap]/Trash",
    "Settings",
    "Help & feedback"
  ];
  Text email = new Text("ko.rikujyou1114@gmail.com",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0));
  Text name = new Text("Kai Ouchi",
      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0));
  return Drawer(
    child: Column(
      children: <Widget>[
        UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.blueAccent),
          accountName: name,
          accountEmail: email,
          currentAccountPicture: Icon(
            Icons.account_circle,
            size: 50.0,
            color: Colors.white,
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.builder(
              padding: EdgeInsets.only(top: 0.0),
              itemCount: drawerText.length,
              itemBuilder: (context, position) {
                return ListTile(
                  leading: drawerIcons[position],
                  title: Text(drawerText[position],
                      style: TextStyle(fontSize: 15.0)),
                );
              }),
        )
      ],
    ),
  );
}
