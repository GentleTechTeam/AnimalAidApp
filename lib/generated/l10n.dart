// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class I18n {
  I18n();

  static I18n? _current;

  static I18n get current {
    assert(_current != null,
        'No instance of I18n was loaded. Try to initialize the I18n delegate before accessing I18n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I18n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I18n();
      I18n._current = instance;

      return instance;
    });
  }

  static I18n of(BuildContext context) {
    final instance = I18n.maybeOf(context);
    assert(instance != null,
        'No instance of I18n present in the widget tree. Did you add I18n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I18n? maybeOf(BuildContext context) {
    return Localizations.of<I18n>(context, I18n);
  }

  /// `Without location`
  String get withoutLocation {
    return Intl.message(
      'Without location',
      name: 'withoutLocation',
      desc: '',
      args: [],
    );
  }

  /// `Enter location name`
  String get enterLocationName {
    return Intl.message(
      'Enter location name',
      name: 'enterLocationName',
      desc: '',
      args: [],
    );
  }

  /// `Nothing found. Try to change the query`
  String get emptySearchDataMessage {
    return Intl.message(
      'Nothing found. Try to change the query',
      name: 'emptySearchDataMessage',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong,\ntry again later`
  String get errorMessage {
    return Intl.message(
      'Oops, something went wrong,\ntry again later',
      name: 'errorMessage',
      desc: '',
      args: [],
    );
  }

  /// `There's nothing here yet,\ntry again later`
  String get noDataMessage {
    return Intl.message(
      'There\'s nothing here yet,\ntry again later',
      name: 'noDataMessage',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get chooseLanguage {
    return Intl.message(
      'Choose language',
      name: 'chooseLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Privacy policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Write us`
  String get writeUs {
    return Intl.message(
      'Write us',
      name: 'writeUs',
      desc: '',
      args: [],
    );
  }

  /// `Link is not supported on your device`
  String get linkNotSupported {
    return Intl.message(
      'Link is not supported on your device',
      name: 'linkNotSupported',
      desc: '',
      args: [],
    );
  }

  /// `system default`
  String get systemDefaultTheme {
    return Intl.message(
      'system default',
      name: 'systemDefaultTheme',
      desc: '',
      args: [],
    );
  }

  /// `light`
  String get lightTheme {
    return Intl.message(
      'light',
      name: 'lightTheme',
      desc: '',
      args: [],
    );
  }

  /// `dark`
  String get darkTheme {
    return Intl.message(
      'dark',
      name: 'darkTheme',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Choose theme`
  String get chooseTheme {
    return Intl.message(
      'Choose theme',
      name: 'chooseTheme',
      desc: '',
      args: [],
    );
  }

  /// `My requests`
  String get myRequests {
    return Intl.message(
      'My requests',
      name: 'myRequests',
      desc: '',
      args: [],
    );
  }

  /// `communities registration`
  String get groupsRegistration {
    return Intl.message(
      'communities registration',
      name: 'groupsRegistration',
      desc: '',
      args: [],
    );
  }

  /// `No communities available for management.\nTry log in with a different account.`
  String get noGroupsAvailable {
    return Intl.message(
      'No communities available for management.\nTry log in with a different account.',
      name: 'noGroupsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while loading`
  String get errorWhileLoading {
    return Intl.message(
      'An error occurred while loading',
      name: 'errorWhileLoading',
      desc: '',
      args: [],
    );
  }

  /// `Sending the request…`
  String get sendingRequest {
    return Intl.message(
      'Sending the request…',
      name: 'sendingRequest',
      desc: '',
      args: [],
    );
  }

  /// `My communities`
  String get myGroups {
    return Intl.message(
      'My communities',
      name: 'myGroups',
      desc: '',
      args: [],
    );
  }

  /// `management`
  String get management {
    return Intl.message(
      'management',
      name: 'management',
      desc: '',
      args: [],
    );
  }

  /// `Groups management`
  String get groupsManagement {
    return Intl.message(
      'Groups management',
      name: 'groupsManagement',
      desc: '',
      args: [],
    );
  }

  /// `Seems like you don't have any approved groups`
  String get noApprovedGroups {
    return Intl.message(
      'Seems like you don\'t have any approved groups',
      name: 'noApprovedGroups',
      desc: '',
      args: [],
    );
  }

  /// `Changing group location`
  String get changingGroupLocation {
    return Intl.message(
      'Changing group location',
      name: 'changingGroupLocation',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change location`
  String get changingLocationFailure {
    return Intl.message(
      'Failed to change location',
      name: 'changingLocationFailure',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location {
    return Intl.message(
      'Location',
      name: 'location',
      desc: '',
      args: [],
    );
  }

  /// `Not set`
  String get notSet {
    return Intl.message(
      'Not set',
      name: 'notSet',
      desc: '',
      args: [],
    );
  }

  /// `Posts`
  String get posts {
    return Intl.message(
      'Posts',
      name: 'posts',
      desc: '',
      args: [],
    );
  }

  /// `Post`
  String get post {
    return Intl.message(
      'Post',
      name: 'post',
      desc: '',
      args: [],
    );
  }

  /// `Automation`
  String get automation {
    return Intl.message(
      'Automation',
      name: 'automation',
      desc: '',
      args: [],
    );
  }

  /// `Incoming requests`
  String get incomingRequests {
    return Intl.message(
      'Incoming requests',
      name: 'incomingRequests',
      desc: '',
      args: [],
    );
  }

  /// `groups approval`
  String get groupsApproval {
    return Intl.message(
      'groups approval',
      name: 'groupsApproval',
      desc: '',
      args: [],
    );
  }

  /// `Requests handling`
  String get requestsHandling {
    return Intl.message(
      'Requests handling',
      name: 'requestsHandling',
      desc: '',
      args: [],
    );
  }

  /// `No requests`
  String get noRequests {
    return Intl.message(
      'No requests',
      name: 'noRequests',
      desc: '',
      args: [],
    );
  }

  /// `No posts available in this group`
  String get noPostsAvailable {
    return Intl.message(
      'No posts available in this group',
      name: 'noPostsAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Saving...`
  String get saving {
    return Intl.message(
      'Saving...',
      name: 'saving',
      desc: '',
      args: [],
    );
  }

  /// `Saved successfully`
  String get savedSuccessfully {
    return Intl.message(
      'Saved successfully',
      name: 'savedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred while saving`
  String get savingError {
    return Intl.message(
      'An error occurred while saving',
      name: 'savingError',
      desc: '',
      args: [],
    );
  }

  /// `Failed to load hint text`
  String get hintError {
    return Intl.message(
      'Failed to load hint text',
      name: 'hintError',
      desc: '',
      args: [],
    );
  }

  /// `No favorite tags`
  String get noFavoriteTags {
    return Intl.message(
      'No favorite tags',
      name: 'noFavoriteTags',
      desc: '',
      args: [],
    );
  }

  /// `Oops, something went wrong and the tags were not loaded`
  String get noTagsLoadedError {
    return Intl.message(
      'Oops, something went wrong and the tags were not loaded',
      name: 'noTagsLoadedError',
      desc: '',
      args: [],
    );
  }

  /// `Seem like you don't have any favorite posts`
  String get emptyFavoritePostsList {
    return Intl.message(
      'Seem like you don\'t have any favorite posts',
      name: 'emptyFavoritePostsList',
      desc: '',
      args: [],
    );
  }

  /// `Favorite posts`
  String get favoritePostsAppBarName {
    return Intl.message(
      'Favorite posts',
      name: 'favoritePostsAppBarName',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favoritePostMenuTitleName {
    return Intl.message(
      'Favorites',
      name: 'favoritePostMenuTitleName',
      desc: '',
      args: [],
    );
  }

  /// `favorite posts`
  String get favoritePostMenuSubtitleName {
    return Intl.message(
      'favorite posts',
      name: 'favoritePostMenuSubtitleName',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logout {
    return Intl.message(
      'Log out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Geolocation unavailable`
  String get geolocationUnavailable {
    return Intl.message(
      'Geolocation unavailable',
      name: 'geolocationUnavailable',
      desc: '',
      args: [],
    );
  }

  /// `Please enable access in settings`
  String get enableAccessInSettings {
    return Intl.message(
      'Please enable access in settings',
      name: 'enableAccessInSettings',
      desc: '',
      args: [],
    );
  }

  /// `Open settings`
  String get openSettings {
    return Intl.message(
      'Open settings',
      name: 'openSettings',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueMessage {
    return Intl.message(
      'Continue',
      name: 'continueMessage',
      desc: '',
      args: [],
    );
  }

  /// `Failed to access location`
  String get locationAccessFailure {
    return Intl.message(
      'Failed to access location',
      name: 'locationAccessFailure',
      desc: '',
      args: [],
    );
  }

  /// `Oops, seems like you don't have an email app installed`
  String get noMailAppError {
    return Intl.message(
      'Oops, seems like you don\'t have an email app installed',
      name: 'noMailAppError',
      desc: '',
      args: [],
    );
  }

  /// `Oops, seems like you don't have a phone app installed`
  String get noPhoneAppError {
    return Intl.message(
      'Oops, seems like you don\'t have a phone app installed',
      name: 'noPhoneAppError',
      desc: '',
      args: [],
    );
  }

  /// `Oops, seems like you don't have a web browser installed`
  String get noWebBrowserAppError {
    return Intl.message(
      'Oops, seems like you don\'t have a web browser installed',
      name: 'noWebBrowserAppError',
      desc: '',
      args: [],
    );
  }

  /// `Read more`
  String get readMore {
    return Intl.message(
      'Read more',
      name: 'readMore',
      desc: '',
      args: [],
    );
  }

  /// `Image {imageIndex} of {countOfImages}`
  String imageCount(int imageIndex, int countOfImages) {
    return Intl.message(
      'Image $imageIndex of $countOfImages',
      name: 'imageCount',
      desc: '',
      args: [imageIndex, countOfImages],
    );
  }

  /// `Guest`
  String get guest {
    return Intl.message(
      'Guest',
      name: 'guest',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loading {
    return Intl.message(
      'Loading…',
      name: 'loading',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Not active`
  String get notActive {
    return Intl.message(
      'Not active',
      name: 'notActive',
      desc: '',
      args: [],
    );
  }

  /// `Status receiving error`
  String get statusReceivingError {
    return Intl.message(
      'Status receiving error',
      name: 'statusReceivingError',
      desc: '',
      args: [],
    );
  }

  /// `Posts auto import`
  String get postsAutoImport {
    return Intl.message(
      'Posts auto import',
      name: 'postsAutoImport',
      desc: '',
      args: [],
    );
  }

  /// `Available tags`
  String get availableTags {
    return Intl.message(
      'Available tags',
      name: 'availableTags',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Adding tag\n{tag}`
  String addingTag(String tag) {
    return Intl.message(
      'Adding tag\n$tag',
      name: 'addingTag',
      desc: '',
      args: [tag],
    );
  }

  /// `Unable to add tag`
  String get addingTagError {
    return Intl.message(
      'Unable to add tag',
      name: 'addingTagError',
      desc: '',
      args: [],
    );
  }

  /// `Deleting tag\n{tag}`
  String deletingTag(String tag) {
    return Intl.message(
      'Deleting tag\n$tag',
      name: 'deletingTag',
      desc: '',
      args: [tag],
    );
  }

  /// `Unable to delete tag`
  String get deletingTagError {
    return Intl.message(
      'Unable to delete tag',
      name: 'deletingTagError',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Unselect everything`
  String get unselectEverything {
    return Intl.message(
      'Unselect everything',
      name: 'unselectEverything',
      desc: '',
      args: [],
    );
  }

  /// `Select everything`
  String get selectEverything {
    return Intl.message(
      'Select everything',
      name: 'selectEverything',
      desc: '',
      args: [],
    );
  }

  /// `Add favorite tags to your posts to allow users to filter your community content in the shared feed`
  String get mainTagsDisclaimer {
    return Intl.message(
      'Add favorite tags to your posts to allow users to filter your community content in the shared feed',
      name: 'mainTagsDisclaimer',
      desc: '',
      args: [],
    );
  }

  /// `Favorite tags`
  String get favoriteTags {
    return Intl.message(
      'Favorite tags',
      name: 'favoriteTags',
      desc: '',
      args: [],
    );
  }

  /// `Options: `
  String get options {
    return Intl.message(
      'Options: ',
      name: 'options',
      desc: '',
      args: [],
    );
  }

  /// `awaits confirmation`
  String get awaitsConfirmation {
    return Intl.message(
      'awaits confirmation',
      name: 'awaitsConfirmation',
      desc: '',
      args: [],
    );
  }

  /// `request declined`
  String get requestDeclined {
    return Intl.message(
      'request declined',
      name: 'requestDeclined',
      desc: '',
      args: [],
    );
  }

  /// `Update required`
  String get updateRequired {
    return Intl.message(
      'Update required',
      name: 'updateRequired',
      desc: '',
      args: [],
    );
  }

  /// `You seem to have an outdated version of the app installed`
  String get outdatedVersionMessage {
    return Intl.message(
      'You seem to have an outdated version of the app installed',
      name: 'outdatedVersionMessage',
      desc: '',
      args: [],
    );
  }

  /// `Jump to the update`
  String get jumpToTheUpdate {
    return Intl.message(
      'Jump to the update',
      name: 'jumpToTheUpdate',
      desc: '',
      args: [],
    );
  }

  /// `AnimalAidApp`
  String get animalAidApp {
    return Intl.message(
      'AnimalAidApp',
      name: 'animalAidApp',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the Animal Shelter Assistance Platform`
  String get welcomeMessage {
    return Intl.message(
      'Welcome to the Animal Shelter Assistance Platform',
      name: 'welcomeMessage',
      desc: '',
      args: [],
    );
  }

  /// `Be first to know`
  String get beFirstToKnow {
    return Intl.message(
      'Be first to know',
      name: 'beFirstToKnow',
      desc: '',
      args: [],
    );
  }

  /// `The app contains data on shelters in your city`
  String get dataOnSheltersMessage {
    return Intl.message(
      'The app contains data on shelters in your city',
      name: 'dataOnSheltersMessage',
      desc: '',
      args: [],
    );
  }

  /// `Convenient filter by city`
  String get convenientFilter {
    return Intl.message(
      'Convenient filter by city',
      name: 'convenientFilter',
      desc: '',
      args: [],
    );
  }

  /// `Enter your city and get up-to-date information about shelters in your area`
  String get infoAboutSheltersMessage {
    return Intl.message(
      'Enter your city and get up-to-date information about shelters in your area',
      name: 'infoAboutSheltersMessage',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Don't ask again`
  String get doNotAskAgain {
    return Intl.message(
      'Don\'t ask again',
      name: 'doNotAskAgain',
      desc: '',
      args: [],
    );
  }

  /// `Improvement of the feed`
  String get improvementOfTheFeed {
    return Intl.message(
      'Improvement of the feed',
      name: 'improvementOfTheFeed',
      desc: '',
      args: [],
    );
  }

  /// `To filter publications by location, you can use geo position`
  String get postsByLocalityMessage {
    return Intl.message(
      'To filter publications by location, you can use geo position',
      name: 'postsByLocalityMessage',
      desc: '',
      args: [],
    );
  }

  /// `No, thank you`
  String get noThankYou {
    return Intl.message(
      'No, thank you',
      name: 'noThankYou',
      desc: '',
      args: [],
    );
  }

  /// `We were unable to recover location data`
  String get unableToRecoverLocationData {
    return Intl.message(
      'We were unable to recover location data',
      name: 'unableToRecoverLocationData',
      desc: '',
      args: [],
    );
  }

  /// `Determining the approximate location`
  String get determiningApproxLocation {
    return Intl.message(
      'Determining the approximate location',
      name: 'determiningApproxLocation',
      desc: '',
      args: [],
    );
  }

  /// `Settlement established\n{settlement}`
  String settlementEstablished(String settlement) {
    return Intl.message(
      'Settlement established\n$settlement',
      name: 'settlementEstablished',
      desc: '',
      args: [settlement],
    );
  }

  /// `Failed to locate`
  String get failedToLocateError {
    return Intl.message(
      'Failed to locate',
      name: 'failedToLocateError',
      desc: '',
      args: [],
    );
  }

  /// `Actions with post`
  String get actionsWithPost {
    return Intl.message(
      'Actions with post',
      name: 'actionsWithPost',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `The action is available only to authorized users`
  String get availableOnlyToAuthorizedUsers {
    return Intl.message(
      'The action is available only to authorized users',
      name: 'availableOnlyToAuthorizedUsers',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during execution. \n Try again`
  String get execError {
    return Intl.message(
      'An error occurred during execution. \n Try again',
      name: 'execError',
      desc: '',
      args: [],
    );
  }

  /// `Your complaint will be reviewed by a moderator`
  String get reportWillBeReviewed {
    return Intl.message(
      'Your complaint will be reviewed by a moderator',
      name: 'reportWillBeReviewed',
      desc: '',
      args: [],
    );
  }

  /// `Shelter posts`
  String get shelterPosts {
    return Intl.message(
      'Shelter posts',
      name: 'shelterPosts',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `Authorization error`
  String get authError {
    return Intl.message(
      'Authorization error',
      name: 'authError',
      desc: '',
      args: [],
    );
  }

  /// `Try again`
  String get tryAgain {
    return Intl.message(
      'Try again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Back to authorization`
  String get backToAuth {
    return Intl.message(
      'Back to authorization',
      name: 'backToAuth',
      desc: '',
      args: [],
    );
  }

  /// `Authorization completed`
  String get authCompleted {
    return Intl.message(
      'Authorization completed',
      name: 'authCompleted',
      desc: '',
      args: [],
    );
  }

  /// `This post might be missing,\ntry again later`
  String get emptyFavoritePost {
    return Intl.message(
      'This post might be missing,\ntry again later',
      name: 'emptyFavoritePost',
      desc: '',
      args: [],
    );
  }

  /// `Add to favorites`
  String get addToFavorites {
    return Intl.message(
      'Add to favorites',
      name: 'addToFavorites',
      desc: '',
      args: [],
    );
  }

  /// `Remove from favorites`
  String get removeFromFavorites {
    return Intl.message(
      'Remove from favorites',
      name: 'removeFromFavorites',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I18n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I18n> load(Locale locale) => I18n.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
