import 'package:device_apps/device_apps.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = FavoritesStateInitial;

  const factory FavoritesState.failure() = FavoritesStateFailure;

  const factory FavoritesState.success({
    @required List<ApplicationWithIcon> applications,
  }) = FavoritesStateSuccess;
}
