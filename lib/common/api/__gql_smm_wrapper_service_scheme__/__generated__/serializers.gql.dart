// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:animal_aid_app/common/api/__gql_smm_wrapper_service_scheme__/__generated__/smm_wrapper_service.schema.gql.dart'
    show
        GCharityGroupApprovalStatus,
        GGeoPositionInput,
        GLocationDataInput,
        GRefreshLocationPayload,
        GTogglePostsInFeedPayload;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.data.gql.dart'
    show GAppMetaData, GAppMetaData_appMeta;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.req.gql.dart'
    show GAppMetaReq;
import 'package:animal_aid_app/common/api/app_meta/__generated__/app_meta.var.gql.dart'
    show GAppMetaVars;
import 'package:animal_aid_app/common/api/client_meta/__generated__/client_meta.data.gql.dart'
    show GClientMetaData, GClientMetaData_mobileClientMeta;
import 'package:animal_aid_app/common/api/client_meta/__generated__/client_meta.req.gql.dart'
    show GClientMetaReq;
import 'package:animal_aid_app/common/api/client_meta/__generated__/client_meta.var.gql.dart'
    show GClientMetaVars;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.data.gql.dart'
    show
        GAssignTagToApprovedPostData,
        GAssignTagToApprovedPostData_assignTagToApprovedPost,
        GDeleteTagFromApprovedPostData,
        GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost,
        GGroupPostsData,
        GGroupPostsData_groupPosts,
        GGroupPostsData_groupPosts_items,
        GTogglePostsInFeedData;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.req.gql.dart'
    show
        GAssignTagToApprovedPostReq,
        GDeleteTagFromApprovedPostReq,
        GGroupPostsReq,
        GTogglePostsInFeedReq;
import 'package:animal_aid_app/common/api/group_post/__generated__/group_post.var.gql.dart'
    show
        GAssignTagToApprovedPostVars,
        GDeleteTagFromApprovedPostVars,
        GGroupPostsVars,
        GTogglePostsInFeedVars;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.data.gql.dart'
    show
        GGenerateLocationDataData,
        GGenerateLocationDataData_locationData,
        GRefreshLocationDataData,
        GRefreshLocationDataData_refreshedLocationData,
        GSearchLocationsData,
        GSearchLocationsData_locations;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.req.gql.dart'
    show GGenerateLocationDataReq, GRefreshLocationDataReq, GSearchLocationsReq;
import 'package:animal_aid_app/common/api/location_data/__generated__/location_data.var.gql.dart'
    show
        GGenerateLocationDataVars,
        GRefreshLocationDataVars,
        GSearchLocationsVars;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.data.gql.dart'
    show GMainTagGroupsData, GMainTagGroupsData_mainTagGroups;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.req.gql.dart'
    show GMainTagGroupsReq;
import 'package:animal_aid_app/common/api/main_tag_group/__generated__/main_tag_group.var.gql.dart'
    show GMainTagGroupsVars;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.data.gql.dart'
    show GReportPostConcernData;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.req.gql.dart'
    show GReportPostConcernReq;
import 'package:animal_aid_app/common/api/post_concern/__generated__/post_concern.var.gql.dart'
    show GReportPostConcernVars;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.data.gql.dart'
    show
        GChangeUserGroupLocationData,
        GChangeUserGroupLocationData_changeUserControlledGroupLocation,
        GRequestUserGroupApprovalData,
        GRequestUserGroupApprovalData_requestUserControlledGroupApproval,
        GUserControlledGroupsData,
        GUserControlledGroupsData_userControlledGroups;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.req.gql.dart'
    show
        GChangeUserGroupLocationReq,
        GRequestUserGroupApprovalReq,
        GUserControlledGroupsReq;
import 'package:animal_aid_app/common/api/user_controlled_group/__generated__/user_controlled_groups.var.gql.dart'
    show
        GChangeUserGroupLocationVars,
        GRequestUserGroupApprovalVars,
        GUserControlledGroupsVars;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.data.gql.dart'
    show GUserMetaData, GUserMetaData_userMeta;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.req.gql.dart'
    show GUserMetaReq;
import 'package:animal_aid_app/common/api/user_meta/__generated__/user_meta.var.gql.dart'
    show GUserMetaVars;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.data.gql.dart'
    show
        GGroupApprovalRequestsData,
        GGroupApprovalRequestsData_charityGroupsWaitingForApproval,
        GMakeApprovalDecisionData;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.req.gql.dart'
    show GGroupApprovalRequestsReq, GMakeApprovalDecisionReq;
import 'package:animal_aid_app/group_approval_requests/api/group_approval_requests/__generated__/group_approval_requests.var.gql.dart'
    show GGroupApprovalRequestsVars, GMakeApprovalDecisionVars;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.data.gql.dart'
    show
        GEnableGroupPostsAutoImportData,
        GGroupPostsAutoImportEnabledStatusData,
        GGroupPostsAutoImportHintData;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.req.gql.dart'
    show
        GEnableGroupPostsAutoImportReq,
        GGroupPostsAutoImportEnabledStatusReq,
        GGroupPostsAutoImportHintReq;
