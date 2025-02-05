// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshResponseModel _$RefreshResponseModelFromJson(Map<String, dynamic> json) {
  return _RefreshResponseModel.fromJson(json);
}

/// @nodoc
mixin _$RefreshResponseModel {
  String get access => throw _privateConstructorUsedError;

  /// Serializes this RefreshResponseModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshResponseModelCopyWith<RefreshResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshResponseModelCopyWith<$Res> {
  factory $RefreshResponseModelCopyWith(RefreshResponseModel value,
          $Res Function(RefreshResponseModel) then) =
      _$RefreshResponseModelCopyWithImpl<$Res, RefreshResponseModel>;
  @useResult
  $Res call({String access});
}

/// @nodoc
class _$RefreshResponseModelCopyWithImpl<$Res,
        $Val extends RefreshResponseModel>
    implements $RefreshResponseModelCopyWith<$Res> {
  _$RefreshResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshResponseModel
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
abstract class _$$RefreshResponseModelImplCopyWith<$Res>
    implements $RefreshResponseModelCopyWith<$Res> {
  factory _$$RefreshResponseModelImplCopyWith(_$RefreshResponseModelImpl value,
          $Res Function(_$RefreshResponseModelImpl) then) =
      __$$RefreshResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String access});
}

/// @nodoc
class __$$RefreshResponseModelImplCopyWithImpl<$Res>
    extends _$RefreshResponseModelCopyWithImpl<$Res, _$RefreshResponseModelImpl>
    implements _$$RefreshResponseModelImplCopyWith<$Res> {
  __$$RefreshResponseModelImplCopyWithImpl(_$RefreshResponseModelImpl _value,
      $Res Function(_$RefreshResponseModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? access = null,
  }) {
    return _then(_$RefreshResponseModelImpl(
      access: null == access
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshResponseModelImpl implements _RefreshResponseModel {
  const _$RefreshResponseModelImpl({required this.access});

  factory _$RefreshResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RefreshResponseModelImplFromJson(json);

  @override
  final String access;

  @override
  String toString() {
    return 'RefreshResponseModel(access: $access)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshResponseModelImpl &&
            (identical(other.access, access) || other.access == access));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, access);

  /// Create a copy of RefreshResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshResponseModelImplCopyWith<_$RefreshResponseModelImpl>
      get copyWith =>
          __$$RefreshResponseModelImplCopyWithImpl<_$RefreshResponseModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshResponseModelImplToJson(
      this,
    );
  }
}

abstract class _RefreshResponseModel implements RefreshResponseModel {
  const factory _RefreshResponseModel({required final String access}) =
      _$RefreshResponseModelImpl;

  factory _RefreshResponseModel.fromJson(Map<String, dynamic> json) =
      _$RefreshResponseModelImpl.fromJson;

  @override
  String get access;

  /// Create a copy of RefreshResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshResponseModelImplCopyWith<_$RefreshResponseModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
