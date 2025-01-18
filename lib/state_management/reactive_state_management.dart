import 'package:flutter/material.dart';
import 'package:flutter_getx_full_course/state_management/user.dart';
import 'package:get/get.dart';

class ReactiveStateManagement extends StatelessWidget {
  ReactiveStateManagement({super.key});

// 1.----------------------------------------
  // final name = RxString('');
  // final isLogged = RxBool(false);
  // final count = RxInt(0);
  // final balance = RxDouble(0.0);
  // final item = RxList<String>([]);
  // final myMap = RxMap<String, int>({});

// 2.----------------------------------------
  // final isLogged = Rx<bool>(false);
  // final count  = Rx<int>(0);
  // final balance = Rx<double>(0.0);
  // final item = Rx<List<String>>([]);
  // final myMap = Rx<Map<String, int>>({});
  // final number = Rx<num>(0.0);
  // final user = Rx<User>(User(name:'javad', age: 39));

// 3.----------------------------------------
  final name = ''.obs;
  final isLogged = false.obs;
  final count = 0.obs;
  final balance = 0.0.obs;
  final item = <String>[].obs;
  final myMap = <String, int>{}.obs;
  final number = 0.0.obs;
  final user = User(name: 'javad', age: 39).obs;

  // final User user = User();

  void increment() => count.value++;

  void toUpper() {
    // user.name.value = user.name.value.toUpperCase();
    // user.age.value++;

    user.update((user) {
      user!.name = user.name.toUpperCase();
      user.age = user.age + 1;
    });
    // user(User(name: 'javad', age: 39));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reactive State Management'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                'Count : ${count.value}',
                style: const TextStyle(fontSize: 30),  
                              
              ),
            ),
            const SizedBox(height: 30),
            const Divider(
              height: 2,
              color: Colors.black,
              indent: 20,
              endIndent: 20,
            ),
            const SizedBox(height: 30),
            Obx(
              () => Text(
                // 'Name : ${user.name} \n Age : ${user.age}',
                'Name : ${user.value.name} \n Age : ${user().age}',
                style: const TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            increment();
            toUpper();
          }),
    );
  }
}
