// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FirestoreUser _$$_FirestoreUserFromJson(Map<String, dynamic> json) =>
    _$_FirestoreUser(
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      userName: json['userName'] as String,
      email: json['email'] as String,
      followerCount: json['followerCount'] as int,
      followingCount: json['followingCount'] as int,
      userImageURL: json['userImageURL'] as String,
      uid: json['uid'] as String,
    );

Map<String, dynamic> _$$_FirestoreUserToJson(_$_FirestoreUser instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'userName': instance.userName,
      'email': instance.email,
      'followerCount': instance.followerCount,
      'followingCount': instance.followingCount,
      'userImageURL': instance.userImageURL,
      'uid': instance.uid,
    };
