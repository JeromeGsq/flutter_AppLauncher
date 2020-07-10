import 'package:device_apps/device_apps.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeStateInitial;

  const factory HomeState.failure() = HomeStateFailure;

  const factory HomeState.success({
    @required List<ApplicationWithIcon> applications,
  }) = HomeStateSuccess;
}
