import 'package:flutter_quiz_/data/quiz_question_model.dart';

class Data {
  static const questions = [
    QuizQuestionModel('Каковы основные строительные блоки UI во Flutter?', [
      'Виджеты',
      'Компоненты',
      'Блоки',
      'Функции',
    ]),
    QuizQuestionModel('Как строятся пользовательские интерфейсы во Flutter?', [
      'Путём комбинирования виджетов в коде',
      'Путём комбинирования виджетов в визуальном редакторе',
      'Путём определения виджетов в конфигурационных файлах',
      'Используя XCode для iOS и Android Studio для Android',
    ]),
    QuizQuestionModel('Какова цель StatefulWidget?', [
      'Обновлять UI при изменении данных',
      'Обновлять данные при изменении UI',
      'Игнорировать изменения данных',
      'Отрисовывать UI, не зависящий от данных',
    ]),
    QuizQuestionModel(
      'Какой виджет следует использовать чаще: StatelessWidget или StatefulWidget?',
      [
        'StatelessWidget',
        'StatefulWidget',
        'Оба одинаково хороши',
        'Ни один из вышеперечисленных',
      ],
    ),
    QuizQuestionModel(
      'Что происходит, если изменить данные в StatelessWidget?',
      [
        'UI не обновляется',
        'UI обновляется',
        'Обновляется ближайший StatefulWidget',
        'Обновляются все вложенные StatefulWidget',
      ],
    ),
    QuizQuestionModel('Как следует обновлять данные внутри StatefulWidgets?', [
      'Вызовом setState()',
      'Вызовом updateData()',
      'Вызовом updateUI()',
      'Вызовом updateState()',
    ]),
  ];
}
