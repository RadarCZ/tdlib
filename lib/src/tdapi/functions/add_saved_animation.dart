part of '../tdapi.dart';

class AddSavedAnimation extends TdFunction {
  InputFile animation;
  dynamic extra;

  /// Manually adds a new animation to the list of saved animations. The new animation is added to the beginning of the list. If the animation was already in the list, it is removed first. Only non-secret video animations with MIME type "video/mp4" can be added to the list. 
  /// [animation] The animation file to be added. Only animations known to the server (i.e. successfully sent via a message) can be added to the list
  AddSavedAnimation({this.animation});

  /// Parse from a json
  AddSavedAnimation.fromJson(Map<String, dynamic> json) ;

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation == null ? null : this.animation.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addSavedAnimation';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}