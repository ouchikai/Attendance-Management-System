
import 'mail_content.dart';

class MailGenerator {
  static var mailList = [
    MailContent("Happy Halloween", "山田 貴之", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "劇団ひとり", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "黒木 瞳", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "橋下 環奈", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
    MailContent("Happy Halloween", "John Doe", "31 Oct",
        "This is a simple demo mail..."),
  ];

  static MailContent getMailContent(int position) => mailList[position];
  static int mailListLength = mailList.length;
}