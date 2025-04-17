import 'package:equatable/equatable.dart';

class AppLocale extends Equatable {
  final String? code;
  final String? name;

  const AppLocale({required this.code,required this.name});

  @override
  List<Object?> get props => [code,name];
}
