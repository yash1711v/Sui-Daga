import 'package:vibration/vibration.dart';

bool isValidUrl(String url) {
  final uri = Uri.tryParse(url);
  return uri != null && (uri.scheme == 'http' || uri.scheme == 'https');
}


void vibratePhone() async {
  // Check if the device supports vibration
  bool? canVibrate = await Vibration.hasVibrator();

  if (canVibrate == true) {
    // Vibrate for a default duration (e.g., 500ms)
    Vibration.vibrate(duration: 500);
  }
}