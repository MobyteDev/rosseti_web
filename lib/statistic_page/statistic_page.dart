import 'package:flutter/material.dart';

class StatisticPage extends StatelessWidget {
  TextStyle styleValue = TextStyle(
    fontSize: 12,
    color: Color(0xff858585),
  );
  TextStyle styleTitle = TextStyle(
    color: Color(0xffB355AB),
    fontSize: 12,
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'statistics.png',
              width: 500,
            ),
            DataTable(
              columnSpacing: 20,
              horizontalMargin: 0,
              showBottomBorder: false,
              columns: [
                DataColumn(
                    label: Text('Название подгатегории', style: styleTitle)),
                DataColumn(label: Text('На экспертизе', style: styleTitle)),
                DataColumn(label: Text('Доработка', style: styleTitle)),
                DataColumn(label: Text('Признано', style: styleTitle)),
                DataColumn(label: Text('Отклонено', style: styleTitle)),
                DataColumn(label: Text('Внедрено', style: styleTitle)),
              ],
              rows: [
                DataRow(cells: [
                  DataCell(Text(
                    'Управление технологическим процессом.Цифровая сеть',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '100',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '310',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '267',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '101',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '38',
                    style: styleValue,
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Цифровое управление компанией',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '333',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '586',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '121',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '353',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '667',
                    style: styleValue,
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Дополнительные сервисы',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '232',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2665',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '227',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '729',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '1333',
                    style: styleValue,
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Комплексная система информационной безопасности',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '1725',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2816',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2917',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2540',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '1343',
                    style: styleValue,
                  )),
                ]),
                DataRow(cells: [
                  DataCell(Text(
                    'Не относится к цифровой трансформации',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '827',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '383',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2034',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '1502',
                    style: styleValue,
                  )),
                  DataCell(Text(
                    '2860',
                    style: styleValue,
                  )),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
