part of '../tdapi.dart';

class SetPassportElement extends TdFunction {
  InputPassportElement element;
  String password;
  dynamic extra;

  /// Adds an element to the user's Telegram Passport. May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone number or the chosen email address must be verified first. 
  /// [element] Input Telegram Passport element . 
  /// [password] Password of the current user
  SetPassportElement({this.element,
    this.password});

  /// Parse from a json
  SetPassportElement.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "element": this.element == null ? null : this.element.toJson(),
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPassportElement';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}