import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wordly_project/domain/entities/home/unit_entity.dart';

part 'unit_response_model.freezed.dart';
part 'unit_response_model.g.dart';

@freezed
class UnitResponseModel with _$UnitResponseModel {
  const factory UnitResponseModel({
    required int id,
    required int number,
    required String name,
    required int book,
  }) = _UnitResponseModel;

  factory UnitResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UnitResponseModelFromJson(json);
}

extension UnitResponseModelX on UnitResponseModel {
  UnitEntity toEntity() {
    return UnitEntity(
      id: id,
      number: number,
      name: name,
      book: book,
    );
  }
}
