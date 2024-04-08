import 'package:animal_aid_app/common/api/index.dart';
import 'package:animal_aid_app/common/widgets/views/toggleable_items/toggleable_items.dart';
import 'package:animal_aid_app/storybook_main.dart';
import 'package:flutter/material.dart';

const storiesSectionName = 'ToggleableItems';

final toggleableItemsStories = [
  SimpleStory(
    section: storiesSectionName,
    name: 'None selected',
    child: _NoneSelectedStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Some selected',
    child: _SomeSelectedStory(),
  ),
  SimpleStory(
    section: storiesSectionName,
    name: 'Stateful',
    child: _WithStateStory(),
  ),
];

class _NoneSelectedStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ToggleableItems<GMainTagGroupsData_mainTagGroups>(
        items: _mainTagGroupsMock,
        toggledItems: const {},
        extractKeyFromItem: (item) => item.id,
        extractLabelFromItem: (item) => item.label,
      );
}

class _SomeSelectedStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      ToggleableItems<GMainTagGroupsData_mainTagGroups>(
        items: _mainTagGroupsMock,
        toggledItems: const {'1', '3'},
        extractKeyFromItem: (item) => item.id,
        extractLabelFromItem: (item) => item.label,
      );
}

class _WithStateStory extends StatefulWidget {
  @override
  _WithStateStoryState createState() => _WithStateStoryState();
}

class _WithStateStoryState extends State<_WithStateStory> {
  final Set<String> toggledItemsIds = {'1', '3'};

  @override
  Widget build(BuildContext context) =>
      ToggleableItems<GMainTagGroupsData_mainTagGroups>(
        items: _mainTagGroupsMock,
        toggledItems: toggledItemsIds,
        extractKeyFromItem: (item) => item.id,
        extractLabelFromItem: (item) => item.label,
        onItemPressed: (item, isToggled) => setState(() => {
              isToggled
                  ? toggledItemsIds.remove(item.id)
                  : toggledItemsIds.add(item.id),
            }),
      );
}

final _mainTagGroupsMock = [
  GMainTagGroupsData_mainTagGroups((b) => b
    ..id = '1'
    ..label = 'First group'
    ..tagKeys.add('#1')),
  GMainTagGroupsData_mainTagGroups((b) => b
    ..id = '2'
    ..label = 'Second group'
    ..tagKeys.add('#2')),
  GMainTagGroupsData_mainTagGroups((b) => b
    ..id = '3'
    ..label = 'Third group'
    ..tagKeys.add('#3')),
  GMainTagGroupsData_mainTagGroups((b) => b
    ..id = '4'
    ..label = 'Fourth group'
    ..tagKeys.add('#4')),
];
