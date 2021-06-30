import 'package:flutter_base_okr/data/data_source/remote/launch/specific_launch_remote_data_source.dart';
import 'package:flutter_base_okr/data/data_source/remote/launch/upcoming_remote_data_source.dart';
import 'package:flutter_base_okr/data/models/launches/launches.dart';

class LaunchesRepository {
  final UpcomingRemoteDataSource upcomingRemoteDataSource;
  final SpecificLaunchRemoteDataSource specificLaunchRemoteDataSource;

  LaunchesRepository(
      {required this.upcomingRemoteDataSource,
      required this.specificLaunchRemoteDataSource});

  Future<List<Launches>> getUpcomingLaunches() async {
    return upcomingRemoteDataSource.getUpcomingLaunches();
  }

  Future<Launches> getSpecificLaunch(String id) async =>
      specificLaunchRemoteDataSource.getSpecificLaunches(id);
}
