// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContractBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTeamFn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTeamFn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTeamFn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchTeamFn value) fetchTeamFn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchTeamFn value)? fetchTeamFn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchTeamFn value)? fetchTeamFn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractBlocEventCopyWith<$Res> {
  factory $ContractBlocEventCopyWith(
          ContractBlocEvent value, $Res Function(ContractBlocEvent) then) =
      _$ContractBlocEventCopyWithImpl<$Res, ContractBlocEvent>;
}

/// @nodoc
class _$ContractBlocEventCopyWithImpl<$Res, $Val extends ContractBlocEvent>
    implements $ContractBlocEventCopyWith<$Res> {
  _$ContractBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_fetchTeamFnCopyWith<$Res> {
  factory _$$_fetchTeamFnCopyWith(
          _$_fetchTeamFn value, $Res Function(_$_fetchTeamFn) then) =
      __$$_fetchTeamFnCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_fetchTeamFnCopyWithImpl<$Res>
    extends _$ContractBlocEventCopyWithImpl<$Res, _$_fetchTeamFn>
    implements _$$_fetchTeamFnCopyWith<$Res> {
  __$$_fetchTeamFnCopyWithImpl(
      _$_fetchTeamFn _value, $Res Function(_$_fetchTeamFn) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_fetchTeamFn implements _fetchTeamFn {
  const _$_fetchTeamFn();

  @override
  String toString() {
    return 'ContractBlocEvent.fetchTeamFn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_fetchTeamFn);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchTeamFn,
  }) {
    return fetchTeamFn();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchTeamFn,
  }) {
    return fetchTeamFn?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchTeamFn,
    required TResult orElse(),
  }) {
    if (fetchTeamFn != null) {
      return fetchTeamFn();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_fetchTeamFn value) fetchTeamFn,
  }) {
    return fetchTeamFn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_fetchTeamFn value)? fetchTeamFn,
  }) {
    return fetchTeamFn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_fetchTeamFn value)? fetchTeamFn,
    required TResult orElse(),
  }) {
    if (fetchTeamFn != null) {
      return fetchTeamFn(this);
    }
    return orElse();
  }
}

abstract class _fetchTeamFn implements ContractBlocEvent {
  const factory _fetchTeamFn() = _$_fetchTeamFn;
}

/// @nodoc
mixin _$ContractBlocState {
  List<TeamModel> get teamModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractBlocStateCopyWith<ContractBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractBlocStateCopyWith<$Res> {
  factory $ContractBlocStateCopyWith(
          ContractBlocState value, $Res Function(ContractBlocState) then) =
      _$ContractBlocStateCopyWithImpl<$Res, ContractBlocState>;
  @useResult
  $Res call({List<TeamModel> teamModel, bool isLoading});
}

/// @nodoc
class _$ContractBlocStateCopyWithImpl<$Res, $Val extends ContractBlocState>
    implements $ContractBlocStateCopyWith<$Res> {
  _$ContractBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamModel = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      teamModel: null == teamModel
          ? _value.teamModel
          : teamModel // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContractBlocStateCopyWith<$Res>
    implements $ContractBlocStateCopyWith<$Res> {
  factory _$$_ContractBlocStateCopyWith(_$_ContractBlocState value,
          $Res Function(_$_ContractBlocState) then) =
      __$$_ContractBlocStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeamModel> teamModel, bool isLoading});
}

/// @nodoc
class __$$_ContractBlocStateCopyWithImpl<$Res>
    extends _$ContractBlocStateCopyWithImpl<$Res, _$_ContractBlocState>
    implements _$$_ContractBlocStateCopyWith<$Res> {
  __$$_ContractBlocStateCopyWithImpl(
      _$_ContractBlocState _value, $Res Function(_$_ContractBlocState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamModel = null,
    Object? isLoading = null,
  }) {
    return _then(_$_ContractBlocState(
      teamModel: null == teamModel
          ? _value._teamModel
          : teamModel // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContractBlocState implements _ContractBlocState {
  _$_ContractBlocState(
      {required final List<TeamModel> teamModel, required this.isLoading})
      : _teamModel = teamModel;

  final List<TeamModel> _teamModel;
  @override
  List<TeamModel> get teamModel {
    if (_teamModel is EqualUnmodifiableListView) return _teamModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teamModel);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ContractBlocState(teamModel: $teamModel, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractBlocState &&
            const DeepCollectionEquality()
                .equals(other._teamModel, _teamModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_teamModel), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractBlocStateCopyWith<_$_ContractBlocState> get copyWith =>
      __$$_ContractBlocStateCopyWithImpl<_$_ContractBlocState>(
          this, _$identity);
}

abstract class _ContractBlocState implements ContractBlocState {
  factory _ContractBlocState(
      {required final List<TeamModel> teamModel,
      required final bool isLoading}) = _$_ContractBlocState;

  @override
  List<TeamModel> get teamModel;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$_ContractBlocStateCopyWith<_$_ContractBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}
