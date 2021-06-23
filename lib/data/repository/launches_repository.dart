import 'package:flutter_base_okr/data/data_source/remote/upcoming/upcoming_remote_data_source.dart';

class LaunchesRepository {
  final UpcomingRemoteDataSource upcomingRemoteDataSource;

  LaunchesRepository({required this.upcomingRemoteDataSource});

  getUpcomingLaunches() async {
    return upcomingRemoteDataSource.getUpcomingLaunches();
  }
}
