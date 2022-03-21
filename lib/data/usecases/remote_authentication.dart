import 'package:flutter/cupertino.dart';

import '../../domain/usecases/authentication.dart';

import '../http/http.dart';

class RemoteAuthentication {
  final HttpClient httpClient;
  final String url;

  RemoteAuthentication({@required this.httpClient, @required this.url});

  Future<void> auth(AuthenticationParams params) async {
    await this
        .httpClient
        .request(url: url, method: 'post', body: params.toJson());
  }
}
