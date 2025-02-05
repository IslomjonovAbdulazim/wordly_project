// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetPasswordRequestModel _$ResetPasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ResetPasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ResetPasswordRequestModel {
  String get access => throw _privateConstructorUsedError;

  /// Serializes this ResetPasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetPasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetPasswordRequestModelCopyWith<ResetPasswordRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordRequestModelCopyWith<$Res> {
  factory $ResetPasswordRequestModelCopyWith(ResetPasswordRequestModel value,
          $Res Function(ResetPasswordRequestModel) then) =
      _$ResetPasswordRequestModelCopyWithImpl<$Res, ResetPasswordRequestModel>;
  @useResult
  $Res call({String access});
}

/// @nodoc
class _$ResetPasswordRequestModelCopyWithImpl<$Res,
        $Val extends ResetPasswordRequestModel>
    implements $ResetPasswordRequestModelCopyWith<$Res> {
  _$ResetPasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetPasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetPasswordRequestModelImplCopyWith<$Res>
    implements $ResetPasswordRequestModelCopyWith<$Res> {
  factory _$$ResetPasswordRequestModelImplCopyWith(
          _$ResetPasswordRequestModelImpl value,
          $Res Function(_$ResetPasswordRequestModelImpl) then) =
      __$$ResetPasswordRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access});
}

/// @nodoc
class __$$ResetPasswordRequestModelImplCopyWithImpl<$Res>
    extends _$ResetPasswordRequestModelCopyWithImpl<$Res,
        _$ResetPasswordRequestModelImpl>
    implements _$$ResetPasswordRequestModelImplCopyWith<$Res> {
  __$$ResetPasswordRequestModelImplCopyWithImpl(
      _$ResetPasswordRequestModelImpl _value,
      $Res Function(_$ResetPasswordRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetPasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
  }) {
    return _then(_$ResetPasswordRequestModelImpl(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetPasswordRequestModelImpl implements _ResetPasswordRequestModel {
  const _$ResetPasswordRequestModelImpl({required this.access});

  factory _$ResetPasswordRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetPasswordRequestModelImplFromJson(json);

  @override
  final String access;

  @override
  String toString() {
    return 'ResetPasswordRequestModel(access: $access)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordRequestModelImpl &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access);

  /// Create a copy of ResetPasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordRequestModelImplCopyWith<_$ResetPasswordRequestModelImpl>
      get copyWith => __$$ResetPasswordRequestModelImplCopyWithImpl<
          _$ResetPasswordRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetPasswordRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ResetPasswordRequestModel implements ResetPasswordRequestModel {
  const factory _ResetPasswordRequestModel({required final String access}) =
      _$ResetPasswordRequestModelImpl;

  factory _ResetPasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$ResetPasswordRequestModelImpl.fromJson;

  @override
  String get access;

  /// Create a copy of ResetPasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordRequestModelImplCopyWith<_$ResetPasswordRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
