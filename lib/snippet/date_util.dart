import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String get dMMMykkss {
    return DateFormat("d MMM y kk:mm").format(this);
  }

  String get yMd {
    return DateFormat("y-MM-dd").format(this);
  }

  String get kkmm {
    return DateFormat("kk:mm").format(this);
  }
}
