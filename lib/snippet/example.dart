/*
! Batch November Segera Mulai
? START: 6 November 2023
? Buka capekngoding.com untuk Join
*/

import 'package:intl/intl.dart';

class Moment {
  DateTime _date;

  Moment([DateTime? date]) : _date = date ?? DateTime.now();

  // Format the current date
  String format([String pattern = 'yyyy-MM-dd HH:mm:ss']) {
    return DateFormat(pattern).format(_date);
  }

  // Add time to the current date
  Moment add({int days = 0, int hours = 0, int minutes = 0, int seconds = 0}) {
    _date = _date.add(Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
    ));
    return this;
  }

  // Subtract time from the current date
  Moment subtract(
      {int days = 0, int hours = 0, int minutes = 0, int seconds = 0}) {
    _date = _date.subtract(Duration(
      days: days,
      hours: hours,
      minutes: minutes,
      seconds: seconds,
    ));
    return this;
  }

  // Get the start of a unit of time
  DateTime startOf(String unit) {
    switch (unit) {
      case 'year':
        return DateTime(_date.year);
      case 'month':
        return DateTime(_date.year, _date.month);
      case 'day':
        return DateTime(_date.year, _date.month, _date.day);
      case 'hour':
        return DateTime(_date.year, _date.month, _date.day, _date.hour);
      case 'minute':
        return DateTime(
            _date.year, _date.month, _date.day, _date.hour, _date.minute);
      default:
        return _date;
    }
  }

  // Get the end of a unit of time
  DateTime endOf(String unit) {
    switch (unit) {
      case 'year':
        return DateTime(_date.year + 1).subtract(Duration(microseconds: 1));
      case 'month':
        return DateTime(_date.year, _date.month + 1)
            .subtract(Duration(microseconds: 1));
      case 'day':
        return DateTime(_date.year, _date.month, _date.day + 1)
            .subtract(Duration(microseconds: 1));
      case 'hour':
        return DateTime(_date.year, _date.month, _date.day, _date.hour + 1)
            .subtract(Duration(microseconds: 1));
      case 'minute':
        return DateTime(_date.year, _date.month, _date.day, _date.hour,
                _date.minute + 1)
            .subtract(Duration(microseconds: 1));
      default:
        return _date;
    }
  }

  // Check if the current date is before the specified date
  bool isBefore(DateTime date) {
    return _date.isBefore(date);
  }

  // Check if the current date is after the specified date
  bool isAfter(DateTime date) {
    return _date.isAfter(date);
  }

  // Check if the current date is the same as the specified date
  bool isSame(DateTime date) {
    return _date.isAtSameMomentAs(date);
  }

  // Get the underlying DateTime object
  DateTime get dateTime => _date;
}

void main() {
  var moment = Moment();

  print('Current Date: ${moment.format()}');
  print('Start of Month: ${moment.startOf('month')}');
  print('End of Day: ${moment.endOf('day')}');

  var otherDate = DateTime(2023, 1, 1);
  print('Is before other date: ${moment.isBefore(otherDate)}');
  print('Is after other date: ${moment.isAfter(otherDate)}');

  var sameDate = moment.dateTime;
  print('Is same as same date: ${moment.isSame(sameDate)}');

  moment.add(days: 5);
  print('5 days later: ${moment.format()}');

  moment.subtract(hours: 1);
  print('1 hour before: ${moment.format()}');
}
