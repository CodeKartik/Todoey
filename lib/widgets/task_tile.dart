import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallBack;

  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkboxCallback,
    this.longPressCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '$taskTitle',
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
        // toggleCheckBoxState:
      ),
      onLongPress: longPressCallBack,
    );
  }
}

// class TaskCheckBox extends StatelessWidget {
//   final bool checkedBoxState;
//   final Function toggleCheckBoxState;

//   TaskCheckBox({this.checkedBoxState, this.toggleCheckBoxState});

//   @override
//   Widget build(BuildContext context) {
//     return Checkbox(
//       value: checkedBoxState,
//       onChanged: toggleCheckBoxState,
//     );
//   }
// }
