class S {
  static final S _obj = S._internal();
  static S get i => _obj;
  factory S() {
    return _obj;
  }
  S._internal();

  // TODO: should be implemented with more cleaner approach
  // used to identify if user is creating or editing profile as both flows use same screen
  // used in edit_profile_screen.dart and profile_home_screen to toggle between create and edit modes
  bool isFromEdit = false;
}
