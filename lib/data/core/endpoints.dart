class Endpoints {
  Endpoints._();

  // base url
  static const baseUrl = "https://api.spacexdata.com/v3";

  // booking endpoints
  static const String getRockets = baseUrl + "/rockets";
  static const String getShips = baseUrl + "/ships";
  static const String getRoadster = baseUrl + "/roadster";
  static const String getDragons = baseUrl + "/dragons";

  // launches
  static const String launches = "/launches";
  static const String upcoming = baseUrl + launches + "/upcoming";
}
