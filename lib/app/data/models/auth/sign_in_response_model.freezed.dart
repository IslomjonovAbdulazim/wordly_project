// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignInResponseModel _$SignInResponseModelFromJson(Map<String, dynamic> json) {
  return _SignInResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignInResponseModel {
  String get access => throw _privateConstructorUsedError;
  String get refresh => throw _privateConstructorUsedError;

  /// Serializes this SignInResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SignInResponseModelCopyWith<SignInResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInResponseModelCopyWith<$Res> {
  factory $SignInResponseModelCopyWith(
          SignInResponseModel value, $Res Function(SignInResponseModel) then) =
      _$SignInResponseModelCopyWithImpl<$Res, SignInResponseModel>;
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class _$SignInResponseModelCopyWithImpl<$Res, $Val extends SignInResponseModel>
    implements $SignInResponseModelCopyWith<$Res> {
  _$SignInResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_value.copyWith(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignInResponseModelImplCopyWith<$Res>
    implements $SignInResponseModelCopyWith<$Res> {
  factory _$$SignInResponseModelImplCopyWith(_$SignInResponseModelImpl value,
          $Res Function(_$SignInResponseModelImpl) then) =
      __$$SignInResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access, String refresh});
}

/// @nodoc
class __$$SignInResponseModelImplCopyWithImpl<$Res>
    extends _$SignInResponseModelCopyWithImpl<$Res, _$SignInResponseModelImpl>
    implements _$$SignInResponseModelImplCopyWith<$Res> {
  __$$SignInResponseModelImplCopyWithImpl(_$SignInResponseModelImpl _value,
      $Res Function(_$SignInResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
    Object? refresh = null,
  }) {
    return _then(_$SignInResponseModelImpl(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignInResponseModelImpl implements _SignInResponseModel {
  const _$SignInResponseModelImpl(
      {required this.access, required this.refresh});

  factory _$SignInResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignInResponseModelImplFromJson(json);

  @override
  final String access;
  @override
  final String refresh;

  @override
  String toString() {
    return 'SignInResponseModel(access: $access, refresh: $refresh)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInResponseModelImpl &&
            (identical(other.access, access) || other.access == access) &&
            (identical(other.refresh, refresh) || other.refresh == refresh));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access, refresh);

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      __$$SignInResponseModelImplCopyWithImpl<_$SignInResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignInResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SignInResponseModel implements SignInResponseModel {
  const factory _SignInResponseModel(
      {required final String access,
      required final String refresh}) = _$SignInResponseModelImpl;

  factory _SignInResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignInResponseModelImpl.fromJson;

  @override
  String get access;
  @override
  String get refresh;

  /// Create a copy of SignInResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignInResponseModelImplCopyWith<_$SignInResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
