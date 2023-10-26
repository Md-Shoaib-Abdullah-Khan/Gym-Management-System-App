

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gym_management_system/screens/Member_Management/newMember_screen.dart';

class MainScreen extends StatefulWidget {
  static String id = 'main_screen';
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late String userName;
  late Image userImage;
  final List<String> memberManagementOptions = [
    "New Membership",
    "Renwew Membership",
    "Cancel Membership",

  ];
  final List<String> equipmentManagementOptions = [
    "Update Eqipment Status",
    "Get Equipment Status",
  ];
  final List<String> dietChartOptions = [
    "Set Diet Chart",
    "Get Diet Chart",
  ];
  var functions = {
    'New Membership': newMemberScreen.id,
    //'Renwew Membership': renewMemberScreen.id,
   // 'Cancel Membership': cancelMemberScreen.id,

  };
  String? selectedValue;
  @override
  void initState() {
    super.initState();
    userName="Shoaib Khan";
    userImage=Image.asset('images/4.jpg');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Padding(
        
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
         // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
            ),
              Container(
                height: 100,
                width: 100,

                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage('images/4.jpg'),
                    fit: BoxFit.fill,

                  ),
                  border: Border.all(
                    width: 2,
                    color: Colors.white,
                  ),
                ),
              ),
            Text(
              userName,
              style: TextStyle(
                fontFamily: "Roboto",
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Container(
              height: 150,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(

                    isExpanded: true,
                    hint: Text(
                      'Member Management',
                      style: TextStyle(
                        fontFamily: "PlaypenSans",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    items: memberManagementOptions
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        "   $item",
                        style: const TextStyle(
                          fontFamily: "PlaypenSans",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),

                    ))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        Navigator.pushNamed(context, functions[value]!);
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        //color: Colors.black
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                        )
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),

                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(

                    isExpanded: true,
                    hint: Text(
                      'Equipment Management',
                      style: TextStyle(
                        fontFamily: "PlaypenSans",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    items: equipmentManagementOptions
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        "   $item",
                        style: const TextStyle(
                          fontFamily: "PlaypenSans",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),

                    ))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        Navigator.pushNamed(context, functions[value]!);
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        //color: Colors.black
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                        )
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),

                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(

                    isExpanded: true,
                    hint: Text(
                      'Diet Chart & Exercise',
                      style: TextStyle(
                        fontFamily: "PlaypenSans",
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    ),
                    items: dietChartOptions
                        .map((String item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(
                        "   $item",
                        style: const TextStyle(
                          fontFamily: "PlaypenSans",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),

                    ))
                        .toList(),
                    onChanged: (String? value) {
                      setState(() {
                        Navigator.pushNamed(context, functions[value]!);
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 0),
                      height: 70,
                      width: 350,
                      decoration: BoxDecoration(
                        //color: Colors.black
                      ),
                    ),
                    dropdownStyleData: DropdownStyleData(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade900,
                        )
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),

                  ),
                ),
              ],
            ),




          ],
        ),
      ),
    );
  }
}