import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'share_all_platform_interface.dart';

class MethodChannelShareAll extends ShareAllPlatform {
  @visibleForTesting
  final methodChannel = const MethodChannel('share_all');

  @override
  Future<void> text(String message) async {
    await methodChannel.invokeMethod('share_text',{'message':message});
  }

  @override
  Future<void> file() async {
    await methodChannel.invokeMethod('share_file',{});
  }

  @override
  Future<void> email(String body,String subject,String emailId,String emailcc) async {
    await methodChannel.invokeMethod('share_email',{'body':body,'subject':subject,'email':emailId,'emailcc':emailcc});
  }
}
