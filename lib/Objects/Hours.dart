class Hours {
  static const TIME_TO_HOUR = 3600;
  static const TIME_TO_MINUTE = 60;
  static const weekdays = [
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday",
    "sunday"
  ];

  dynamic _hours;

  Hours(dynamic hours){
    _hours = hours;
  }

  factory Hours.fromJson(Map<String, dynamic> parsedJson) {
    return Hours(parsedJson);
  }

  static String getDay() {
    return weekdays[DateTime.now().weekday - 1];
  }

  static double currTimeHours() {
    return DateTime.now().hour + DateTime.now().minute / 60;
  }

  static int currTimeMinutes() {
    return DateTime.now().minute;
  }

  bool hasHours(){
    return _hours != null;
  }
  
  bool getClosed(String day){
    if( hasHours())
    return _hours[day]["closed"] == 0 ;
    return true;
  }
  double getOpenHour(String day) {
    if(hasHours())
    return _hours[day]["open"] / TIME_TO_HOUR;
    return -1;
  }

  double getOpenMinute(String day) {
        if(hasHours())
    return _hours[day]["open"] / TIME_TO_MINUTE;
    return -1;
  }

  double getCloseHour(String day) {
    if(hasHours())
    return _hours[day]["close"] / TIME_TO_HOUR;
    return -1;
  }

  double getCloseMinute(String day) {
    if(hasHours())
    return _hours[day]["close"] / TIME_TO_MINUTE;
    return -1;
  }
}
