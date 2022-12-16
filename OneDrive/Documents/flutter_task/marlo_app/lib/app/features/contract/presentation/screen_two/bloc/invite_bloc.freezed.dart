// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invite_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InviteEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeRole value) changeRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeRole value)? changeRole,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeRole value)? changeRole,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InviteEventCopyWith<InviteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteEventCopyWith<$Res> {
  factory $InviteEventCopyWith(
          InviteEvent value, $Res Function(InviteEvent) then) =
      _$InviteEventCopyWithImpl<$Res, InviteEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$InviteEventCopyWithImpl<$Res, $Val extends InviteEvent>
    implements $InviteEventCopyWith<$Res> {
  _$InviteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeRoleCopyWith<$Res>
    implements $InviteEventCopyWith<$Res> {
  factory _$$ChangeRoleCopyWith(
          _$ChangeRole value, $Res Function(_$ChangeRole) then) =
      __$$ChangeRoleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangeRoleCopyWithImpl<$Res>
    extends _$InviteEventCopyWithImpl<$Res, _$ChangeRole>
    implements _$$ChangeRoleCopyWith<$Res> {
  __$$ChangeRoleCopyWithImpl(
      _$ChangeRole _value, $Res Function(_$ChangeRole) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangeRole(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeRole implements ChangeRole {
  const _$ChangeRole(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'InviteEvent.changeRole(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRole &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRoleCopyWith<_$ChangeRole> get copyWith =>
      __$$ChangeRoleCopyWithImpl<_$ChangeRole>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changeRole,
  }) {
    return changeRole(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changeRole,
  }) {
    return changeRole?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changeRole,
    required TResult orElse(),
  }) {
    if (changeRole != null) {
      return changeRole(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeRole value) changeRole,
  }) {
    return changeRole(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeRole value)? changeRole,
  }) {
    return changeRole?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeRole value)? changeRole,
    required TResult orElse(),
  }) {
    if (changeRole != null) {
      return changeRole(this);
    }
    return orElse();
  }
}

abstract class ChangeRole implements InviteEvent {
  const factory ChangeRole(final int index) = _$ChangeRole;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ChangeRoleCopyWith<_$ChangeRole> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$InviteState {
  String get role => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InviteStateCopyWith<InviteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InviteStateCopyWith<$Res> {
  factory $InviteStateCopyWith(
          InviteState value, $Res Function(InviteState) then) =
      _$InviteStateCopyWithImpl<$Res, InviteState>;
  @useResult
  $Res call({String role});
}

/// @nodoc
class _$InviteStateCopyWithImpl<$Res, $Val extends InviteState>
    implements $InviteStateCopyWith<$Res> {
  _$InviteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InviteStateCopyWith<$Res>
    implements $InviteStateCopyWith<$Res> {
  factory _$$_InviteStateCopyWith(
          _$_InviteState value, $Res Function(_$_InviteState) then) =
      __$$_InviteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role});
}

/// @nodoc
class __$$_InviteStateCopyWithImpl<$Res>
    extends _$InviteStateCopyWithImpl<$Res, _$_InviteState>
    implements _$$_InviteStateCopyWith<$Res> {
  __$$_InviteStateCopyWithImpl(
      _$_InviteState _value, $Res Function(_$_InviteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
  }) {
    return _then(_$_InviteState(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InviteState implements _InviteState {
  _$_InviteState({required this.role});

  @override
  final String role;

  @override
  String toString() {
    return 'InviteState(role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InviteState &&
            (identical(other.role, role) || other.role == role));
  }

  @override
  int get hashCode => Object.hash(runtimeType, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InviteStateCopyWith<_$_InviteState> get copyWith =>
      __$$_InviteStateCopyWithImpl<_$_InviteState>(this, _$identity);
}

abstract class _InviteState implements InviteState {
  factory _InviteState({required final String role}) = _$_InviteState;

  @override
  String get role;
  @override
  @JsonKey(ignore: true)
  _$$_InviteStateCopyWith<_$_InviteState> get copyWith =>
      throw _privateConstructorUsedError;
}
