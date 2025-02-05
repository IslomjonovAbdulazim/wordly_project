// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_password_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChangePasswordRequestModel _$ChangePasswordRequestModelFromJson(
    Map<String, dynamic> json) {
  return _ChangePasswordRequestModel.fromJson(json);
}

/// @nodoc
mixin _$ChangePasswordRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Serializes this ChangePasswordRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangePasswordRequestModelCopyWith<ChangePasswordRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangePasswordRequestModelCopyWith<$Res> {
  factory $ChangePasswordRequestModelCopyWith(ChangePasswordRequestModel value,
          $Res Function(ChangePasswordRequestModel) then) =
      _$ChangePasswordRequestModelCopyWithImpl<$Res,
          ChangePasswordRequestModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$ChangePasswordRequestModelCopyWithImpl<$Res,
        $Val extends ChangePasswordRequestModel>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  _$ChangePasswordRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangePasswordRequestModelImplCopyWith<$Res>
    implements $ChangePasswordRequestModelCopyWith<$Res> {
  factory _$$ChangePasswordRequestModelImplCopyWith(
          _$ChangePasswordRequestModelImpl value,
          $Res Function(_$ChangePasswordRequestModelImpl) then) =
      __$$ChangePasswordRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$ChangePasswordRequestModelImplCopyWithImpl<$Res>
    extends _$ChangePasswordRequestModelCopyWithImpl<$Res,
        _$ChangePasswordRequestModelImpl>
    implements _$$ChangePasswordRequestModelImplCopyWith<$Res> {
  __$$ChangePasswordRequestModelImplCopyWithImpl(
      _$ChangePasswordRequestModelImpl _value,
      $Res Function(_$ChangePasswordRequestModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ChangePasswordRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChangePasswordRequestModelImpl implements _ChangePasswordRequestModel {
  const _$ChangePasswordRequestModelImpl(
      {required this.email, required this.password});

  factory _$ChangePasswordRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChangePasswordRequestModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ChangePasswordRequestModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordRequestModelImplCopyWith<_$ChangePasswordRequestModelImpl>
      get copyWith => __$$ChangePasswordRequestModelImplCopyWithImpl<
          _$ChangePasswordRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChangePasswordRequestModelImplToJson(
      this,
    );
  }
}

abstract class _ChangePasswordRequestModel
    implements ChangePasswordRequestModel {
  const factory _ChangePasswordRequestModel(
      {required final String email,
      required final String password}) = _$ChangePasswordRequestModelImpl;

  factory _ChangePasswordRequestModel.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;

  /// Create a copy of ChangePasswordRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangePasswordRequestModelImplCopyWith<_$ChangePasswordRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
