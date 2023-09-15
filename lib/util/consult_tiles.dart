import 'package:flutter/material.dart';

class ConsultTile extends StatelessWidget {
  const ConsultTile({super.key, required this.headName, required this.subHeadName});
  final String headName;
  final String subHeadName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      margin: EdgeInsets.only(bottom: 6,top: 6),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.teal,
                    radius: 44,
                    child: Image.network('https://img.freepik.com/free-vector/isolated-young-handsome-man-different-poses-white-background-illustration_632498-859.jpg?w=1060&t=st=1694800096~exp=1694800696~hmac=ab48bc1451e88099206ba8af5ae3205f0b691009ac846391b8910b868569cbe4',),
                  ),
                  const SizedBox(width: 5,),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(headName, style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                      Text(subHeadName, style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                        fontSize: 12,
                      ),),
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ],
      ),
    );
  }
}
