import 'package:blackcoffer/utils/routes.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class RefinePage extends StatefulWidget {
  const RefinePage({super.key});

  @override
  State<RefinePage> createState() => _RefinePageState();
}

class _RefinePageState extends State<RefinePage> {
  String _dropdownvalue = "Available";
  double _currentslidervalue = 20;
  bool isSelected = false;
  int tag = 1;
  String element = "";
  // List<String> tags = [];
  // List<String> options = [
  //   "Coffee",
  //   "Business",
  //   "Hobbies",
  //   "Friendship",
  //   "Movies",
  //   "Dinning",
  //   "Dating",
  //   "Matrimony"
  // ];

  void dropdowncallback(String? selectedvalue) {
    if (selectedvalue is String) {
      setState(() {
        _dropdownvalue = selectedvalue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 10, 38, 36),
        title: "Refine".text.xl2.color(Vx.white).make(),
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Myroutes.homeRoute);
          },
          icon: Icon(
            CupertinoIcons.left_chevron,
            color: Vx.white,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(top: 20, left: 18),
            child: "Select your Availability"
                .text
                .lg
                .bold
                .color(const Color.fromARGB(255, 10, 38, 36))
                .make(),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.only(right: 5),
            height: 44,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Colors.grey, style: BorderStyle.solid, width: 0.7),
              borderRadius: BorderRadius.circular(12.0),
            ),
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2(
                iconStyleData: IconStyleData(iconSize: 28),
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
                //barrierColor: ,
                //padding: EdgeInsets.symmetric(vertical: 5),
                //borderRadius: BorderRadius.circular(15),
                //focusColor: Colors.black,
                //underline: ,
                //iconSize: 28,
                isExpanded: true,
                //isDense: true,
                items: [
                  DropdownMenuItem(
                    child: "Available | Hey Let Us Connect"
                        .text
                        .color(const Color.fromARGB(255, 10, 38, 36))
                        .make(),
                    value: "Available",
                  ),
                  DropdownMenuItem(
                    child: "Away | Stay Discrete And Watch"
                        .text
                        .color(const Color.fromARGB(255, 10, 38, 36))
                        .make(),
                    value: "Away",
                  ),
                  DropdownMenuItem(
                    child: "Busy | Do Not Disturb | Will Catch Up Later"
                        .text
                        .color(const Color.fromARGB(255, 10, 38, 36))
                        .make(),
                    value: "Busy",
                  ),
                  DropdownMenuItem(
                    child: "SOS | Emergency! Need Assistance! HELP"
                        .text
                        .color(const Color.fromARGB(255, 10, 38, 36))
                        .make(),
                    value: "SOS",
                  ),
                ],
                onChanged: dropdowncallback,
                value: _dropdownvalue,
              ),
            ),
          ),
          // SizedBox(
          //   height: 5,
          // ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(top: 20, left: 18),
            child: "Add Your Status"
                .text
                .lg
                .bold
                .color(const Color.fromARGB(255, 10, 38, 36))
                .make(),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Theme(
              data: ThemeData(
                  textSelectionTheme: TextSelectionThemeData(
                      selectionHandleColor:
                          const Color.fromARGB(255, 10, 38, 36),
                      cursorColor: const Color.fromARGB(255, 10, 38, 36),
                      selectionColor: Color.fromARGB(255, 127, 201, 197))),
              child: TextField(
                cursorColor: const Color.fromARGB(255, 10, 38, 36),
                controller: TextEditingController()
                  ..text = 'Hi community! I am open to new connections "😊"',
                onChanged: (text) => {},
                maxLines: null,
                maxLength: 250,
                decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12))),
              ),
            ),
          ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(top: 10, left: 18),
            child: "Select Hyper local Distance"
                .text
                .lg
                .bold
                .color(const Color.fromARGB(255, 10, 38, 36))
                .make(),
          ),
          Container(
            margin: EdgeInsets.only(top: 28),
            child: SliderTheme(
              data: SliderTheme.of(context).copyWith(
                  showValueIndicator: ShowValueIndicator.always,
                  trackHeight: 1),
              child: Slider(
                value: _currentslidervalue,
                onChanged: (double value) {
                  setState(() {
                    _currentslidervalue = value;
                  });
                },
                autofocus: true,
                max: 100,
                activeColor: Color.fromARGB(255, 10, 38, 36),
                label: _currentslidervalue.round().toString(),
                thumbColor: Color.fromARGB(255, 10, 38, 36),
                divisions: 100,
                min: 1,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ["1 Km".text.make(), "100 Km".text.make()],
            ),
          ),
          Container(
            //color: Colors.red,
            margin: EdgeInsets.only(top: 20, left: 18, bottom: 8),
            child: "Select Purpose"
                .text
                .lg
                .bold
                .color(const Color.fromARGB(255, 10, 38, 36))
                .make(),
          ),
          Wrap(children: [
            ChipsPurpose("Coffee", 0),
            ChipsPurpose("Business", 1),
            ChipsPurpose("Hobbies", 2),
            ChipsPurpose("Friendship", 3),
            ChipsPurpose("Movies", 4),
            ChipsPurpose("Dinning", 5),
            ChipsPurpose("Dating", 6),
            ChipsPurpose("Matrimony", 7),
          ]),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Container(
              width: 220,
              margin: EdgeInsets.symmetric(vertical: 18),
              child: ElevatedButton(
                onPressed: () {},
                child: "Save & Explore".text.color(Vx.white).xl.make(),
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                        Color.fromARGB(255, 10, 38, 36))),
              ),
            ),
          )
        ],
      ),
    );
  }

  List<bool> isSelectedList = List.generate(8, (index) => false);
  Container ChipsPurpose(String element, int index) {
    return Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: ChoiceChip(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        showCheckmark: false,
        label: Text(element),
        selected: isSelectedList[index],
        selectedColor: const Color.fromARGB(255, 10, 38, 36),
        // selectedShadowColor: Vx.white,
        labelStyle: TextStyle(
          color: isSelectedList[index]
              ? Colors.white
              : const Color.fromARGB(255, 10, 38, 36),
        ),
        onSelected: (newState) {
          setState(() {
            isSelectedList[index] = newState;
          });
        },
      ),
    );
  }
}
