class CityWeather {
  Location location;
  Current current;
  Forecast forecast;
  Alerts alerts;

  CityWeather({
    required this.location,
    required this.current,
    required this.forecast,
    required this.alerts,
  });

  factory CityWeather.fromMap(Map<String, dynamic> map) {
    return CityWeather(
      location: Location.fromMap(map['location']),
      current: Current.fromMap(map['current']),
      forecast: Forecast.fromMap(map['forecast']),
      alerts: Alerts.fromMap(map['alerts']),
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Location {
  String name;
  String region;
  String localTime;

  Location({
    required this.name,
    required this.region,
    required this.localTime,
  });

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      name: map['name'],
      region: map['region'],
      localTime: map['localtime'],
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Current {
  double currentTemp;
  int isDay;
  Condition condition;
  double wind;
  double pressure;
  double humidity;
  double feelsLike;
  int uv;
  AirQuality airQuality;

  Current({
    required this.currentTemp,
    required this.isDay,
    required this.condition,
    required this.wind,
    required this.pressure,
    required this.humidity,
    required this.feelsLike,
    required this.uv,
    required this.airQuality,
  });

  factory Current.fromMap(Map<String, dynamic> map) {
    return Current(
      currentTemp: map['temp_c'],
      isDay: map['is_day'],
      condition: Condition.fromMap(map['condition']),
      wind: map['wind_kph'],
      pressure: map['pressure_mb'],
      humidity: map['humidity'],
      feelsLike: map['feelslike_c'],
      uv: map['uv'],
      airQuality: AirQuality.fromMap(map['air_quality']),
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Condition {
  String text;
  String icon;
  Condition({
    required this.text,
    required this.icon,
  });

  factory Condition.fromMap(Map<String, dynamic> map) {
    return Condition(
      text: map['text'],
      icon: map['icon'],
    );
  }
}

class AirQuality {
  int usEpaIndex;

  AirQuality({required this.usEpaIndex});

  factory AirQuality.fromMap(Map<String, dynamic> map) {
    return AirQuality(
      usEpaIndex: map['us-epa-index'],
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Forecast {
  List<Forecastday> forecastdays;

  Forecast({
    required this.forecastdays,
  });

  factory Forecast.fromMap(Map<String, dynamic> map) {
    return Forecast(
        forecastdays: List<Forecastday>.from(
            map['forecastday'].map((x) => Forecastday.fromMap(x))));
  }
}

//---------------------------------------------------------
//Mark: Text
class Forecastday {
  String date;
  Day day;
  List<Hour> hours;

  Forecastday({
    required this.date,
    required this.day,
    required this.hours,
  });

  factory Forecastday.fromMap(Map<String, dynamic> map) {
    return Forecastday(
      date: map['date'],
      day: Day.fromMap(map['day']),
      hours: List<Hour>.from(map['hour'].map((x) => Hour.fromMap(x))),
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Day {
  double maxTemp;
  double minTemp;
  int humidity;
  Condition condition;
  int chanceOfRain;
  int uv;

  Day({
    required this.maxTemp,
    required this.minTemp,
    required this.humidity,
    required this.condition,
    required this.chanceOfRain,
    required this.uv,
  });

  factory Day.fromMap(Map<String, dynamic> map) {
    return Day(
      maxTemp: map['maxtemp_c'],
      minTemp: map['mintemp_c'],
      humidity: map['avghumidity'],
      chanceOfRain: map['daily_chance_of_rain'],
      condition: Condition.fromMap(map['condition']),
      uv: map['uv'],
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Hour {
  String time;
  double temp;
  Condition condition;

  Hour({
    required this.time,
    required this.temp,
    required this.condition,
  });

  factory Hour.fromMap(Map<String, dynamic> map) {
    return Hour(
      time: map['time'],
      temp: map['temp_c'],
      condition: Condition.fromMap(map['condition']),
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Alerts {
  List<Alert> alerts;

  Alerts({
    required this.alerts,
  });

  factory Alerts.fromMap(Map<String, dynamic> map) {
    return Alerts(
      alerts: List<Alert>.from(map['alert'].map((x) => Alert.fromMap(x))),
    );
  }
}

//---------------------------------------------------------
//Mark: Text
class Alert {
  String? headline;
  String? event;

  Alert({
    this.headline,
    this.event,
  });

  factory Alert.fromMap(Map<String, dynamic> map) {
    return Alert(
      headline: map['headline'],
      event: map['event'],
    );
  }
}
