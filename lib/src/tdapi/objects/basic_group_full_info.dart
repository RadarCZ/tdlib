part of '../tdapi.dart';

class BasicGroupFullInfo extends TdObject {
  ChatPhoto photo;
  String description;
  int creatorUserId;
  List<ChatMember> members;
  String inviteLink;
  dynamic extra;

  /// Contains full information about a basic group. 
  /// [photo] Chat photo; may be null. 
  /// [description] Group description. 
  /// [creatorUserId] User identifier of the creator of the group; 0 if unknown. 
  /// [members] Group members. 
  /// [inviteLink] Invite link for this group; available only after it has been generated at least once and only for the group creator
  BasicGroupFullInfo({this.photo,
    this.description,
    this.creatorUserId,
    this.members,
    this.inviteLink});

  /// Parse from a json
  BasicGroupFullInfo.fromJson(Map<String, dynamic> json)  {
    this.photo = ChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{});
    this.description = json['description'];
    this.creatorUserId = json['creator_user_id'];
    this.members = List<ChatMember>.from((json['members'] ?? []).map((item) => ChatMember.fromJson(item ?? <String, dynamic>{})).toList());
    this.inviteLink = json['invite_link'];
    this.extra = json['@extra'];
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "photo": this.photo == null ? null : this.photo.toJson(),
      "description": this.description,
      "creator_user_id": this.creatorUserId,
      "members": this.members.map((i) => i.toJson()).toList(),
      "invite_link": this.inviteLink,
    };
  }

  static const CONSTRUCTOR = 'basicGroupFullInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}