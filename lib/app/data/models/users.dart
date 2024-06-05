import 'package:equatable/equatable.dart';

class Users extends Equatable {
  final String userName;
  final String password;

  const Users({required this.userName, required this.password});

  @override
  List<Object?> get props => [userName, password];
}
