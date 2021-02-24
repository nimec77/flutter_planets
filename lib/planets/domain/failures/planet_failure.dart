import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet_failure.freezed.dart';

@freezed
abstract class PlanetFailure with _$PlanetFailure {
  const factory PlanetFailure.notFound() = _PlanetFailureNotFound;

  const factory PlanetFailure.wrongLength() = _PlanetFailureWtongLength;

  const factory PlanetFailure.unknown() = _PlanetFailureUnknown;
}
