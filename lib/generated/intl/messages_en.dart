// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(tag) => "Adding tag\n${tag}";

  static String m1(tag) => "Deleting tag\n${tag}";

  static String m2(imageIndex, countOfImages) =>
      "Image ${imageIndex} of ${countOfImages}";

  static String m3(settlement) => "Settlement established\n${settlement}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "actionsWithPost":
            MessageLookupByLibrary.simpleMessage("Actions with post"),
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "addToFavorites":
            MessageLookupByLibrary.simpleMessage("Add to favorites"),
        "addingTag": m0,
        "addingTagError":
            MessageLookupByLibrary.simpleMessage("Unable to add tag"),
        "all": MessageLookupByLibrary.simpleMessage("All"),
        "animalAidApp": MessageLookupByLibrary.simpleMessage("AnimalAidApp"),
        "authCompleted":
            MessageLookupByLibrary.simpleMessage("Authorization completed"),
        "authError":
            MessageLookupByLibrary.simpleMessage("Authorization error"),
        "automation": MessageLookupByLibrary.simpleMessage("Automation"),
        "availableOnlyToAuthorizedUsers": MessageLookupByLibrary.simpleMessage(
            "The action is available only to authorized users"),
        "availableTags": MessageLookupByLibrary.simpleMessage("Available tags"),
        "awaitsConfirmation":
            MessageLookupByLibrary.simpleMessage("awaits confirmation"),
        "backToAuth":
            MessageLookupByLibrary.simpleMessage("Back to authorization"),
        "beFirstToKnow":
            MessageLookupByLibrary.simpleMessage("Be first to know"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "changingGroupLocation":
            MessageLookupByLibrary.simpleMessage("Changing group location"),
        "changingLocationFailure":
            MessageLookupByLibrary.simpleMessage("Failed to change location"),
        "chooseLanguage":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "chooseTheme": MessageLookupByLibrary.simpleMessage("Choose theme"),
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "continueMessage": MessageLookupByLibrary.simpleMessage("Continue"),
        "convenientFilter":
            MessageLookupByLibrary.simpleMessage("Convenient filter by city"),
        "darkTheme": MessageLookupByLibrary.simpleMessage("dark"),
        "dataOnSheltersMessage": MessageLookupByLibrary.simpleMessage(
            "The app contains data on shelters in your city"),
        "deletingTag": m1,
        "deletingTagError":
            MessageLookupByLibrary.simpleMessage("Unable to delete tag"),
        "determiningApproxLocation": MessageLookupByLibrary.simpleMessage(
            "Determining the approximate location"),
        "doNotAskAgain":
            MessageLookupByLibrary.simpleMessage("Don\'t ask again"),
        "emptyFavoritePost": MessageLookupByLibrary.simpleMessage(
            "This post might be missing,\ntry again later"),
        "emptyFavoritePostsList": MessageLookupByLibrary.simpleMessage(
            "Seem like you don\'t have any favorite posts"),
        "emptySearchDataMessage": MessageLookupByLibrary.simpleMessage(
            "Nothing found. Try to change the query"),
        "enableAccessInSettings": MessageLookupByLibrary.simpleMessage(
            "Please enable access in settings"),
        "enterLocationName":
            MessageLookupByLibrary.simpleMessage("Enter location name"),
        "errorMessage": MessageLookupByLibrary.simpleMessage(
            "Oops, something went wrong,\ntry again later"),
        "errorWhileLoading": MessageLookupByLibrary.simpleMessage(
            "An error occurred while loading"),
        "execError": MessageLookupByLibrary.simpleMessage(
            "An error occurred during execution. \n Try again"),
        "failedToLocateError":
            MessageLookupByLibrary.simpleMessage("Failed to locate"),
        "favoritePostMenuSubtitleName":
            MessageLookupByLibrary.simpleMessage("favorite posts"),
        "favoritePostMenuTitleName":
            MessageLookupByLibrary.simpleMessage("Favorites"),
        "favoritePostsAppBarName":
            MessageLookupByLibrary.simpleMessage("Favorite posts"),
        "favoriteTags": MessageLookupByLibrary.simpleMessage("Favorite tags"),
        "geolocationUnavailable":
            MessageLookupByLibrary.simpleMessage("Geolocation unavailable"),
        "groupsApproval":
            MessageLookupByLibrary.simpleMessage("groups approval"),
        "groupsManagement":
            MessageLookupByLibrary.simpleMessage("Groups management"),
        "groupsRegistration":
            MessageLookupByLibrary.simpleMessage("communities registration"),
        "guest": MessageLookupByLibrary.simpleMessage("Guest"),
        "hintError":
            MessageLookupByLibrary.simpleMessage("Failed to load hint text"),
        "imageCount": m2,
        "improvementOfTheFeed":
            MessageLookupByLibrary.simpleMessage("Improvement of the feed"),
        "incomingRequests":
            MessageLookupByLibrary.simpleMessage("Incoming requests"),
        "infoAboutSheltersMessage": MessageLookupByLibrary.simpleMessage(
            "Enter your city and get up-to-date information about shelters in your area"),
        "jumpToTheUpdate":
            MessageLookupByLibrary.simpleMessage("Jump to the update"),
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "lightTheme": MessageLookupByLibrary.simpleMessage("light"),
        "linkNotSupported": MessageLookupByLibrary.simpleMessage(
            "Link is not supported on your device"),
        "loading": MessageLookupByLibrary.simpleMessage("Loading…"),
        "location": MessageLookupByLibrary.simpleMessage("Location"),
        "locationAccessFailure":
            MessageLookupByLibrary.simpleMessage("Failed to access location"),
        "logout": MessageLookupByLibrary.simpleMessage("Log out"),
        "mainTagsDisclaimer": MessageLookupByLibrary.simpleMessage(
            "Add favorite tags to your posts to allow users to filter your community content in the shared feed"),
        "management": MessageLookupByLibrary.simpleMessage("management"),
        "myGroups": MessageLookupByLibrary.simpleMessage("My communities"),
        "myRequests": MessageLookupByLibrary.simpleMessage("My requests"),
        "noApprovedGroups": MessageLookupByLibrary.simpleMessage(
            "Seems like you don\'t have any approved groups"),
        "noDataMessage": MessageLookupByLibrary.simpleMessage(
            "There\'s nothing here yet,\ntry again later"),
        "noFavoriteTags":
            MessageLookupByLibrary.simpleMessage("No favorite tags"),
        "noGroupsAvailable": MessageLookupByLibrary.simpleMessage(
            "No communities available for management.\nTry log in with a different account."),
        "noMailAppError": MessageLookupByLibrary.simpleMessage(
            "Oops, seems like you don\'t have an email app installed"),
        "noPhoneAppError": MessageLookupByLibrary.simpleMessage(
            "Oops, seems like you don\'t have a phone app installed"),
        "noPostsAvailable": MessageLookupByLibrary.simpleMessage(
            "No posts available in this group"),
        "noRequests": MessageLookupByLibrary.simpleMessage("No requests"),
        "noTagsLoadedError": MessageLookupByLibrary.simpleMessage(
            "Oops, something went wrong and the tags were not loaded"),
        "noThankYou": MessageLookupByLibrary.simpleMessage("No, thank you"),
        "noWebBrowserAppError": MessageLookupByLibrary.simpleMessage(
            "Oops, seems like you don\'t have a web browser installed"),
        "notActive": MessageLookupByLibrary.simpleMessage("Not active"),
        "notSet": MessageLookupByLibrary.simpleMessage("Not set"),
        "ok": MessageLookupByLibrary.simpleMessage("OK"),
        "openSettings": MessageLookupByLibrary.simpleMessage("Open settings"),
        "options": MessageLookupByLibrary.simpleMessage("Options: "),
        "outdatedVersionMessage": MessageLookupByLibrary.simpleMessage(
            "You seem to have an outdated version of the app installed"),
        "post": MessageLookupByLibrary.simpleMessage("Post"),
        "posts": MessageLookupByLibrary.simpleMessage("Posts"),
        "postsAutoImport":
            MessageLookupByLibrary.simpleMessage("Posts auto import"),
        "postsByLocalityMessage": MessageLookupByLibrary.simpleMessage(
            "To filter publications by location, you can use geo position"),
        "privacyPolicy": MessageLookupByLibrary.simpleMessage("Privacy policy"),
        "readMore": MessageLookupByLibrary.simpleMessage("Read more"),
        "removeFromFavorites":
            MessageLookupByLibrary.simpleMessage("Remove from favorites"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "reportWillBeReviewed": MessageLookupByLibrary.simpleMessage(
            "Your complaint will be reviewed by a moderator"),
        "requestDeclined":
            MessageLookupByLibrary.simpleMessage("request declined"),
        "requestsHandling":
            MessageLookupByLibrary.simpleMessage("Requests handling"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "savedSuccessfully":
            MessageLookupByLibrary.simpleMessage("Saved successfully"),
        "saving": MessageLookupByLibrary.simpleMessage("Saving..."),
        "savingError": MessageLookupByLibrary.simpleMessage(
            "An error occurred while saving"),
        "selectEverything":
            MessageLookupByLibrary.simpleMessage("Select everything"),
        "sendingRequest":
            MessageLookupByLibrary.simpleMessage("Sending the request…"),
        "settlementEstablished": m3,
        "shelterPosts": MessageLookupByLibrary.simpleMessage("Shelter posts"),
        "skip": MessageLookupByLibrary.simpleMessage("Skip"),
        "statusReceivingError":
            MessageLookupByLibrary.simpleMessage("Status receiving error"),
        "systemDefaultTheme":
            MessageLookupByLibrary.simpleMessage("system default"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Try again"),
        "unableToRecoverLocationData": MessageLookupByLibrary.simpleMessage(
            "We were unable to recover location data"),
        "unselectEverything":
            MessageLookupByLibrary.simpleMessage("Unselect everything"),
        "updateRequired":
            MessageLookupByLibrary.simpleMessage("Update required"),
        "welcomeMessage": MessageLookupByLibrary.simpleMessage(
            "Welcome to the Animal Shelter Assistance Platform"),
        "withoutLocation":
            MessageLookupByLibrary.simpleMessage("Without location"),
        "writeUs": MessageLookupByLibrary.simpleMessage("Write us")
      };
}
