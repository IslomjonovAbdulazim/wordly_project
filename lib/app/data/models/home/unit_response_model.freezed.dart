// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UnitResponseModel _$UnitResponseModelFromJson(Map<String, dynamic> json) {
  return _UnitResponseModel.fromJson(json);
}

/// @nodoc
mixin _$UnitResponseModel {
  int get id => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get book => throw _privateConstructorUsedError;

  /// Serializes this UnitResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnitResponseModelCopyWith<UnitResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitResponseModelCopyWith<$Res> {
  factory $UnitResponseModelCopyWith(
          UnitResponseModel value, $Res Function(UnitResponseModel) then) =
      _$UnitResponseModelCopyWithImpl<$Res, UnitResponseModel>;
  @useResult
  $Res call({int id, int number, String name, int book});
}

/// @nodoc
class _$UnitResponseModelCopyWithImpl<$Res, $Val extends UnitResponseModel>
    implements $UnitResponseModelCopyWith<$Res> {
  _$UnitResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? book = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnitResponseModelImplCopyWith<$Res>
    implements $UnitResponseModelCopyWith<$Res> {
  factory _$$UnitResponseModelImplCopyWith(_$UnitResponseModelImpl value,
          $Res Function(_$UnitResponseModelImpl) then) =
      __$$UnitResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int number, String name, int book});
}

/// @nodoc
class __$$UnitResponseModelImplCopyWithImpl<$Res>
    extends _$UnitResponseModelCopyWithImpl<$Res, _$UnitResponseModelImpl>
    implements _$$UnitResponseModelImplCopyWith<$Res> {
  __$$UnitResponseModelImplCopyWithImpl(_$UnitResponseModelImpl _value,
      $Res Function(_$UnitResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? book = null,
  }) {
    return _then(_$UnitResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      book: null == book
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnitResponseModelImpl implements _UnitResponseModel {
  const _$UnitResponseModelImpl(
      {required this.id,
      required this.number,
      required this.name,
      required this.book});

  factory _$UnitResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnitResponseModelImplFromJson(json);

  @override
  final int id;
  @override
  final int number;
  @override
  final String name;
  @override
  final int book;

  @override
  String toString() {
    return 'UnitResponseModel(id: $id, number: $number, name: $name, book: $book)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnitResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.book, book) || other.book == book));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, number, name, book);

  /// Create a copy of UnitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnitResponseModelImplCopyWith<_$UnitResponseModelImpl> get copyWith =>
      __$$UnitResponseModelImplCopyWithImpl<_$UnitResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UnitResponseModelImplToJson(
      this,
    );
  }
}

abstract class _UnitResponseModel implements UnitResponseModel {
  const factory _UnitResponseModel(
      {required final int id,
      required final int number,
      required final String name,
      required final int book}) = _$UnitResponseModelImpl;

  factory _UnitResponseModel.fromJson(Map<String, dynamic> json) =
      _$UnitResponseModelImpl.fromJson;

  @override
  int get id;
  @override
  int get number;
  @override
  String get name;
  @override
  int get book;

  /// Create a copy of UnitResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnitResponseModelImplCopyWith<_$UnitResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
