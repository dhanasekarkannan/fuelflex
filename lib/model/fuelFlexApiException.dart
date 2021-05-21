class FuelFlexApiException implements Exception {
  final int statusCode;
  final String message;

  const FuelFlexApiException({this.statusCode, this.message});
}