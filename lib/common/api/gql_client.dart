import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

Future<Client> initGraphqlClient(String url) async {
  final cache = Cache(store: MemoryStore());
  final link = HttpLink(url);

  return Client(
    link: link,
    cache: cache,
  );
}
