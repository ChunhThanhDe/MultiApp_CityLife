import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';

class ApiConstant {
  static Alice alice = Alice(
      configuration: AliceConfiguration(
          showNotification: false,
          showShareButton: false,
          showInspectorOnShake: false))
    ..addAdapter(aliceDioAdapter);
  static AliceDioAdapter aliceDioAdapter = AliceDioAdapter();
}
