import 'package:animal_aid_app/common/constants/loading_status.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/group_posts_auto_import_control/utils/generate_status_text.dart';
import 'package:animal_aid_app/group_posts_auto_import_management/widgets/group_posts_auto_import_control/views/auto_import_status_indicator.dart';
import 'package:flutter/material.dart';

class GroupPostsAutoImportControlView extends StatelessWidget {
  final bool isEnabled;
  final VoidCallback onEnable;
  final LoadingStatus loadingStatus;

  const GroupPostsAutoImportControlView({
    Key? key,
    required this.isEnabled,
    required this.onEnable,
    required this.loadingStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(context.strings.postsAutoImport),
        leading: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [Icon(Icons.sync)],
        ),
        selected: isEnabled,
        subtitle: Text(
          generateStatusText(
            context: context,
            loadingStatus: loadingStatus,
            isAutoImportEnabled: isEnabled,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            AutoImportStatusIndicator(status: loadingStatus),
            Switch.adaptive(
              value: isEnabled,
              onChanged: !isEnabled && loadingStatus != LoadingStatus.loading
                  ? (_nextStatus) => onEnable()
                  : null,
            ),
          ],
        ),
      );
}
