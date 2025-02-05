// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unit_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnitResponseModelImpl _$$UnitResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UnitResponseModelImpl(
      id: (json['id'] as num).toInt(),
      number: (json['number'] as num).toInt(),
      name: json['name'] as String,
      book: (json['book'] as num).toInt(),
    );

Map<String, dynamic> _$$UnitResponseModelImplToJson(
        _$UnitResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'book': instance.book,
    };
