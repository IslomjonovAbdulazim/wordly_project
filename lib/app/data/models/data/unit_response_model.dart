import 'package:freezed_annotation/freezed_annotation.dart';

part 'unit_response_model.freezed.dart';

part 'unit_response_model.g.dart';

@freezed
class UnitResponseModel with _$UnitResponseModel {
  const factory UnitResponseModel({
    required int id,
    required int number,
    required String name,
    required String book,
  }) = _UnitResponseModel;

  factory UnitResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UnitResponseModelFromJson(json);
}
