import 'package:flutter/material.dart';

class CustomCont extends StatefulWidget {
  final dynamic isVisible;
  final String name;
  final String phone;
  final Function() onTap;
  const CustomCont({
    Key? key,
    required this.isVisible,
    required this.name,
    required this.phone,
    required this.onTap,
  }) : super(key: key);

  @override
  State<CustomCont> createState() => _CustomContState();
}

class _CustomContState extends State<CustomCont> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width - 50,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.person),
              SizedBox(
                width: 20,
              ),
              Text(widget.name),
              SizedBox(
                width: 20,
              ),
              Text(widget.phone),
            ],
          ),
        ),
        InkWell(
          onTap: () => widget.onTap(),
          child: Icon(Icons.delete),
        )
      ],
    );
  }
}
