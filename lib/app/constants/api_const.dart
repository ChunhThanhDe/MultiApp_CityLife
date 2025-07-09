import 'package:alice/alice.dart';
import 'package:alice/model/alice_configuration.dart';
import 'package:alice_dio/alice_dio_adapter.dart';
import 'package:flutter/foundation.dart';

class ApiConstant {
  static Alice alice = Alice(
    configuration: AliceConfiguration(showNotification: kDebugMode, showShareButton: kDebugMode, showInspectorOnShake: kDebugMode),
  )..addAdapter(aliceDioAdapter);
  static AliceDioAdapter aliceDioAdapter = AliceDioAdapter();
}
