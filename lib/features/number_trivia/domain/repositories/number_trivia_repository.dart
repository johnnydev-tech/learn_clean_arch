import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';
import '../entities/number_trivia_entity.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTriviaEntity>>? getConcreteNumberTrivia(
      int number);
  Future<Either<Failure, NumberTriviaEntity>>? getRandomNumberTrivia();
}
