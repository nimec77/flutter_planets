import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';

abstract class PlanetProvider {
  Future<List<Planet>> getPlanets();

  Future<Planet> getPlanetByPlanetId(PlanetId planetId);
}
