import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'following_token.freezed.dart';
part 'following_token.g.dart';

@freezed
abstract class FollowingToken with _$FollowingToken {
  // DBに保存する
  // createdAtやIdが必要
  // 自分がフォローした印
  const factory FollowingToken({
    required dynamic createdAt,
    required String passiveUid,
    required String tokenId,
  }) = _FollowingToken;
  factory FollowingToken.fromJson(Map<String, dynamic> json) =>
      _$FollowingTokenFromJson(json);
}
