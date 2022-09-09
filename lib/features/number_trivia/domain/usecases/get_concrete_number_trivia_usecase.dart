import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:learn_clean_arch/core/errors/failures.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:learn_clean_arch/features/number_trivia/domain/entities/number_trivia_entity.dart';

class GetConcreteNumberTriviaUsecase {
  final NumberTriviaRepository _numberTriviaRepository;

  GetConcreteNumberTriviaUsecase(this._numberTriviaRepository);

  Future<Either<Failure, NumberTriviaEntity>?> call(Params params) async {
    return await _numberTriviaRepository.getConcreteNumberTrivia(params.number);
  }
}

class Params extends Equatable {
  final int number;

  const Params({required this.number});

  @override
  List<Object?> get props => [number];
}
