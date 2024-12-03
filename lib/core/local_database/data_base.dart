import 'dart:io';

import 'package:cources_app/core/local_database/tables/courses.dart';
import 'package:cources_app/feature/list_courses/domain/entity/courses_entity.dart';
import 'package:cources_app/injection/injection.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' show Color, Colors;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'data_base.g.dart';

@DriftDatabase(tables: [Courses])
class Database extends _$Database {
  Database() : super(_openConnection());

  @override
  int get schemaVersion => 1;


  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (Migrator m) async {
          await m.createAll();
          await batch((batch) {
            batch.insertAll(
              courses,
              coursesList
                  .map(
                    (course) => CoursesCompanion(
                      title: Value(course.title),
                      description: Value(course.description),
                      price: Value(course.price),
                      duration: Value(course.duration),
                      color: Value(course.color.value),
                    ),
                  )
                  .toList(),
            );
          });
        },
      );

  static LazyDatabase _openConnection() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase.createInBackground(file);
    });
  }
}

final List<CoursesEntity> coursesList = [
  CoursesEntity(
    title: 'Flutter',
    description:
        'Научитесь разрабатывать кроссплатформенные мобильные приложения с использованием фреймворка Flutter на языке Dart. В курсе рассматриваются основные компоненты интерфейса, взаимодействие с API и управление состоянием приложения.',
    price: 350000,
    duration: 7,
    color: const Color(0xFFE6F3FD),
  ),
  CoursesEntity(
    title: 'Data analysis',
    description:
        'Овладейте инструментами и методами анализа данных, включая обработку, визуализацию и интерпретацию данных. Курс охватывает ключевые концепции статистики и машинного обучения для принятия обоснованных решений.',
    price: 350000,
    duration: 3,
    color: const Color(0xFFFCDDEC),
  ),
  CoursesEntity(
    title: 'SQL',
    description:
        'Изучите основы работы с реляционными базами данных, включая создание, управление и запрос данных с помощью SQL. В курсе рассматриваются такие важные темы, как объединение таблиц, создание индексов и оптимизация запросов.',
    price: 350000,
    duration: 10,
    color: const Color(0x99FFB379),
  ),
  CoursesEntity(
    title: 'QA engineer',
    description:
        'Узнайте о методах тестирования программного обеспечения, таких как ручное и автоматизированное тестирование. Курс охватывает ключевые процессы обеспечения качества, а также инструменты и подходы для выявления ошибок и повышения надежности систем.',
    price: 350000,
    duration: 8,
    color: const Color(0x8070BD59),
  ),
  CoursesEntity(
    title: 'Java',
    description:
        'Овладейте языком программирования Java, начиная с базовых синтаксических конструкций и заканчивая продвинутыми концепциями ООП. Курс также включает изучение работы с библиотеками, потоками и коллекциями для разработки эффективных приложений.',
    price: 350000,
    duration: 10,
    color: const Color(0xFFEDE6FC),
  ),
  CoursesEntity(
    title: 'C#',
    description: 'Изучите возможности языка программирования C# для разработки приложений',
    price: 350000,
    duration: 10,
    color: const Color(0xA2CFA3ED),
  ),
];
