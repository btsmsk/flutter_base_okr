import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/settings/controllers/settings_controller.dart';
import 'package:flutter_base_okr/utils/dimens.dart';
import 'package:get/get.dart';

class SettingsScreen extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Settings'),
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.only(
                        left: Dimens.SMALL,
                        right: Dimens.SMALL,
                        top: Dimens.LARGE,
                        bottom: Dimens.XXSMALL),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('General',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: Dimens.MEDIUM,
                              fontWeight: FontWeight.bold)),
                    )),
                _buildNotificationRows(
                    context,
                    'Appearance',
                    'Choose between light or dark',
                    'Appearance clicked.',
                    const Icon(Icons.palette)),
                _buildNotificationRows(
                    context,
                    'Image quality',
                    'Adjust image resolution',
                    'Image quality clicked.',
                    const Icon(Icons.image)),
                _buildNotificationRows(
                    context,
                    'Default browser',
                    'In-App browser',
                    'Default browser clicked.',
                    const Icon(Icons.open_in_browser_rounded)),
                const Padding(
                    padding: EdgeInsets.only(
                        left: Dimens.SMALL,
                        right: Dimens.SMALL,
                        top: Dimens.LARGE,
                        bottom: Dimens.XXSMALL),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Services',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.black38,
                              fontSize: Dimens.MEDIUM,
                              fontWeight: FontWeight.bold)),
                    )),
                _buildNotificationRows(
                    context,
                    'Notifications',
                    'Adjust launch announcements',
                    'Notifications clicked.',
                    const Icon(Icons.notifications))
              ],
            ),
          ),
        ),
      );

  Widget _buildNotificationRows(BuildContext context, String title,
          String subtitle, String snackbarMessage, Icon startIcon) =>
      ListTile(
          dense: true,
          title: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: Dimens.MEDIUM,
                fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            style: const TextStyle(
                color: Colors.black38,
                fontSize: Dimens.MEDIUM,
                fontWeight: FontWeight.normal),
          ),
          leading: startIcon,
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            _buildSnackbar(context, snackbarMessage);
          });

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> _buildSnackbar(
          BuildContext context, String message) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          action: SnackBarAction(
            label: '',
            onPressed: () {},
          ),
        ),
      );
}
