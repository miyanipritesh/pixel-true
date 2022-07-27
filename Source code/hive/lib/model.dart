import 'package:hive/hive.dart';

@HiveType(typeId: 1)
class Person {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final String country;

  Person({
    required this.name,
    required this.country,
  });
}
