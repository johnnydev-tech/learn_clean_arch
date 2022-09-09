import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_clean_arch/features/number_trivia/data/repositories/number_trivia_repository.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/usecases/get_concrete_number_trivia_usecase.dart';
import 'package:mockito/mockito.dart';

class NumberTriviaRepositoryMock extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTriviaUsecase usecase;
  late NumberTriviaRepositoryMock numberTriviaRepositoryMock;
  late int testNumber;
  late NumberTriviaEntity testNumberTrivia;

  setUp(() {
    numberTriviaRepositoryMock = NumberTriviaRepositoryMock();
    usecase = GetConcreteNumberTriviaUsecase(numberTriviaRepositoryMock);
    testNumber = 1;
    testNumberTrivia = const NumberTriviaEntity(
      number: 1,
      text: 'test',
    );
  });

  test('should get concrete number trivia from the repository ...', () async {
    // arrange
    when(numberTriviaRepositoryMock.getConcreteNumberTrivia(testNumber))
        .thenAnswer((_) async => Right(testNumberTrivia));
    // action
    // assert
  });
}
