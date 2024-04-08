import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/widgets/views/content_state_view/content_state_view.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'ContentStateView';

final contentStateViewStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'Loading variant',
    child: const _LoadingStateViewLoadingStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Error variant',
    child: const _LoadingStateViewErrorStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Empty data variant',
    child: const _LoadingStateViewEmptyDataStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Data loaded variant',
    child: const _LoadingStateViewDataLoadedStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Never loaded variant',
    child: const _LoadingStateViewNeverLoadedStory(),
  ),
];

class _LoadingStateViewLoadingStory extends StatelessWidget {
  const _LoadingStateViewLoadingStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const ContentStateView(
        emptyDataMessage: '',
        errorMessage: '',
        loadingStatus: LoadingStatus.loading,
        isEmpty: false,
      );
}

class _LoadingStateViewErrorStory extends StatelessWidget {
  const _LoadingStateViewErrorStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const ContentStateView(
        emptyDataMessage: '',
        errorMessage: 'Oops, something went wrong.',
        loadingStatus: LoadingStatus.error,
        isEmpty: false,
      );
}

class _LoadingStateViewEmptyDataStory extends StatelessWidget {
  const _LoadingStateViewEmptyDataStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const ContentStateView(
        emptyDataMessage: 'There is no data to display',
        errorMessage: '',
        loadingStatus: LoadingStatus.done,
        isEmpty: true,
      );
}

class _LoadingStateViewDataLoadedStory extends StatelessWidget {
  const _LoadingStateViewDataLoadedStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => ContentStateView(
        emptyDataMessage: '',
        errorMessage: '',
        loadingStatus: LoadingStatus.done,
        isEmpty: false,
        builder: (ctx) => ListView(
          children: const [
            Text('Data1'),
            Text('Data2'),
          ],
        ),
      );
}

class _LoadingStateViewNeverLoadedStory extends StatelessWidget {
  const _LoadingStateViewNeverLoadedStory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => const ContentStateView(
        emptyDataMessage: 'There is no data to display',
        errorMessage: '',
        loadingStatus: LoadingStatus.never,
        isEmpty: true,
      );
}
