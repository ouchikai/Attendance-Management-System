import 'package:flutter/material.dart';
import 'mail_generator.dart';
import 'mail_content.dart';

class CallPhonePage extends StatefulWidget {
  @override
  _CallPhonePageState createState() => _CallPhonePageState();
}

class _CallPhonePageState extends State<CallPhonePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _callPhoneListGenerator(),
    );
  }
}

Widget _callPhoneListGenerator() {
  return ListView.builder(
      itemCount: MailGenerator.mailListLength,
      itemBuilder: ((context, position) {
        MailContent mailContent = MailGenerator.getMailContent(position);
        return Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(
                    left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.account_circle,
                      size: 55.0,
                      color: Colors.lightBlue,
                    ),
                    Expanded(
                      child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            children: <Widget>[
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      mailContent.sender,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black87,
                                          fontSize: 17.0),
                                    ),
                                  ])
                            ],
                          )),
                    ),
                  ],
                ))
          ],
        );
      }));
}
