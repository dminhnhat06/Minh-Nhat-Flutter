import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'name_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NameController());

    return GetMaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final nameController = Get.find<NameController>();
    final TextEditingController textController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Danh sách tên')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: textController,
              decoration: const InputDecoration(labelText: 'Nhập tên'),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                nameController.addName(textController.text);
                textController.clear();
              },
              child: const Text('Thêm tên'),
            ),
            const SizedBox(height: 24),
            const Text('Danh sách tên đã lưu:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 8),
            Expanded(
              child: Obx(() => ListView.builder(
                itemCount: nameController.names.length,
                itemBuilder: (context, index) {
                  final name = nameController.names[index];
                  return ListTile(
                    title: Text(name),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () => nameController.removeName(name),
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}
