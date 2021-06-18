import 'package:flutter/material.dart';

class CustomWaitingWidget extends StatelessWidget {
  const CustomWaitingWidget({Key key, this.msg}) : super(key: key);

  final String msg;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(),
          SizedBox(
            height: 10,
          ),
          Text(msg ?? "")
        ],
      ),
    );
  }
}
