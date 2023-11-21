import 'package:flutter/material.dart';

import 'ListItem.dart';
import 'Cartpage.dart';

const List<String> ImageItem = <String>[
  "https://basket-04.wb.ru/vol562/part56236/56236410/images/c516x688/1.webp",
  "https://basket-08.wb.ru/vol1155/part115500/115500239/images/c516x688/1.webp",
  "https://basket-10.wb.ru/vol1529/part152971/152971244/images/c516x688/1.webp",
  "https://basket-03.wb.ru/vol411/part41175/41175635/images/c516x688/1.webp",
  "https://basket-10.wb.ru/vol1569/part156949/156949682/images/c516x688/1.webp",
  "https://basket-05.wb.ru/vol869/part86900/86900899/images/c516x688/1.webp",
  "https://basket-01.wb.ru/vol92/part9285/9285253/images/c516x688/1.webp",
  "https://basket-10.wb.ru/vol1388/part138834/138834549/images/c516x688/1.webp",
  "https://basket-03.wb.ru/vol320/part32072/32072176/images/c516x688/1.webp",
  "https://basket-12.wb.ru/vol1685/part168587/168587709/images/c516x688/1.webp"
];
const List<String> NameItem = <String>[
  "Влажные детские салфетки",
  "Очиститель стекол",
  "Многофункциональные плоскогубцы",
  "Зонт компактный легкий складной",
  "Спортивные брюки женские",
  "RGB лампа Закат с пультом",
  "Шапка зимняя вязаная",
  "Наушники беспроводные Air 2",
  "Шнурки для обуви",
  "Camon 20 8+256GB"
];
const List<String> CountText = <String>[
  "412 Руб.",
  "337 Руб.",
  "581 Руб.",
  "375 Руб.",
  "447 Руб.",
  "469 Руб.",
  "660 Руб.",
  "1045 Руб.",
  "145 Руб.",
  "12952 Руб."
];
const List<String> DescItem = <String>[
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
  "Описание которое могло бы быть здесь!",
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: const Color.fromARGB(255, 57, 56, 51),
        title: const Center(
          child: Text('CalmFruit', style: TextStyle(color: Colors.white)),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Открыть корзину',
              onPressed: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartPage()))),
        ],
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(16.0),
          height: MediaQuery.of(context).size.height * 0.85,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: NameItem.length,
              itemBuilder: (BuildContext context, int index) {
                return ListItem(
                    NameItem: NameItem[index],
                    ImageItem: ImageItem[index],
                    CountText: CountText[index],
                    DescItem: DescItem[index]);
              }),
        ),
      ]),
    );
  }
}
