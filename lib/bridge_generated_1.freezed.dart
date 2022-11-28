// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bridge_generated_1.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ISurreal {
  SurrealDb get field0 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurrealDb field0) iDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurrealDb field0)? iDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurrealDb field0)? iDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ISurreal_IDb value) iDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ISurreal_IDb value)? iDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ISurreal_IDb value)? iDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ISurrealCopyWith<ISurreal> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ISurrealCopyWith<$Res> {
  factory $ISurrealCopyWith(ISurreal value, $Res Function(ISurreal) then) = _$ISurrealCopyWithImpl<$Res, ISurreal>;
  @useResult
  $Res call({SurrealDb field0});
}

/// @nodoc
class _$ISurrealCopyWithImpl<$Res, $Val extends ISurreal> implements $ISurrealCopyWith<$Res> {
  _$ISurrealCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_value.copyWith(
      field0: null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SurrealDb,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ISurreal_IDbCopyWith<$Res> implements $ISurrealCopyWith<$Res> {
  factory _$$ISurreal_IDbCopyWith(_$ISurreal_IDb value, $Res Function(_$ISurreal_IDb) then) =
      __$$ISurreal_IDbCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SurrealDb field0});
}

/// @nodoc
class __$$ISurreal_IDbCopyWithImpl<$Res> extends _$ISurrealCopyWithImpl<$Res, _$ISurreal_IDb>
    implements _$$ISurreal_IDbCopyWith<$Res> {
  __$$ISurreal_IDbCopyWithImpl(_$ISurreal_IDb _value, $Res Function(_$ISurreal_IDb) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field0 = null,
  }) {
    return _then(_$ISurreal_IDb(
      null == field0
          ? _value.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as SurrealDb,
    ));
  }
}

/// @nodoc

class _$ISurreal_IDb implements ISurreal_IDb {
  const _$ISurreal_IDb(this.field0);

  @override
  final SurrealDb field0;

  @override
  String toString() {
    return 'ISurreal.iDb(field0: $field0)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ISurreal_IDb &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ISurreal_IDbCopyWith<_$ISurreal_IDb> get copyWith =>
      __$$ISurreal_IDbCopyWithImpl<_$ISurreal_IDb>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SurrealDb field0) iDb,
  }) {
    return iDb(field0);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SurrealDb field0)? iDb,
  }) {
    return iDb?.call(field0);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SurrealDb field0)? iDb,
    required TResult orElse(),
  }) {
    if (iDb != null) {
      return iDb(field0);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ISurreal_IDb value) iDb,
  }) {
    return iDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ISurreal_IDb value)? iDb,
  }) {
    return iDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ISurreal_IDb value)? iDb,
    required TResult orElse(),
  }) {
    if (iDb != null) {
      return iDb(this);
    }
    return orElse();
  }
}

abstract class ISurreal_IDb implements ISurreal {
  const factory ISurreal_IDb(final SurrealDb field0) = _$ISurreal_IDb;

  @override
  SurrealDb get field0;
  @override
  @JsonKey(ignore: true)
  _$$ISurreal_IDbCopyWith<_$ISurreal_IDb> get copyWith => throw _privateConstructorUsedError;
}
