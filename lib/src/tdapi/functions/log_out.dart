part of '../tdapi.dart';

class LogOut extends TLFunction {
  dynamic extra;

  /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  ///
  LogOut();

  /// Parse from a json
  LogOut.fromJson(Map<String, dynamic> json);

  @override
  Map<String, dynamic> toJson() {
    return {'@type': CONSTRUCTOR, '@extra': this.extra};
  }

  static const String CONSTRUCTOR = 'logOut';

  @override
  String getConstructor() => CONSTRUCTOR;
}