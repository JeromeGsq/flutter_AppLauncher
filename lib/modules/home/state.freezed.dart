// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  HomeStateInitial initial() {
    return const HomeStateInitial();
  }

  HomeStateFailure failure() {
    return const HomeStateFailure();
  }

  HomeStateSuccess success({@required List<ApplicationWithIcon> applications}) {
    return HomeStateSuccess(
      applications: applications,
    );
  }
}

// ignore: unused_element
const $HomeState = _$HomeStateTearOff();

mixin _$HomeState {
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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
    @required Result success(HomeStateSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    Result success(HomeStateSuccess value),
    @required Result orElse(),
  });
}

abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

abstract class $HomeStateInitialCopyWith<$Res> {
  factory $HomeStateInitialCopyWith(
          HomeStateInitial value, $Res Function(HomeStateInitial) then) =
      _$HomeStateInitialCopyWithImpl<$Res>;
}

class _$HomeStateInitialCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateInitialCopyWith<$Res> {
  _$HomeStateInitialCopyWithImpl(
      HomeStateInitial _value, $Res Function(HomeStateInitial) _then)
      : super(_value, (v) => _then(v as HomeStateInitial));

  @override
  HomeStateInitial get _value => super._value as HomeStateInitial;
}

class _$HomeStateInitial
    with DiagnosticableTreeMixin
    implements HomeStateInitial {
  const _$HomeStateInitial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeStateInitial);
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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
    @required Result success(HomeStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    Result success(HomeStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInitial implements HomeState {
  const factory HomeStateInitial() = _$HomeStateInitial;
}

abstract class $HomeStateFailureCopyWith<$Res> {
  factory $HomeStateFailureCopyWith(
          HomeStateFailure value, $Res Function(HomeStateFailure) then) =
      _$HomeStateFailureCopyWithImpl<$Res>;
}

class _$HomeStateFailureCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateFailureCopyWith<$Res> {
  _$HomeStateFailureCopyWithImpl(
      HomeStateFailure _value, $Res Function(HomeStateFailure) _then)
      : super(_value, (v) => _then(v as HomeStateFailure));

  @override
  HomeStateFailure get _value => super._value as HomeStateFailure;
}

class _$HomeStateFailure
    with DiagnosticableTreeMixin
    implements HomeStateFailure {
  const _$HomeStateFailure();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.failure()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.failure'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is HomeStateFailure);
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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
    @required Result success(HomeStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return failure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    Result success(HomeStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailure implements HomeState {
  const factory HomeStateFailure() = _$HomeStateFailure;
}

abstract class $HomeStateSuccessCopyWith<$Res> {
  factory $HomeStateSuccessCopyWith(
          HomeStateSuccess value, $Res Function(HomeStateSuccess) then) =
      _$HomeStateSuccessCopyWithImpl<$Res>;
  $Res call({List<ApplicationWithIcon> applications});
}

class _$HomeStateSuccessCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateSuccessCopyWith<$Res> {
  _$HomeStateSuccessCopyWithImpl(
      HomeStateSuccess _value, $Res Function(HomeStateSuccess) _then)
      : super(_value, (v) => _then(v as HomeStateSuccess));

  @override
  HomeStateSuccess get _value => super._value as HomeStateSuccess;

  @override
  $Res call({
    Object applications = freezed,
  }) {
    return _then(HomeStateSuccess(
      applications: applications == freezed
          ? _value.applications
          : applications as List<ApplicationWithIcon>,
    ));
  }
}

class _$HomeStateSuccess
    with DiagnosticableTreeMixin
    implements HomeStateSuccess {
  const _$HomeStateSuccess({@required this.applications})
      : assert(applications != null);

  @override
  final List<ApplicationWithIcon> applications;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.success(applications: $applications)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.success'))
      ..add(DiagnosticsProperty('applications', applications));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is HomeStateSuccess &&
            (identical(other.applications, applications) ||
                const DeepCollectionEquality()
                    .equals(other.applications, applications)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(applications);

  @override
  $HomeStateSuccessCopyWith<HomeStateSuccess> get copyWith =>
      _$HomeStateSuccessCopyWithImpl<HomeStateSuccess>(this, _$identity);

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
    @required Result initial(HomeStateInitial value),
    @required Result failure(HomeStateFailure value),
    @required Result success(HomeStateSuccess value),
  }) {
    assert(initial != null);
    assert(failure != null);
    assert(success != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(HomeStateInitial value),
    Result failure(HomeStateFailure value),
    Result success(HomeStateSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class HomeStateSuccess implements HomeState {
  const factory HomeStateSuccess(
      {@required List<ApplicationWithIcon> applications}) = _$HomeStateSuccess;

  List<ApplicationWithIcon> get applications;
  $HomeStateSuccessCopyWith<HomeStateSuccess> get copyWith;
}
