import 'package:animal_aid_app/common/services/navigator_service.dart';
import 'package:animal_aid_app/common/services/user_preferences_service.dart';
import 'package:animal_aid_app/common/styles/theme.dart';
import 'package:animal_aid_app/onboarding/models/progress_animation_vector.dart';
import 'package:animal_aid_app/onboarding/utils/get_onboarding_pages_data.dart';
import 'package:animal_aid_app/onboarding/widgets/views/onboarding_body/onboarding_body.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

const _initialPage = 0;
const _pageAnimationCurve = Curves.ease;

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // ignore: avoid_redundant_argument_values
  final PageController _controller = PageController(initialPage: _initialPage);
  final UserPreferencesService _userPreferencesService =
      GetIt.I<UserPreferencesService>();
  final NavigatorService _navigator = GetIt.I<NavigatorService>();

  int _lastPageNumber = _initialPage;
  int _onboardingPagesCount = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.read(context);
    final swipeDuration = appTheme.timing.semiFast;
    final onboardingPages = getOnboardingPagesData(context);

    _onboardingPagesCount = onboardingPages.length;

    return WillPopScope(
      onWillPop: () => _onWillPop(swipeDuration),
      child: PageView.builder(
        controller: _controller,
        onPageChanged: _updateLastPageNumber,
        itemCount: _onboardingPagesCount,
        itemBuilder: (_, currentPageIndex) {
          final onboardingPageData = onboardingPages[currentPageIndex];
          final progressAnimationVector = ProgressAnimationVector.calc(
            pageNumber: currentPageIndex + 1,
            lastPageNumber: _lastPageNumber,
            pageLength: _onboardingPagesCount,
          );

          return OnboardingBody(
            onPrev: () => _onPrev(swipeDuration),
            onNext: () => _onNext(
              swipeDuration: swipeDuration,
              currentPageIndex: currentPageIndex,
            ),
            onSkip: _onFinishedOnboarding,
            lastProgressPosition: progressAnimationVector.from,
            currentProgressPosition: progressAnimationVector.to,
            onboardingPageColor: onboardingPageData.pageColor,
            onboardingImagePath: onboardingPageData.imagePath,
            onboardingLabel: onboardingPageData.label,
            onboardingDescription: onboardingPageData.description,
            previousPageButtonVisible: currentPageIndex != 0,
          );
        },
      ),
    );
  }

  void _updateLastPageNumber(int currentPageIndex) {
    if (mounted) {
      _lastPageNumber = currentPageIndex + 1;
    }
  }

  void _onPrev(Duration swipeDuration) => _controller.previousPage(
        duration: swipeDuration,
        curve: _pageAnimationCurve,
      );

  void _onNext({
    required Duration swipeDuration,
    required int currentPageIndex,
  }) {
    currentPageIndex + 1 == _onboardingPagesCount
        ? _onFinishedOnboarding()
        : _controller.nextPage(
            duration: swipeDuration,
            curve: _pageAnimationCurve,
          );
  }

  void _onFinishedOnboarding() {
    _userPreferencesService.markOnboardingAsFinished();
    _navigator.navigateToPostsScreen(
      context: context,
      clearStack: true,
    );
  }

  Future<bool> _onWillPop(Duration swipeDuration) async {
    await _controller.previousPage(
      duration: swipeDuration,
      curve: _pageAnimationCurve,
    );

    return false;
  }
}
