import 'package:flutter/material.dart';

class CatergoryTile extends StatelessWidget {
  const CatergoryTile({super.key, required this.categName, required this.color});
  final String categName;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 150,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
      ),
      child: Center(
        child: Text(categName,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600
          ),),
      ),
    );
  }
}
