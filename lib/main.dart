import 'package:flutter/foundation.dart';
import 'package:get_ip_address/src/core.dart';
import 'package:get_ip_address/src/default.dart';

void main() async {
  try {
    /// Initialize Ip Address
    var ipAddress = IpAddress(type: RequestType.json);

    /// Get the IpAddress based on requestType.
    dynamic data = await ipAddress.getIpAddress();
    if (kDebugMode) {
      print(data.toString());
    }
  } on IpAddressException catch (exception) {
    /// Handle the exception.
    if (kDebugMode) {
      print(exception.message);
    }
  }
}
