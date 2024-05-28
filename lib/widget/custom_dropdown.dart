import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fintech_app/models/drop_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class CustomDropdown extends StatefulWidget {
  final List<String> optionsItem;
  var selectedValue;

  CustomDropdown(this.optionsItem, this.selectedValue);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: 38,
      child:  DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          hint: Text(
            'Select Item',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: widget.optionsItem
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: widget.selectedValue,
          onChanged: (value) {
            setState(() {
              widget.selectedValue = value;
            });
            print(value);
          },
          buttonStyleData: ButtonStyleData(
            padding: EdgeInsets.symmetric(horizontal: 16),
            height: 40,
            width: 140,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Color(0xFFB3B3B3),
              ),
              color: Color(0xFFFFFFFF),
            ),
          ),
          dropdownStyleData: const DropdownStyleData(
            maxHeight: 120,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      )
    );
    
  }
}
