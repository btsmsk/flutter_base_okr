class Endpoints {
  Endpoints._();

  // base url
  static const baseUrl = 'https://api.spacexdata.com/v4';

  // vehicles endpoints
  static const getRockets = '$baseUrl/rockets';
  static const getShips = '$baseUrl/ships';
  static const getRoadster = '$baseUrl/roadster';
  static const getDragons = '$baseUrl/dragons';

  // launches
  static const launches = '/launches';
  static const upcoming = '$baseUrl$launches/upcoming';
  static const specific_launch = '$baseUrl$launches/';

  // company
  static const company = '$baseUrl/company';
  static const achievements = '$baseUrl/history';
}
