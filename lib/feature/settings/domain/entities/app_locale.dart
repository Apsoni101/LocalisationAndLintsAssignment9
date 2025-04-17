import 'package:equatable/equatable.dart';

class AppLocale extends Equatable {
  final String code;

  const AppLocale(this.code);

  @override
  List<Object?> get props => [code];
}
