import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String resultData = await task2();
  task3(resultData);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  String result;
  Duration threeSecond = Duration(seconds: 3);
  await Future.delayed(threeSecond, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete with $task2Data');
}
