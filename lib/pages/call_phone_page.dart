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
      itemBuilder: (context, position) {
        MailContent mailContent = MailGenerator.getMailContent(position);
        return Column(children: <Widget>[
          Padding(
            padding:
                EdgeInsets.only(left: 14.0, right: 14.0, top: 5.0, bottom: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.account_circle,
                  size: 55.0,
                  color: Colors.red,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              mailContent.sender,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black87,
                                  fontSize: 17.0),
                            ),
                            // Text(
                            //   mailContent.time,
                            //   style: TextStyle(
                            //       fontWeight: FontWeight.w400,
                            //       color: Colors.black54,
                            //       fontSize: 13.5),
                            // ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  mailContent.subject,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 15.5),
                                ),
                                Text(
                                  mailContent.message,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black54,
                                      fontSize: 15.5),
                                )
                              ],
                            ),
                            Ink(
                                decoration: ShapeDecoration(
                                    color: Colors.blue[300],
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10.0))),
                                child: SizedBox(
                                  width: 70.0,
                                  height: 40.0,
                                  child: IconButton(
                                      // iconSize: 25.0,
                                      icon: Icon(
                                        Icons.phone,
                                        size: 30.0,
                                      ),
                                      color: Colors.white,
                                      onPressed: () {
                                        print('pressed!');
                                      }),
                                ))
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
        ]);
      });
}
