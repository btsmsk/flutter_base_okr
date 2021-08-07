class BlueToothDeviceModel {
  String? name;
  String? address;
  String? alias;

  BlueToothDeviceModel({this.name, this.address, this.alias});

  factory BlueToothDeviceModel.fromMap(Map<dynamic, dynamic> item) =>
      BlueToothDeviceModel(
          name: item['deviceName'],
          address: item['address'],
          alias: item['alias']);
}
