import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_planets/planets/data/providers/planet_provider.dart';
import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';
import 'package:flutter_planets/planets/domain/failures/planet_failure.dart';
import 'package:flutter_planets/planets/domain/repositories/planet_repository.dart';

class FakePlanetRepository implements PlanetRepository {
  final PlanetProvider planetProvider;

  FakePlanetRepository({@required this.planetProvider})
      : assert(planetProvider != null);

  @override
  Future<Either<PlanetFailure, Planet>> getPlanetByPlanetId(
      PlanetId planetId) async {
    return Right(await planetProvider.getPlanetByPlanetId(planetId));
  }

  @override
  Future<Either<PlanetFailure, List<Planet>>> getPlanets() async {
    return Right(await planetProvider.getPlanets());
  }
}
