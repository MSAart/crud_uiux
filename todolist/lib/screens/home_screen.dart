import 'package:flutter/material.dart';
import 'package:todolist/constant/utils.dart';
import 'package:todolist/widgets/textfield_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController categoryController = TextEditingController();
  TextEditingController descController = TextEditingController();
  TextEditingController statusController = TextEditingController();

  TextEditingController categoryEditController = TextEditingController();
  TextEditingController descEditController = TextEditingController();
  TextEditingController statusEditController = TextEditingController();

  List<Map<String, dynamic>> todos = [];

  void _showDialogEdit(int index, Map<String, dynamic> todos) {
    categoryEditController.text = todos["category"];
    descEditController.text = todos["description"];
    statusEditController.text = todos["status"];
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Edit Your Aktivity"),
            content: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Text('Description : ',
                      style: kPopRegular12.copyWith(color: Colors.blue)),
                  TextFieldWidget(
                      hintext: 'Description ', controller: descEditController),
                  const SizedBox(height: 10),
                  Text('Category : ',
                      style: kPopRegular12.copyWith(color: Colors.blue)),
                  TextFieldWidget(
                      hintext: 'Category', controller: categoryEditController),
                  const SizedBox(height: 10),
                  Text(
                    'Status : ',
                    style: kPopRegular12.copyWith(color: Colors.blue),
                  ),
                  TextFieldWidget(
                      hintext: 'Status', controller: statusEditController),
                ],
              ),
            ),
            actions: [
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    String category = categoryEditController.text;
                    String desc = descEditController.text;
                    String status = statusEditController.text;
                    todos[index]["category"] = category;
                    todos[index]["desctiption"] = desc;
                    todos[index]["status"] = status;
                    categoryEditController.text = "";
                    descEditController.text = "";
                    statusEditController.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: const Text("Edit")),
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"))
            ],
          );
        });
  }

  void _showDialogAdd() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Add Your Aktivity"),
            content: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Divider(),
                  Text(
                    'Description : ',
                    style: kPopRegular12.copyWith(color: Colors.blue),
                  ),
                  TextFieldWidget(
                      hintext: 'Description', controller: descController),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Category : ',
                    style: kPopRegular12.copyWith(color: Colors.blue),
                  ),
                  TextFieldWidget(
                      hintext: 'Category', controller: categoryController),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Status : ',
                    style: kPopRegular12.copyWith(color: Colors.blue),
                  ),
                  TextFieldWidget(
                      hintext: 'Status', controller: statusController),
                ],
              ),
            ),
            actions: [
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    String category = categoryController.text;
                    String desc = descController.text;
                    String status = statusController.text;

                    todos.add({
                      "category": category,
                      "description": desc,
                      'status': status
                    });
                    categoryController.text = "";
                    descController.text = "";
                    statusController.text = "";
                    setState(() {});
                    Navigator.of(context).pop();
                  },
                  child: const Text("Add")),
              // ignore: deprecated_member_use
              FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel"))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff00D0E5),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xff00D0E5),
          onPressed: _showDialogAdd,
          child: const Icon(Icons.add),
        ),
        body: SafeArea(
            child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 1,
              decoration: const BoxDecoration(color: Color(0xffE1FEFE)),
            ),
            Container(
              padding: const EdgeInsets.only(
                  top: 40, left: 50, right: 10, bottom: 10),
              height: MediaQuery.of(context).size.height * 0.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
                color: Color(0xff00D0E5),
              ),
              child: Image.asset('assets/images/bg_apps.jpg'),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good Morning,',
                        style: kPopBold15.copyWith(color: Colors.white),
                      ),
                      Text(
                        'Muhammad Syarif hidayat',
                        style: kPopBold15.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                    padding: const EdgeInsets.all(8),
                    child: const Icon(
                      Icons.notifications_active,
                      color: Colors.white,
                    ))
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.3,
                left: 8,
                right: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: [
                          const Icon(Icons.calendar_today),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Muhammad Syarif Hidayat'),
                              Text.rich(TextSpan(children: [
                                const TextSpan(
                                    text: 'You Have ', style: kPopRegular12),
                                TextSpan(
                                    text: '${todos.length}', style: kPopBold15),
                                const TextSpan(
                                    text: ' unfinished Tasks',
                                    style: kPopRegular12)
                              ])),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'To Do List',
                    style: kPopBold15,
                  ),
                  const Divider(),
                  Expanded(
                    child: ListView.builder(
                        itemCount: todos.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: ListTile(
                                  trailing: SizedBox(
                                    width: 60,
                                    child: Row(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              todos.removeAt(index);
                                            });
                                          },
                                          child: const Icon(Icons.delete),
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            _showDialogEdit(
                                                index, todos[index]);
                                          },
                                          child: const Icon(Icons.edit),
                                        ),
                                      ],
                                    ),
                                  ),
                                  title: Text(todos[index]["category"],
                                      style: kPopBold15.copyWith(
                                          color: Colors.black)),
                                  subtitle: Text.rich(TextSpan(children: [
                                    const TextSpan(
                                        text: 'Category : ',
                                        style: kPopRegular12),
                                    TextSpan(
                                        text: todos[index]["description"],
                                        style: kPopRegular12),
                                    const TextSpan(
                                        text: ', Status : ',
                                        style: kPopRegular12),
                                    TextSpan(
                                        text: todos[index]['status'],
                                        style: kPopRegular12.copyWith(
                                            color: const Color(0xff00D0E5)))
                                  ]))),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        )));
  }
}
