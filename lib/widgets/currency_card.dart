import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name;
  final String amount;
  final String code;
  final IconData icon;
  final int order;

  final _blackColor = const Color(0xff1f2123);
  final bool _isInverted;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.order,
  }) : _isInverted = (order % 2 == 0);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, (order - 1) * -20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: _isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: _isInverted ? _blackColor : Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: _isInverted ? _blackColor : Colors.white,
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: _isInverted
                              ? _blackColor.withAlpha(150)
                              : Colors.white.withAlpha(150),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.2,
                child: Transform.translate(
                  offset: Offset(-5, 13),
                  child: Icon(
                    icon,
                    color: _isInverted ? _blackColor : Colors.white,
                    size: 90,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
