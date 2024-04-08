const mockUrgentTabLabel = 'Urgent';
const mockFundraisingTabLabel = 'Fundraising';
const mockUrgentTabId = '1';
const mockFundraisingTabId = '2';

final initialMainTagGroupServiceGetDataResult = <String, dynamic>{
  'mainTagGroups': <Map<String, dynamic>>[
    <String, dynamic>{
      'id': mockUrgentTabId,
      'label': mockUrgentTabLabel,
      'tagKeys': ['#urgent']
    },
    <String, dynamic>{
      'id': mockFundraisingTabId,
      'label': mockFundraisingTabLabel,
      'tagKeys': ['#fundraising']
    },
  ],
};
