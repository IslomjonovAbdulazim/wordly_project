import 'package:dartz/dartz.dart';

import '../../utils/errors/network_failure.dart';
import '../entities/home/book_entity.dart';
import '../entities/home/unit_entity.dart';

abstract class HomeRepository {
  Future<Either<NetworkFailure, List<BookEntity>>> books();

  Future<Either<NetworkFailure, List<UnitEntity>>> units(int bookID);
}
