// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'confirm_otp_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ConfirmOtpRequestModel _$ConfirmOtpRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ConfirmOtpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ConfirmOtpRequestModel {
  String get email => throw _privateConstructorUsedError;
  int get code => throw _privateConstructorUsedError;

  /// Serializes this ConfirmOtpRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ConfirmOtpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConfirmOtpRequestModelCopyWith<ConfirmOtpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmOtpRequestModelCopyWith<$Res> {
  factory $ConfirmOtpRequestModelCopyWith(ConfirmOtpRequestModel value,
          $Res Function(ConfirmOtpRequestModel) then) =
      _$ConfirmOtpRequestModelCopyWithImpl<$Res, ConfirmOtpRequestModel>;
  @useResult
  $Res call({String email, int code});
}

/// @nodoc
class _$ConfirmOtpRequestModelCopyWithImpl<$Res,
        $Val extends ConfirmOtpRequestModel>
    implements $ConfirmOtpRequestModelCopyWith<$Res> {
  _$ConfirmOtpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConfirmOtpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfirmOtpRequestModelImplCopyWith<$Res>
    implements $ConfirmOtpRequestModelCopyWith<$Res> {
  factory _$$ConfirmOtpRequestModelImplCopyWith(
          _$ConfirmOtpRequestModelImpl value,
          $Res Function(_$ConfirmOtpRequestModelImpl) then) =
      __$$ConfirmOtpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int code});
}

/// @nodoc
class __$$ConfirmOtpRequestModelImplCopyWithImpl<$Res>
    extends _$ConfirmOtpRequestModelCopyWithImpl<$Res,
        _$ConfirmOtpRequestModelImpl>
    implements _$$ConfirmOtpRequestModelImplCopyWith<$Res> {
  __$$ConfirmOtpRequestModelImplCopyWithImpl(
      _$ConfirmOtpRequestModelImpl _value,
      $Res Function(_$ConfirmOtpRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConfirmOtpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$ConfirmOtpRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ConfirmOtpRequestModelImpl implements _ConfirmOtpRequestModel {
  _$ConfirmOtpRequestModelImpl({required this.email, required this.code});

  factory _$ConfirmOtpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConfirmOtpRequestModelImplFromJson(json);

  @override
  final String email;
  @override
  final int code;

  @override
  String toString() {
    return 'ConfirmOtpRequestModel(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfirmOtpRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of ConfirmOtpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfirmOtpRequestModelImplCopyWith<_$ConfirmOtpRequestModelImpl>
      get copyWith => __$$ConfirmOtpRequestModelImplCopyWithImpl<
          _$ConfirmOtpRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ConfirmOtpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ConfirmOtpRequestModel implements ConfirmOtpRequestModel {
  factory _ConfirmOtpRequestModel(
      {required final String email,
      required final int code}) = _$ConfirmOtpRequestModelImpl;

  factory _ConfirmOtpRequestModel.fromJson(Map<String, dynamic> json) =
      _$ConfirmOtpRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  int get code;

  /// Create a copy of ConfirmOtpRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConfirmOtpRequestModelImplCopyWith<_$ConfirmOtpRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
