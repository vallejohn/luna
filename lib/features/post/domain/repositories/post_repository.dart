import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:luna/core/states/data_state.dart';
import 'package:luna/core/states/failure.dart';
import 'package:luna/core/utils/enums.dart';
import 'package:luna/features/post/data/data_sources/post_data_source.dart';

abstract class PostRepository{
  final PostDataSource postDataSource;
  PostRepository({required this.postDataSource});

  Future<Either<Failure, DataState<Stream<QuerySnapshot>, PostError>>> getAllPosts();
}