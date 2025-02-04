import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/entities/auth_user.dart';

part 'book_response_model.freezed.dart';

part 'book_response_model.g.dart';

@freezed
class BookResponseModel with _$BookResponseModel {
  const factory BookResponseModel({
    required int id,
    required String name,
    required String image,
    required int number,
  }) = _BookResponseModel;

  factory BookResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BookResponseModelFromJson(json);
}
