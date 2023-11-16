// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InfoModelImpl _$$InfoModelImplFromJson(Map<String, dynamic> json) =>
    _$InfoModelImpl(
      userId: json['userId'] as int?,
      id: json['id'] as int?,
      title: json['title'] as String?,
      body: json['body'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$InfoModelImplToJson(_$InfoModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'url': instance.url,
    };
