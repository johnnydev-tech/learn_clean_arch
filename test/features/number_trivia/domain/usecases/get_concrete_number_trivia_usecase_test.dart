import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/entities/number_trivia_entity.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/usecases/get_concrete_number_trivia_usecase.dart';
import 'package:mockito/mockito.dart';

class NumberTriviaRepositoryMock extends Mock
    implements NumberTriviaRepository {}

void main() {
  late NumberTriviaRepositoryMock numberTriviaRepositoryMock;
  late GetConcreteNumberTriviaUsecase usecase;
  late int tNumber;
  late NumberTriviaEntity tNumberTrivia;

  setUp(() {
    numberTriviaRepositoryMock = NumberTriviaRepositoryMock();
    usecase = GetConcreteNumberTriviaUsecase(numberTriviaRepositoryMock);
    tNumberTrivia = const NumberTriviaEntity(number: 1, text: 'test');
    tNumber = 1;
  });

  test('should get concrete number trivia from the repository ...', () async {
    // arrange
    when(numberTriviaRepositoryMock.getConcreteNumberTrivia(tNumber))
        .thenAnswer((_) async => Right(tNumberTrivia));

    // action
    final result = await usecase(Params(number: tNumber));

    // assert
    expect(result, equals(Right(tNumberTrivia)));
    verify(numberTriviaRepositoryMock.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(numberTriviaRepositoryMock);
  });
}
