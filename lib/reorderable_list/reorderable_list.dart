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
        List.generate(100, (index) => RegistryItem.test(index)).toList();
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
    list.add(DataCell(
        Container(width: 150, child: Text(item.id, style: styleValue))));
    list.add(DataCell(
      DropAwesomeDownButton(item),
      onTap: () {},
    ));
    list.add(DataCell(Container(
        width: 130,
        child: Text(DateFormat("dd-MM-yyyy").format(item.date),
            style: styleValue))));
    list.add(DataCell(
        Container(width: 200, child: Text(item.title, style: styleValue))));
    list.add(DataCell(Container(
        width: 100,
        child: Text(item.popularity.toString(), style: styleValue))));
    list.add(DataCell(Container(
        width: 100, child: Text(item.uniq.toString(), style: styleValue))));
    list.add(DataCell(Container(
        width: 200, child: Text(item.currentStateDes, style: styleValue))));
    list.add(DataCell(Container(
        width: 130, child: Text(item.author.trim(), style: styleValue))));
    list.add(DataCell(
        Container(width: 130, child: Text(item.author, style: styleValue))));
    list.add(DataCell(Container(
        width: 200, child: Text(item.ideaStateDes, style: styleValue))));
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Рацпредложения',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff858585),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      columnSpacing: 20,
                      horizontalMargin: 0,
                      showBottomBorder: false,
                      columns: [
                        DataColumn(
                            label: SizedBox(
                          child: Text(
                            "Регистрационный номер \nпредложения",
                            style: styleTitle,
                          ),
                        )),
                        DataColumn(
                            label:
                                Text("Статус предложения", style: styleTitle)),
                        DataColumn(
                            label: Text("Дата регистрации \nпредложения",
                                style: styleTitle)),
                        DataColumn(
                            label: Text("Наименование предложения",
                                style: styleTitle)),
                        DataColumn(
                            label: Text("Популярность", style: styleTitle)),
                        DataColumn(
                            label: Text("Уникальность", style: styleTitle)),
                        DataColumn(
                            label: Text("Наименование филиала",
                                style: styleTitle)),
                        DataColumn(
                            label: Text("ФИО Автора(ов)", style: styleTitle)),
                        DataColumn(
                            label: Text("Должность автора", style: styleTitle)),
                        DataColumn(
                            label: Text("Область применения \nпредложения",
                                style: styleTitle)),
                      ],
                      rows: mapRegistryToDataRows(
                        Registry(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class DropAwesomeDownButton extends StatefulWidget {
  RegistryItem item;
  DropAwesomeDownButton(this.item);
  @override
  _DropAwesomeDownButtonState createState() => _DropAwesomeDownButtonState();
}

class _DropAwesomeDownButtonState extends State<DropAwesomeDownButton> {
  Status currentItem;
  List<DropdownMenuItem<Status>> dropDownItems;
  @override
  void initState() {
    currentItem = widget.item.status;
    dropDownItems = Status.values
        .map(
          (e) => DropdownMenuItem(
            value: e,
            child: Text(e.asString),
          ),
        )
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: DropdownButton(
        icon: Icon(
          Icons.expand_more_rounded,
          color: Color(0xFFBEBEBE),
        ),
        underline: Container(),
        value: currentItem,
        style: TextStyle(
          fontSize: 12,
          color: Color(0xff858585),
        ),
        onChanged: (item) {
          setState(() {
            currentItem = item;
          });
          setState(() {});
          print(currentItem);
        },
        items: dropDownItems,
      ),
    );
  }
}
