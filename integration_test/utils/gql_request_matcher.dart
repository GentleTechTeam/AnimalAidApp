import 'package:flutter_test/flutter_test.dart';
import 'package:gql_exec/gql_exec.dart';

class GqlRequestMatcher extends Matcher {
  final String operationName;
  final bool Function(Map<String, dynamic> data)? matchVariables;

  const GqlRequestMatcher(
    this.operationName, {
    this.matchVariables,
  });

  @override
  bool matches(dynamic item, Map matchState) {
    if (item is! Request) {
      return false;
    }

    final variablesMatch = matchVariables?.call(item.variables) ?? true;
    return item.operation.operationName == operationName && variablesMatch;
  }

  @override
  Description describe(Description description) =>
      description.add('gqlRequest with operation name $operationName');
}
