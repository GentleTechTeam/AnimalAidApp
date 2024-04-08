class AppInfoState {
  final String name = 'AnimalAidApp';
  final String version;
  final String privacyPolicyUrl;
  final String supportEmail;

  AppInfoState({
    required this.version,
    required this.privacyPolicyUrl,
    required this.supportEmail,
  });

  factory AppInfoState.empty() => AppInfoState(
        version: '',
        supportEmail: '',
        privacyPolicyUrl: '',
      );
}
