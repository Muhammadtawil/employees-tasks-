// import 'package:flutter/material.dart';

// class ProfileItems extends StatefulWidget {
//   const ProfileItems(
//       {super.key, required this.isExpanded, required this.title});
//   final bool isExpanded;
//   final String title;
//   @override
//   State<ProfileItems> createState() => _ProfileItemsState();
// }

// class _ProfileItemsState extends State<ProfileItems> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8),
//       child: Row(
//         children: [
//           Text(widget.title),
//           IconButton(
//             onPressed: () {
//               setState(() {
//                 widget.isExpanded = !widget.isExpanded;
//               });
//             },
//             icon: Icon(widget.isExpanded == true
//                 ? Icons.expand_less
//                 : Icons.expand_more),
//           )
//         ],
//       ),
//     );
//   }
// }
