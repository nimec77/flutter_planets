import 'package:dartz/dartz.dart';
import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';
import 'package:flutter_planets/planets/domain/failures/planet_failure.dart';
import 'package:flutter_planets/planets/domain/repositories/planet_repository.dart';

class FakePlanetRepository implements PlanetRepository {
  final _planets = <Planet>[];

  @override
  Future<Either<PlanetFailure, Planet>> getPlanetByPlanetId(PlanetId planetId) async {
    return Right(_planets[0]);
  }

  @override
  Future<Either<PlanetFailure, List<Planet>>> getPlanets() async {
    return Right(_planets);
  }
}
