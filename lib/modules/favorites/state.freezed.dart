// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$FavoritesStateTearOff {
  const _$FavoritesStateTearOff();

  FavoritesStateInitial initial() {
    return const FavoritesStateInitial();
  }

  FavoritesStateFailure failure() {
    return const FavoritesStateFailure();
  }

  FavoritesStateSuccess success(
      {@required List<ApplicationWithIcon> applications}) {
    return FavoritesStateSuccess(
      applications: applications,
    );
  }
}

// ignore: unused_element
const $FavoritesState = _$FavoritesStateTearOff();

mixin _$FavoritesState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result success(List<ApplicationWithIcon> applications),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result success(List<ApplicationWithIcon> applications),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FavoritesStateInitial value),
    @required Result failure(FavoritesStateFailure value),
    @required Result success(FavoritesStateSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FavoritesStateInitial value),
    Result failure(FavoritesStateFailure value),
    Result success(FavoritesStateSuccess value),
    @required Result orElse(),
  });
}

abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res>;
}

class _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

  final FavoritesState _value;
  // ignore: unused_field
  final $Res Function(FavoritesState) _then;
}

abstract class $FavoritesStateInitialCopyWith<$Res> {
  factory $FavoritesStateInitialCopyWith(FavoritesStateInitial value,
          $Res Function(FavoritesStateInitial) then) =
      _$FavoritesStateInitialCopyWithImpl<$Res>;
}

class _$FavoritesStateInitialCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateInitialCopyWith<$Res> {
  _$FavoritesStateInitialCopyWithImpl(
      FavoritesStateInitial _value, $Res Function(FavoritesStateInitial) _then)
      : super(_value, (v) => _then(v as FavoritesStateInitial));

  @override
  FavoritesStateInitial get _value => super._value as FavoritesStateInitial;
}

class _$FavoritesStateInitial
    with DiagnosticableTreeMixin
    implements FavoritesStateInitial {
  const _$FavoritesStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FavoritesState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavoritesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result success(List<ApplicationWithIcon> applications),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result success(List<ApplicationWithIcon> applications),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FavoritesStateInitial value),
    @required Result failure(FavoritesStateFailure value),
    @required Result success(FavoritesStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FavoritesStateInitial value),
    Result failure(FavoritesStateFailure value),
    Result success(FavoritesStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateInitial implements FavoritesState {
  const factory FavoritesStateInitial() = _$FavoritesStateInitial;
}

abstract class $FavoritesStateFailureCopyWith<$Res> {
  factory $FavoritesStateFailureCopyWith(FavoritesStateFailure value,
          $Res Function(FavoritesStateFailure) then) =
      _$FavoritesStateFailureCopyWithImpl<$Res>;
}

class _$FavoritesStateFailureCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateFailureCopyWith<$Res> {
  _$FavoritesStateFailureCopyWithImpl(
      FavoritesStateFailure _value, $Res Function(FavoritesStateFailure) _then)
      : super(_value, (v) => _then(v as FavoritesStateFailure));

  @override
  FavoritesStateFailure get _value => super._value as FavoritesStateFailure;
}

class _$FavoritesStateFailure
    with DiagnosticableTreeMixin
    implements FavoritesStateFailure {
  const _$FavoritesStateFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'FavoritesState.failure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavoritesStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result success(List<ApplicationWithIcon> applications),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return failure();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result success(List<ApplicationWithIcon> applications),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FavoritesStateInitial value),
    @required Result failure(FavoritesStateFailure value),
    @required Result success(FavoritesStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FavoritesStateInitial value),
    Result failure(FavoritesStateFailure value),
    Result success(FavoritesStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateFailure implements FavoritesState {
  const factory FavoritesStateFailure() = _$FavoritesStateFailure;
}

abstract class $FavoritesStateSuccessCopyWith<$Res> {
  factory $FavoritesStateSuccessCopyWith(FavoritesStateSuccess value,
          $Res Function(FavoritesStateSuccess) then) =
      _$FavoritesStateSuccessCopyWithImpl<$Res>;
  $Res call({List<ApplicationWithIcon> applications});
}

class _$FavoritesStateSuccessCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res>
    implements $FavoritesStateSuccessCopyWith<$Res> {
  _$FavoritesStateSuccessCopyWithImpl(
      FavoritesStateSuccess _value, $Res Function(FavoritesStateSuccess) _then)
      : super(_value, (v) => _then(v as FavoritesStateSuccess));

  @override
  FavoritesStateSuccess get _value => super._value as FavoritesStateSuccess;

  @override
  $Res call({
    Object applications = freezed,
  }) {
    return _then(FavoritesStateSuccess(
      applications: applications == freezed
          ? _value.applications
          : applications as List<ApplicationWithIcon>,
    ));
  }
}

class _$FavoritesStateSuccess
    with DiagnosticableTreeMixin
    implements FavoritesStateSuccess {
  const _$FavoritesStateSuccess({@required this.applications})
      : assert(applications != null);

  @override
  final List<ApplicationWithIcon> applications;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'FavoritesState.success(applications: $applications)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'FavoritesState.success'))
      ..add(DiagnosticsProperty('applications', applications));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoritesStateSuccess &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(applications);

  @override
  $FavoritesStateSuccessCopyWith<FavoritesStateSuccess> get copyWith =>
      _$FavoritesStateSuccessCopyWithImpl<FavoritesStateSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result failure(),
    @required Result success(List<ApplicationWithIcon> applications),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return success(applications);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result failure(),
    Result success(List<ApplicationWithIcon> applications),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(applications);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(FavoritesStateInitial value),
    @required Result failure(FavoritesStateFailure value),
    @required Result success(FavoritesStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(FavoritesStateInitial value),
    Result failure(FavoritesStateFailure value),
    Result success(FavoritesStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class FavoritesStateSuccess implements FavoritesState {
  const factory FavoritesStateSuccess(
          {@required List<ApplicationWithIcon> applications}) =
      _$FavoritesStateSuccess;

  List<ApplicationWithIcon> get applications;
  $FavoritesStateSuccessCopyWith<FavoritesStateSuccess> get copyWith;
}
