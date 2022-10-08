class WaetherApi {
  final _baseUrl = 'https://api.weatherapi.com/v1';
  final _searchPart = '/search.json';
  final _currentWeatherPart = '/current.json';
  final _forecastPart = '/forecast.json';
  final _apiKey = 'key=bb7c90acb8314edb95d210411211603&';
  final _aqiPart = 'aqi=yes&';
  final _daysPart = 'days=7&';

  //* parameters (key, q: 'cityName', days, alerts, aqi)
  getWeatherForecast(String city) {}
  searchForCity(String city) {}
}
