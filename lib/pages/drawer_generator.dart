import 'package:flutter/material.dart';
import 'call_phone_page.dart';
import 'input_attendance_hours_page.dart';
import 'drawer_content.dart';

class CommonDrawerGenarator extends StatelessWidget{
  final Text accountEmail = new Text("ko.rikujyou1114@gmail.com");
  final Text accountName = new Text("Kai Ouchi");

  @override
  Widget build(BuildContext context){
    return new Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blueAccent),
            accountEmail: accountEmail,
            accountName: accountName,
            currentAccountPicture: Icon(Icons.account_circle, size: 50.0, color: Colors.white),
          ),
          // Expanded(
          //   flex: 2,
          //   child: GestureDetector(
          //     child: ListTile(leading: Icon(Icons.work),title: Text("勤務時間"),),
          //     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => InputAttendanceHoursPage()));}
          //   ),
          // ),
          // Expanded(
          //   flex: 2,
          //   child: GestureDetector(
          //     child: ListTile(leading: Icon(Icons.phone),title: Text("電話可能一覧"),),
          //     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => CallPhonePage()));}
          //   ),
          // )
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: drawerGenerator.drawerList.length,
              itemBuilder: (context,position){
                return ListTile(
                  leading: drawerGenerator.drawerList[position].drawerIcon,
                  title: Text(drawerGenerator.drawerList[position].drawerTitle),
                  // onTap: (){Navigator.push(context, MaterialPageRoute(builder: context) => CallPhonePage());},
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => drawerGenerator.drawerList[position].nextPageName));}
                );
              }
            ),)
          ] 
        )
      );
  }
}