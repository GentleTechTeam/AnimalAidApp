class UserMetaState {
  final bool isAdmin;

  UserMetaState({
    required this.isAdmin,
  });

  static UserMetaState empty() => UserMetaState(isAdmin: false);
}
