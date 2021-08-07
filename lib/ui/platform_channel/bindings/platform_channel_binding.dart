import 'package:flutter_base_okr/ui/platform_channel/controllers/platform_channel_controller.dart';
import 'package:get/get.dart';

class PlatformChannelBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<PlatformChannelController>(() => PlatformChannelController());
  }
}