import 'package:animal_aid_app/group_posts_auto_import_management/api/group_post_auto_import/__generated__/group_post_auto_import.var.gql.dart'
    show
        GEnableGroupPostsAutoImportVars,
        GGroupPostsAutoImportEnabledStatusVars,
        GGroupPostsAutoImportHintVars;
import 'package:animal_aid_app/post/api/__generated__/post.data.gql.dart'
    show GPostData, GPostData_postsFeedItem, GPostData_postsFeedItem_group;
import 'package:animal_aid_app/post/api/__generated__/post.req.gql.dart'
    show GPostReq;
import 'package:animal_aid_app/post/api/__generated__/post.var.gql.dart'
    show GPostVars;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.data.gql.dart'
    show
        GPostsFeedData,
        GPostsFeedData_postsFeed,
        GPostsFeedData_postsFeed_items,
        GPostsFeedData_postsFeed_items_group;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.req.gql.dart'
    show GPostsFeedReq;
import 'package:animal_aid_app/posts_feed/api/post/__generated__/post.var.gql.dart'
    show GPostsFeedVars;
import 'package:ferry_exec/ferry_exec.dart';
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GAppMetaData,
  GAppMetaData_appMeta,
  GAppMetaReq,
  GAppMetaVars,
  GAssignTagToApprovedPostData,
  GAssignTagToApprovedPostData_assignTagToApprovedPost,
  GAssignTagToApprovedPostReq,
  GAssignTagToApprovedPostVars,
  GChangeUserGroupLocationData,
  GChangeUserGroupLocationData_changeUserControlledGroupLocation,
  GChangeUserGroupLocationReq,
  GChangeUserGroupLocationVars,
  GCharityGroupApprovalStatus,
  GClientMetaData,
  GClientMetaData_mobileClientMeta,
  GClientMetaReq,
  GClientMetaVars,
  GDeleteTagFromApprovedPostData,
  GDeleteTagFromApprovedPostData_deleteTagFromApprovedPost,
  GDeleteTagFromApprovedPostReq,
  GDeleteTagFromApprovedPostVars,
  GEnableGroupPostsAutoImportData,
  GEnableGroupPostsAutoImportReq,
  GEnableGroupPostsAutoImportVars,
  GGenerateLocationDataData,
  GGenerateLocationDataData_locationData,
  GGenerateLocationDataReq,
  GGenerateLocationDataVars,
  GGeoPositionInput,
  GGroupApprovalRequestsData,
  GGroupApprovalRequestsData_charityGroupsWaitingForApproval,
  GGroupApprovalRequestsReq,
  GGroupApprovalRequestsVars,
  GGroupPostsAutoImportEnabledStatusData,
  GGroupPostsAutoImportEnabledStatusReq,
  GGroupPostsAutoImportEnabledStatusVars,
  GGroupPostsAutoImportHintData,
  GGroupPostsAutoImportHintReq,
  GGroupPostsAutoImportHintVars,
  GGroupPostsData,
  GGroupPostsData_groupPosts,
  GGroupPostsData_groupPosts_items,
  GGroupPostsReq,
  GGroupPostsVars,
  GLocationDataInput,
  GMainTagGroupsData,
  GMainTagGroupsData_mainTagGroups,
  GMainTagGroupsReq,
  GMainTagGroupsVars,
  GMakeApprovalDecisionData,
  GMakeApprovalDecisionReq,
  GMakeApprovalDecisionVars,
  GPostData,
  GPostData_postsFeedItem,
  GPostData_postsFeedItem_group,
  GPostReq,
  GPostVars,
  GPostsFeedData,
  GPostsFeedData_postsFeed,
  GPostsFeedData_postsFeed_items,
  GPostsFeedData_postsFeed_items_group,
  GPostsFeedReq,
  GPostsFeedVars,
  GRefreshLocationDataData,
  GRefreshLocationDataData_refreshedLocationData,
  GRefreshLocationDataReq,
  GRefreshLocationDataVars,
  GRefreshLocationPayload,
  GReportPostConcernData,
  GReportPostConcernReq,
  GReportPostConcernVars,
  GRequestUserGroupApprovalData,
  GRequestUserGroupApprovalData_requestUserControlledGroupApproval,
  GRequestUserGroupApprovalReq,
  GRequestUserGroupApprovalVars,
  GSearchLocationsData,
  GSearchLocationsData_locations,
  GSearchLocationsReq,
  GSearchLocationsVars,
  GTogglePostsInFeedData,
  GTogglePostsInFeedPayload,
  GTogglePostsInFeedReq,
  GTogglePostsInFeedVars,
  GUserControlledGroupsData,
  GUserControlledGroupsData_userControlledGroups,
  GUserControlledGroupsReq,
  GUserControlledGroupsVars,
  GUserMetaData,
  GUserMetaData_userMeta,
  GUserMetaReq,
  GUserMetaVars,
])
final Serializers serializers = _serializersBuilder.build();
