import 'package:dartz/dartz.dart';
import 'package:flutter_planets/planets/data/providers/fake_planet_provider.dart';
import 'package:flutter_planets/planets/data/providers/planet_provider.dart';
import 'package:flutter_planets/planets/data/repositories/fake_planet_repository.dart';
import 'package:flutter_planets/planets/domain/constants.dart';
import 'package:flutter_planets/planets/domain/entities/planet.dart';
import 'package:flutter_planets/planets/domain/enums/planet_id.dart';
import 'package:flutter_planets/planets/domain/failures/planet_failure.dart';
import 'package:flutter_planets/planets/domain/repositories/planet_repository.dart';
import 'package:flutter_planets/planets/domain/usecases/get_list_planets_with_required.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockPlanetRepository extends Mock implements PlanetRepository {}

void main() {
  GetListPlanetsWithRequired getListPlanetsWithRequired;
  PlanetProvider fakePlanetProvider;
  MockPlanetRepository mockPlanetRepository;
  PlanetRepository fakePlanetRepository;

  setUp(() {
    fakePlanetProvider = FakePlanetProvider();
    mockPlanetRepository = MockPlanetRepository();
    getListPlanetsWithRequired =
        GetListPlanetsWithRequired(planetRepository: mockPlanetRepository);
    fakePlanetRepository =
        FakePlanetRepository(planetProvider: fakePlanetProvider);
  });

  test('should give the wrong length to get a list of planet', () async {
    when(mockPlanetRepository.getPlanets())
        .thenAnswer((_) async => const Left(PlanetFailure.wrongLength()));
    when(mockPlanetRepository.getPlanetByPlanetId(any))
        .thenAnswer((_) async => const Left(PlanetFailure.notFound()));

    final result = await getListPlanetsWithRequired(PlanetId.saturn);

    expect(result, const Left(PlanetFailure.wrongLength()));
    verify(mockPlanetRepository.getPlanets());
    verifyNoMoreInteractions(mockPlanetRepository);
  });

  test('should issue not found to receive planet', () async {
    when(mockPlanetRepository.getPlanets()).thenAnswer((_) async =>
        Right(List.generate(kPlanetsListSize, (_) => const Planet.empty())));
    when(mockPlanetRepository.getPlanetByPlanetId(any))
        .thenAnswer((_) async => const Left(PlanetFailure.notFound()));

    final result = await getListPlanetsWithRequired(PlanetId.saturn);

    expect(result, const Left(PlanetFailure.notFound()));
    verify(mockPlanetRepository.getPlanets());
    verify(mockPlanetRepository.getPlanetByPlanetId(any));
    verifyNoMoreInteractions(mockPlanetRepository);
  });

  test('should give a random list of planets with required', () async {
    final eitherPlanets = fakePlanetRepository.getPlanets();
    final eitherSaturn =
        fakePlanetRepository.getPlanetByPlanetId(PlanetId.saturn);
    when(mockPlanetRepository.getPlanets())
        .thenAnswer((_) async => eitherPlanets);
    when(mockPlanetRepository.getPlanetByPlanetId(PlanetId.saturn))
        .thenAnswer((_) async => eitherSaturn);

    final result = await getListPlanetsWithRequired(PlanetId.saturn);

    expect(result, isA<Right>());
    final resultPlanets = result | [];
    final saturn =
        await fakePlanetProvider.getPlanetByPlanetId(PlanetId.saturn);
    expect(resultPlanets, anyElement(saturn));
    verify(mockPlanetRepository.getPlanets());
    verify(mockPlanetRepository.getPlanetByPlanetId(PlanetId.saturn));
    verifyNoMoreInteractions(mockPlanetRepository);
  });
}
