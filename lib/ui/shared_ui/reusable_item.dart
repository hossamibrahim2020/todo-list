import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ReusableItem extends StatelessWidget {
  final bool complete;
  final String title;
  final Function delete, goToDetail, completeController;

  const ReusableItem({
    Key key,
    this.complete,
    this.title,
    this.delete,
    this.goToDetail,
    this.completeController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      secondaryActions: <Widget>[
        IconSlideAction(
          caption: 'Delete',
          color: Colors.red,
          icon: Icons.delete,
          onTap: delete,
        ),
      ],
      child: Card(
        child: ListTile(
          onTap: goToDetail,
          leading: IconButton(
            icon: Icon(
              complete == false
                  ? Icons.check_box_outline_blank
                  : Icons.check_box,
            ),
            onPressed: completeController,
          ),
          title: Text(
            title,
            style: TextStyle(
              decoration: complete == false
                  ? TextDecoration.none
                  : TextDecoration.lineThrough,
            ),
          ),
        ),
      ),
    );
  }
}
