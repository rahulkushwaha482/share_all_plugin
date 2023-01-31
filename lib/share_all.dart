
import 'share_all_platform_interface.dart';

class ShareAll {
  Future<void> text(String message) async {
    await ShareAllPlatform.instance.text(message);
  }

  Future<void> email(String body,String subject,String emailId,String emailcc) async {
    await ShareAllPlatform.instance.email(body,subject,emailId,emailcc);
  }

  Future<void> file() async {
    await ShareAllPlatform.instance.file();
  }
}
