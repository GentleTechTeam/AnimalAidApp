import 'package:equatable/equatable.dart';

class PostMeta extends Equatable {
  final String groupId;
  final String postId;

  const PostMeta({
    required this.groupId,
    required this.postId,
  });

  @override
  List<Object> get props => [groupId, postId];
}
