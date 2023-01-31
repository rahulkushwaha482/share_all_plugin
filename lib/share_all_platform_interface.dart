import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'share_all_method_channel.dart';

abstract class ShareAllPlatform extends PlatformInterface {
  ShareAllPlatform() : super(token: _token);

  static final Object _token = Object();

  static ShareAllPlatform _instance = MethodChannelShareAll();

  static ShareAllPlatform get instance => _instance;

  static set instance(ShareAllPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> text(String message) async {
    UnimplementedError('Unable to share Text.');
  }

  Future<void> email(String body,String subject,String emailId,String emailcc) async {
    UnimplementedError('Unable to share email.');
  }

  Future<void> file() async {
    UnimplementedError('Unable to share the file.');
  }
}
