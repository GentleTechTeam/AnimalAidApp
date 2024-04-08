import 'package:ferry/ferry.dart';
import 'package:gql_exec/gql_exec.dart';
import 'package:mockito/mockito.dart';

class GqlLinkMock extends Mock implements Link {
  GqlLinkMock() {
    _throwErrorOnUnhandledRequests();
  }

  @override
  Stream<Response> request(Request? request, [NextLink? forward]) =>
      super.noSuchMethod(
        Invocation.method(#request, [request, forward]),
        returnValue: Stream.fromIterable(
          <Response>[],
        ),
      ) as Stream<Response>;

  void _throwErrorOnUnhandledRequests() {
    const resWithError = Response(
      response: <String, dynamic>{},
      errors: [GraphQLError(message: 'Unimplemented')],
    );

    when(request(any)).thenAnswer(
      (realInvocation) => Stream.fromIterable([resWithError]),
    );
  }
}
