import 'package:flutter_planets/planets/data/providers/planet_provider.dart';
import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';

class FakePlanetProvider implements PlanetProvider {
  final Map<PlanetId, Planet> _planets = Map.unmodifiable({
    PlanetId.mercury: Planet(
      id: PlanetId.mercury.toString(),
      planetId: PlanetId.mercury,
      name: 'Меркурий',
      image: 'assets/mercury.gif',
    ),
    PlanetId.venus: Planet(
      id: PlanetId.venus.toString(),
      planetId: PlanetId.venus,
      name: 'Венера',
      image: 'assets/venus.gif',
    ),
    PlanetId.earth: Planet(
      id: PlanetId.earth.toString(),
      planetId: PlanetId.earth,
      name: 'Земля',
      image: 'assets/earth.gif',
    ),
    PlanetId.mars: Planet(
      id: PlanetId.mars.toString(),
      planetId: PlanetId.mars,
      name: 'Марс',
      image: 'assets/mars.gif',
    ),
    PlanetId.jupiter: Planet(
      id: PlanetId.jupiter.toString(),
      planetId: PlanetId.jupiter,
      name: 'Юпитер',
      image: 'assets/jupiter.gif',
    ),
    PlanetId.saturn: Planet(
      id: PlanetId.saturn.toString(),
      planetId: PlanetId.saturn,
      name: 'Сатурн',
      image: 'assets/saturn.gif',
    ),
    PlanetId.uranus: Planet(
      id: PlanetId.uranus.toString(),
      planetId: PlanetId.uranus,
      name: 'Уран',
      image: 'assets/uranus.gif',
    ),
    PlanetId.neptune: Planet(
      id: PlanetId.neptune.toString(),
      planetId: PlanetId.neptune,
      name: 'Нептун',
      image: 'assets/neptune.gif',
    ),
  });

  @override
  Future<Planet> getPlanetByPlanetId(PlanetId planetId) async {
    return _planets[planetId];
  }

  @override
  Future<List<Planet>> getPlanets() async {
    return _planets.values.toList();
  }
}
