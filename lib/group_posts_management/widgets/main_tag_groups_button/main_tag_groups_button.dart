import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_management/widgets/main_tag_groups_button/views/main_tags_disclaimer.dart';
import 'package:animal_aid_app/group_posts_management/widgets/main_tag_info_items/main_tag_info_items.dart';
import 'package:flutter/material.dart';

class MainTagGroupsButton extends StatelessWidget {
  const MainTagGroupsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        icon: const Icon(Icons.help_outline_outlined),
        onPressed: () => _showTagGroupsDialog(context),
      );

  void _showTagGroupsDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (context) => SimpleDialog(
        title: Text(context.strings.favoriteTags),
        children: const [
          MainTagsDisclaimer(),
          MainTagInfoItems(),
        ],
      ),
    );
  }
}
