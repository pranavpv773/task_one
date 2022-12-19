// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balance_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BalanceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() fetchBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? fetchBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? fetchBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FetchBalance value) fetchBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchBalance value)? fetchBalance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchBalance value)? fetchBalance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceEventCopyWith<$Res> {
  factory $BalanceEventCopyWith(
          BalanceEvent value, $Res Function(BalanceEvent) then) =
      _$BalanceEventCopyWithImpl<$Res, BalanceEvent>;
}

/// @nodoc
class _$BalanceEventCopyWithImpl<$Res, $Val extends BalanceEvent>
    implements $BalanceEventCopyWith<$Res> {
  _$BalanceEventCopyWithImpl(this._value, this._then);

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
    extends _$BalanceEventCopyWithImpl<$Res, _$Initialize>
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
    return 'BalanceEvent.initialize()';
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
    required TResult Function() fetchBalance,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? fetchBalance,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? fetchBalance,
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
    required TResult Function(FetchBalance value) fetchBalance,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchBalance value)? fetchBalance,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchBalance value)? fetchBalance,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class Initialize implements BalanceEvent {
  const factory Initialize() = _$Initialize;
}

/// @nodoc
abstract class _$$FetchBalanceCopyWith<$Res> {
  factory _$$FetchBalanceCopyWith(
          _$FetchBalance value, $Res Function(_$FetchBalance) then) =
      __$$FetchBalanceCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchBalanceCopyWithImpl<$Res>
    extends _$BalanceEventCopyWithImpl<$Res, _$FetchBalance>
    implements _$$FetchBalanceCopyWith<$Res> {
  __$$FetchBalanceCopyWithImpl(
      _$FetchBalance _value, $Res Function(_$FetchBalance) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchBalance implements FetchBalance {
  const _$FetchBalance();

  @override
  String toString() {
    return 'BalanceEvent.fetchBalance()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FetchBalance);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
    required TResult Function() fetchBalance,
  }) {
    return fetchBalance();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
    TResult? Function()? fetchBalance,
  }) {
    return fetchBalance?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    TResult Function()? fetchBalance,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initialize value) initialize,
    required TResult Function(FetchBalance value) fetchBalance,
  }) {
    return fetchBalance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initialize value)? initialize,
    TResult? Function(FetchBalance value)? fetchBalance,
  }) {
    return fetchBalance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initialize value)? initialize,
    TResult Function(FetchBalance value)? fetchBalance,
    required TResult orElse(),
  }) {
    if (fetchBalance != null) {
      return fetchBalance(this);
    }
    return orElse();
  }
}

abstract class FetchBalance implements BalanceEvent {
  const factory FetchBalance() = _$FetchBalance;
}

/// @nodoc
mixin _$BalanceState {
  List<Datum> get balanceList => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalanceStateCopyWith<BalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalanceStateCopyWith<$Res> {
  factory $BalanceStateCopyWith(
          BalanceState value, $Res Function(BalanceState) then) =
      _$BalanceStateCopyWithImpl<$Res, BalanceState>;
  @useResult
  $Res call({List<Datum> balanceList, bool isLoading, bool isError});
}

/// @nodoc
class _$BalanceStateCopyWithImpl<$Res, $Val extends BalanceState>
    implements $BalanceStateCopyWith<$Res> {
  _$BalanceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balanceList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_value.copyWith(
      balanceList: null == balanceList
          ? _value.balanceList
          : balanceList // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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
abstract class _$$_BalanceStateCopyWith<$Res>
    implements $BalanceStateCopyWith<$Res> {
  factory _$$_BalanceStateCopyWith(
          _$_BalanceState value, $Res Function(_$_BalanceState) then) =
      __$$_BalanceStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Datum> balanceList, bool isLoading, bool isError});
}

/// @nodoc
class __$$_BalanceStateCopyWithImpl<$Res>
    extends _$BalanceStateCopyWithImpl<$Res, _$_BalanceState>
    implements _$$_BalanceStateCopyWith<$Res> {
  __$$_BalanceStateCopyWithImpl(
      _$_BalanceState _value, $Res Function(_$_BalanceState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balanceList = null,
    Object? isLoading = null,
    Object? isError = null,
  }) {
    return _then(_$_BalanceState(
      balanceList: null == balanceList
          ? _value._balanceList
          : balanceList // ignore: cast_nullable_to_non_nullable
              as List<Datum>,
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

class _$_BalanceState implements _BalanceState {
  const _$_BalanceState(
      {required final List<Datum> balanceList,
      required this.isLoading,
      required this.isError})
      : _balanceList = balanceList;

  final List<Datum> _balanceList;
  @override
  List<Datum> get balanceList {
    if (_balanceList is EqualUnmodifiableListView) return _balanceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_balanceList);
  }

  @override
  final bool isLoading;
  @override
  final bool isError;

  @override
  String toString() {
    return 'BalanceState(balanceList: $balanceList, isLoading: $isLoading, isError: $isError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BalanceState &&
            const DeepCollectionEquality()
                .equals(other._balanceList, _balanceList) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isError, isError) || other.isError == isError));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_balanceList), isLoading, isError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BalanceStateCopyWith<_$_BalanceState> get copyWith =>
      __$$_BalanceStateCopyWithImpl<_$_BalanceState>(this, _$identity);
}

abstract class _BalanceState implements BalanceState {
  const factory _BalanceState(
      {required final List<Datum> balanceList,
      required final bool isLoading,
      required final bool isError}) = _$_BalanceState;

  @override
  List<Datum> get balanceList;
  @override
  bool get isLoading;
  @override
  bool get isError;
  @override
  @JsonKey(ignore: true)
  _$$_BalanceStateCopyWith<_$_BalanceState> get copyWith =>
      throw _privateConstructorUsedError;
}
