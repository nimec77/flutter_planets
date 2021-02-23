import 'package:flutter_planets/planets/domain/enums/planet_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'planet.freezed.dart';

@freezed
abstract class Planet with _$Planet {
  const factory Planet({
    @required String id,
    @required PlanetId planetId,
    @required String name,
    @required String image,
    String description,
  }) = _Planet;

  const factory Planet.empty() = _PlanetEmpty;
}
