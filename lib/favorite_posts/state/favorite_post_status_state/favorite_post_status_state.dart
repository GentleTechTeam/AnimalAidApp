class FavoritePostStatusState {
  final bool isFavorite;

  FavoritePostStatusState({required this.isFavorite});

  factory FavoritePostStatusState.initial() => FavoritePostStatusState(
        isFavorite: false,
      );

  FavoritePostStatusState copyWith({
    bool? isFavorite,
  }) =>
      FavoritePostStatusState(
        isFavorite: isFavorite ?? this.isFavorite,
      );
}
