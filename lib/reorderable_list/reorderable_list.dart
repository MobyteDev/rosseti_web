import 'package:bidirectional_scroll_view/bidirectional_scroll_view.dart';
import 'package:flutter/material.dart';
import 'package:rosseti_web/models/registry.dart';
import 'package:rosseti_web/models/registry_item.dart';
import 'package:intl/intl.dart';
import 'widgets/reorderable_list_dish_card.dart';

class ReorderableList extends StatefulWidget {
  @override
  _ReorderableListState createState() => _ReorderableListState();
}

class _ReorderableListState extends State<ReorderableList> {
  List<DataRow> mapRegistryToDataRows(Registry registry) {
    registry.statements =
        List.generate(100, (index) => RegistryItem.test(1)).toList();
    return registry.statements
        .map(
          (e) => DataRow(
            cells: mapRegistryItemToDataCeils(e),
          ),
        )
        .toList();
  }

  TextStyle styleValue = TextStyle(
    fontSize: 12,
    color: Color(0xff858585),
  );
  TextStyle styleTitle = TextStyle(
    color: Color(0xffB355AB),
    fontSize: 12,
  );
  List<DataCell> mapRegistryItemToDataCeils(RegistryItem item) {
    List<DataCell> list = [];
    list.add(DataCell(Text(item.id, style: styleValue)));
    list.add(DataCell(
        Text(DateFormat("dd-MM-yyyy").format(item.date), style: styleValue)));
    list.add(DataCell(Text(item.title, style: styleValue)));
    list.add(DataCell(Text(item.currentStateDes, style: styleValue)));
    list.add(DataCell(Text(item.author, style: styleValue)));
    list.add(DataCell(Text(item.author, style: styleValue)));
    list.add(DataCell(Text(item.ideaStateDes, style: styleValue)));
    list.add(DataCell(Text(item.status.toString(), style: styleValue)));
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.only(
            top: 45,
            left: 52,
            right: 42,
            bottom: 45,
          ),
          margin: EdgeInsets.only(
            bottom: 88,
            left: 34,
            right: 40,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(
              10,
            ),
            border: Border.all(
              color: Color(0xffF0F0F0),
            ),
          ),
          //           Text(
          //   'Рацпредложения',
          //   style: TextStyle(
          //     fontSize: 16,
          //     color: Color(0xff858585),
          //   ),
          // ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: DataTable(
                columnSpacing: 20,
                horizontalMargin: 0,
                dividerThickness: 0,
                showBottomBorder: false,
                columns: [
                  DataColumn(
                      label: SizedBox(
                    child: Text(
                      "Регистрационный номер предложения",
                      style: styleTitle,
                    ),
                  )),
                  DataColumn(
                      label: Text("Дата регистрации предложения",
                          style: styleTitle)),
                  DataColumn(
                      label:
                          Text("Наименование предложения", style: styleTitle)),
                  DataColumn(
                      label: Text("Наименование филиала", style: styleTitle)),
                  DataColumn(label: Text("ФИО Автора(ов)", style: styleTitle)),
                  DataColumn(
                      label: Text("Должность автора", style: styleTitle)),
                  DataColumn(
                      label: Text("Область применения предложения",
                          style: styleTitle)),
                  DataColumn(
                      label: Text("Статус предложения", style: styleTitle)),
                ],
                rows: mapRegistryToDataRows(
                  Registry(),
                ),
              ),
            ),
          )),
    );
  }
}
