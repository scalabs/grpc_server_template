import 'dart:io';

class ServerCredentials {
  final String? username;
  final String? password;
  final String? host;
  final String? port;
  final String? database;
  final String? sslmode;
  final String? sharedSecret;

  ServerCredentials({
    required this.username,
    required this.password,
    required this.host,
    required this.port,
    required this.database,
    required this.sslmode,
    required this.sharedSecret,
  });

  factory ServerCredentials.fromEnvironment() {
    var env = Platform.environment;
    return ServerCredentials(
        username: env['USERNAME'],
        password: env['PASSWORD'],
        host: env['HOST'],
        port: env['PORT'],
        database: env['DATABASE'],
        sslmode: env['SSLMODE'],
        sharedSecret: env['SHARED_SECRET']);
  }
}
