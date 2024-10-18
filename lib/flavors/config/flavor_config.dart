import 'build_flavor.dart';

/// Initialise and assign values to each specific flavor here
/// Current flavors [dev, prod]
class FlavorConfig {
  static final FlavorConfig _obj = FlavorConfig._internal();

  static FlavorConfig get instance => _obj;

  //flavor variables
  BuildFlavor? buildFlavor;

  String? baseUrl;
  String appName = "APP_NAME";
  //TODO: Handle the null
  String? dynamicLink;
  String? packageName;
  String? appStoreId;
  String? fcmServerKey;

  factory FlavorConfig() {
    return _obj;
  }

  FlavorConfig._internal();

  Future<void> setupFlavor({required BuildFlavor flavorConfig}) async {
    switch (flavorConfig) {
      case BuildFlavor.dev:
        {
          buildFlavor = BuildFlavor.dev;
          baseUrl = "";
          appName = "SUI DAAGA (Dev)";
          packageName = "com.suidaaga.sui_daga.dev";
          fcmServerKey =
              "AAAALyzkCbk:APA91bHdXGQRzzjTAHMyEDXbTu8dr7BtoJm-uSlWgNDpAonsCnm7XldsWoslUsK7rLQcabU2b_QwSne4WrCuUKCmlhqK9ulr5LJeD7kaOQ9sOxX47V4L-2MxF15_dVE5lSAAPp4dtc24";
        }
        break;
      case BuildFlavor.prod:
        {
          buildFlavor = BuildFlavor.prod;
          baseUrl = "";
          appName = "SUI DAAGA";
          packageName = "com.suidaaga.sui_daga";
          fcmServerKey =
              "AAAAnQTs3FE:APA91bEegTfkfLtKYcX3lXbtqgF54WrAvQ11P1DCZZggYPlbJ3-wOWxFLeegN8Mns0UBtLGbCAaDGzSqX01ibbHdYRQeEC4XvMFJSnC8W_Z636tzlAbWjz9j_Dr8jX5ttG5fGrkMXL9p";
        }
        break;
    }
  }
}
