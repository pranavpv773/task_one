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
mixin _$ContractEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String query)? searchContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchContract value) searchContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchContract value)? searchContract,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchContract value)? searchContract,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractEventCopyWith<$Res> {
  factory $ContractEventCopyWith(
          ContractEvent value, $Res Function(ContractEvent) then) =
      _$ContractEventCopyWithImpl<$Res, ContractEvent>;
}

/// @nodoc
class _$ContractEventCopyWithImpl<$Res, $Val extends ContractEvent>
    implements $ContractEventCopyWith<$Res> {
  _$ContractEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeCopyWith<$Res> {
  factory _$$InitializeCopyWith(
          _$Initialize value, $Res Function(_$Initialize) then) =
      __$$InitializeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCopyWithImpl<$Res>
    extends _$ContractEventCopyWithImpl<$Res, _$Initialize>
    implements _$$InitializeCopyWith<$Res> {
  __$$InitializeCopyWithImpl(
      _$Initialize _value, $Res Function(_$Initialize) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initialize implements Initialize {
  const _$Initialize();

  @override
  String toString() {
    return 'ContractEvent.initialize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initialize);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchContract,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String query)? searchContract,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchContract,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchContract value) searchContract,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchContract value)? searchContract,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchContract value)? searchContract,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements ContractEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$SearchContractCopyWith<$Res> {
  factory _$$SearchContractCopyWith(
          _$SearchContract value, $Res Function(_$SearchContract) then) =
      __$$SearchContractCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchContractCopyWithImpl<$Res>
    extends _$ContractEventCopyWithImpl<$Res, _$SearchContract>
    implements _$$SearchContractCopyWith<$Res> {
  __$$SearchContractCopyWithImpl(
      _$SearchContract _value, $Res Function(_$SearchContract) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchContract(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchContract implements SearchContract {
  const _$SearchContract({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'ContractEvent.searchContract(query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchContract &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchContractCopyWith<_$SearchContract> get copyWith =>
      __$$SearchContractCopyWithImpl<_$SearchContract>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function(String query) searchContract,
  }) {
    return searchContract(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function(String query)? searchContract,
  }) {
    return searchContract?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function(String query)? searchContract,
    required TResult orElse(),
  }) {
    if (searchContract != null) {
      return searchContract(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(SearchContract value) searchContract,
  }) {
    return searchContract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(SearchContract value)? searchContract,
  }) {
    return searchContract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(SearchContract value)? searchContract,
    required TResult orElse(),
  }) {
    if (searchContract != null) {
      return searchContract(this);
    }
    return orElse();
  }
}

abstract class SearchContract implements ContractEvent {
  const factory SearchContract({required final String query}) =
      _$SearchContract;

  String get query;
  @JsonKey(ignore: true)
  _$$SearchContractCopyWith<_$SearchContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContractState {
  List<TeamModel> get teamModel => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContractStateCopyWith<ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractStateCopyWith<$Res> {
  factory $ContractStateCopyWith(
          ContractState value, $Res Function(ContractState) then) =
      _$ContractStateCopyWithImpl<$Res, ContractState>;
  @useResult
  $Res call({List<TeamModel> teamModel, bool isLoading, bool isError});
}

/// @nodoc
class _$ContractStateCopyWithImpl<$Res, $Val extends ContractState>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamModel = null,
    Object? isLoading = null,
    Object? isError = null,
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
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContractStateCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$$_ContractStateCopyWith(
          _$_ContractState value, $Res Function(_$_ContractState) then) =
      __$$_ContractStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TeamModel> teamModel, bool isLoading, bool isError});
}

/// @nodoc
class __$$_ContractStateCopyWithImpl<$Res>
    extends _$ContractStateCopyWithImpl<$Res, _$_ContractState>
    implements _$$_ContractStateCopyWith<$Res> {
  __$$_ContractStateCopyWithImpl(
      _$_ContractState _value, $Res Function(_$_ContractState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teamModel = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_ContractState(
      teamModel: null == teamModel
          ? _value._teamModel
          : teamModel // ignore: cast_nullable_to_non_nullable
              as List<TeamModel>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isError: null == isError
          ? _value.isError
          : isError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ContractState implements _ContractState {
  const _$_ContractState(
      {required final List<TeamModel> teamModel,
      required this.isLoading,
      required this.isError})
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
  final bool isError;

  @override
  String toString() {
    return 'ContractState(teamModel: $teamModel, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractState &&
            const DeepCollectionEquality()
                .equals(other._teamModel, _teamModel) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_teamModel), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      __$$_ContractStateCopyWithImpl<_$_ContractState>(this, _$identity);
}

abstract class _ContractState implements ContractState {
  const factory _ContractState(
      {required final List<TeamModel> teamModel,
      required final bool isLoading,
      required final bool isError}) = _$_ContractState;

  @override
  List<TeamModel> get teamModel;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}
