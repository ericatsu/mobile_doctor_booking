import 'package:flutter/cupertino.dart';
import 'package:mobile_doctor_booking/shared/exports.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final TextEditingController _searchController = TextEditingController();
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
    final mediaQuery = SizeQuery(context);
    return SizedBox(
      height: mediaQuery.height * 0.06,
      child: CupertinoTextField(
        decoration: BoxDecoration(
          color: const Color.fromARGB(50, 158, 158, 158),
          borderRadius: BorderRadius.circular(6),
        ),
        controller: _searchController,
        placeholder: 'Search a Doctor',
        placeholderStyle: const TextStyle(
            fontSize: 15, color: Color.fromARGB(202, 158, 158, 158)),
        padding: const EdgeInsets.symmetric(vertical: 8),
        prefix: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            CupertinoIcons.search,
            size: 18,
          ),
        ),
        suffix: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: _showClearIcon
              ? GestureDetector(
                  onTap: _clearSearch,
                  child: const Icon(
                    CupertinoIcons.xmark_circle_fill,
                    size: 18,
                  ),
                )
              : const Icon(
                  CupertinoIcons.mic,
                  size: 18,
                ),
        ),
        onChanged: (value) {
          // Handle search query changes
        },
      ),
    );
  }
}
