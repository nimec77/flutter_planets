import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_planets/planets/domain/constants.dart';
import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';
import 'package:flutter_planets/planets/domain/failures/planet_failure.dart';
import 'package:flutter_planets/planets/domain/repositories/planet_repository.dart';
import 'package:spritewidget/spritewidget.dart';

class GetListPlanetsWithRequired {
  final PlanetRepository planetRepository;

  const GetListPlanetsWithRequired({@required this.planetRepository}) : assert(planetRepository != null);

  Future<Either<PlanetFailure, List<Planet>>> call(PlanetId planetId) async {
    final eitherPlanets = await planetRepository.getPlanets();

    return eitherPlanets.fold(
      (fail) => Left(fail),
      (planets) async {
        if (planets.length < kPlanetsListSize) {
          return const Left(PlanetFailure.wrongLength());
        }
        final eitherPlanet = await planetRepository.getPlanetByPlanetId(planetId);
        return eitherPlanet.map((planet) {
          final randoms = List.generate(planets.length, (index) => index)
            ..shuffle()
            ..sublist(0, kPlanetsListSize);
          final randomPlanets = randoms.map((index) => planets[index]).toList();
          if (randomPlanets.contains(planet)) {
            randomPlanets[randomInt(kPlanetsListSize)] = planet;
          }
          return randomPlanets;
        });
      },
    );
  }
}
