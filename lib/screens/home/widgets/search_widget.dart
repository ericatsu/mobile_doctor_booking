import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SearchWidget extends StatefulWidget {
  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  TextEditingController _searchController = TextEditingController();
  bool _showClearIcon = false;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _showClearIcon = _searchController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _clearSearch() {
    setState(() {
      _searchController.clear();
      _showClearIcon = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      controller: _searchController,
      placeholder: 'Search a Doctor',
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      prefix: Icon(Icons.search),
      suffix: _showClearIcon
          ? GestureDetector(
              onTap: _clearSearch,
              child: Icon(CupertinoIcons.xmark_circle_fill),
            )
          : Icon(CupertinoIcons.mic),
      onChanged: (value) {
        // Handle search query changes
      },
    );
  }
}
