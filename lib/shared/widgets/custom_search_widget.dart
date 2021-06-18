import 'package:flutter/material.dart';
import 'package:teste_mobile_rd/shared/configs/colors.dart';

class CustomSearchWidget extends StatefulWidget {
  final void Function(String value) onSearchTextChanged;

  const CustomSearchWidget({Key key, this.onSearchTextChanged})
      : super(key: key);

  @override
  _CustomSearchWidgetState createState() => _CustomSearchWidgetState();
}

class _CustomSearchWidgetState extends State<CustomSearchWidget> {
  TextEditingController _searchController;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 0.5),
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.search, size: 26.0),
          SizedBox(width: 13.0),
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                isDense: true,
                hintText: 'Search super hero name',
                contentPadding: EdgeInsets.zero,
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: AppColors.grey,
                  height: 1,
                ),
                border: InputBorder.none,
              ),
              onChanged: widget.onSearchTextChanged,
            ),
          ),
        ],
      ),
    );
  }
}
