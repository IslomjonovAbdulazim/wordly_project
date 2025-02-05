// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookResponseModelImpl _$$BookResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookResponseModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      image: json['image'] as String,
      number: (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$BookResponseModelImplToJson(
        _$BookResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'number': instance.number,
    };
