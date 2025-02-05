// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookResponseModel _$BookResponseModelFromJson(Map<String, dynamic> json) {
  return _BookResponseModel.fromJson(json);
}

/// @nodoc
mixin _$BookResponseModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  /// Serializes this BookResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookResponseModelCopyWith<BookResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookResponseModelCopyWith<$Res> {
  factory $BookResponseModelCopyWith(
          BookResponseModel value, $Res Function(BookResponseModel) then) =
      _$BookResponseModelCopyWithImpl<$Res, BookResponseModel>;
  @useResult
  $Res call({int id, String name, String image, int number});
}

/// @nodoc
class _$BookResponseModelCopyWithImpl<$Res, $Val extends BookResponseModel>
    implements $BookResponseModelCopyWith<$Res> {
  _$BookResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookResponseModelImplCopyWith<$Res>
    implements $BookResponseModelCopyWith<$Res> {
  factory _$$BookResponseModelImplCopyWith(_$BookResponseModelImpl value,
          $Res Function(_$BookResponseModelImpl) then) =
      __$$BookResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String image, int number});
}

/// @nodoc
class __$$BookResponseModelImplCopyWithImpl<$Res>
    extends _$BookResponseModelCopyWithImpl<$Res, _$BookResponseModelImpl>
    implements _$$BookResponseModelImplCopyWith<$Res> {
  __$$BookResponseModelImplCopyWithImpl(_$BookResponseModelImpl _value,
      $Res Function(_$BookResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? number = null,
  }) {
    return _then(_$BookResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookResponseModelImpl implements _BookResponseModel {
  const _$BookResponseModelImpl(
      {required this.id,
      required this.name,
      required this.image,
      required this.number});

  factory _$BookResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final int number;

  @override
  String toString() {
    return 'BookResponseModel(id: $id, name: $name, image: $image, number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, image, number);

  /// Create a copy of BookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookResponseModelImplCopyWith<_$BookResponseModelImpl> get copyWith =>
      __$$BookResponseModelImplCopyWithImpl<_$BookResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookResponseModelImplToJson(
      this,
    );
  }
}

abstract class _BookResponseModel implements BookResponseModel {
  const factory _BookResponseModel(
      {required final int id,
      required final String name,
      required final String image,
      required final int number}) = _$BookResponseModelImpl;

  factory _BookResponseModel.fromJson(Map<String, dynamic> json) =
      _$BookResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  int get number;

  /// Create a copy of BookResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookResponseModelImplCopyWith<_$BookResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
