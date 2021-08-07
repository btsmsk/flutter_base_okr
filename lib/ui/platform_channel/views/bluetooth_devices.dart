import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_base_okr/data/models/test/bluetooth_device.dart';
import 'package:flutter_base_okr/ui/platform_channel/controllers/platform_channel_controller.dart';
import 'package:flutter_base_okr/ui/widgets/list/list_cell.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

class BluetoothDevices extends GetView<PlatformChannelController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
            title: const Text('Paired Bluetooth Devices'),
            elevation: Dimens.NONE),
        body: Stack(
          children: [
            const SizedBox(height: Dimens.SIZE_24),
            _buildPairedDeviceList()
          ],
        ),
      );

  Widget _buildPairedDeviceList() => Container(
        child: controller.obx(
          (state) => Padding(
            padding: const EdgeInsets.only(
                left: Dimens.SIZE_8, right: Dimens.SIZE_8),
            child: ListView.separated(
              itemCount: state.length,
              separatorBuilder: (context, position) =>
                  const SizedBox(height: Dimens.SIZE_16),
              itemBuilder: (context, position) =>
                  _buildDeviceItem(state.elementAt(position)),
            ),
          ),
          onError: (error) => Center(
            child: Text(error.toString()),
          ),
          onLoading: const Center(
            child: CircularProgressIndicator(
              color: Colors.black45,
            ),
          ),
        ),
      );

  Widget _buildDeviceItem(BlueToothDeviceModel item) => Card(
        elevation: Dimens.SIZE_2,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.DEFAULT_CARD_RADIUS)),
        child: Column(
          children: [
            ListCell(
              title: item.name,
              subtitle: item.address,
              onTap: () => {},
            ),
          ],
        ),
      );
}
