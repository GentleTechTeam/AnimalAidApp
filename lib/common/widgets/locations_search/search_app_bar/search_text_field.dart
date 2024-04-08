import 'package:animal_aid_app/common/dto/locations_search_text_field_style.dart';
import 'package:animal_aid_app/common/extensions/context_extension.dart';
import 'package:animal_aid_app/common/widgets/locations_search/search_app_bar/search_text_field_suffix_icon.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SearchTextField extends StatefulWidget {
  final void Function(String) onChanged;
  final LocationsSearchTextFieldStyle style;

  const SearchTextField({
    Key? key,
    required this.onChanged,
    required this.style,
  }) : super(key: key);

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  final _textFieldController = TextEditingController();
  final _hasTextSubject = BehaviorSubject<bool>.seeded(false);

  String _previousQuery = '';

  @override
  void initState() {
    super.initState();
    _textFieldController.addListener(_onQueryChangedListener);
  }

  @override
  void dispose() {
    _textFieldController
      ..removeListener(_onQueryChangedListener)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => TextField(
        cursorColor: widget.style.cursorColor,
        controller: _textFieldController,
        autofocus: true,
        decoration: InputDecoration(
          suffixIcon: SearchTextFieldSuffixIcon(
            onPressed: _textFieldController.clear,
            hasTextValue: _hasTextSubject.value,
            hasTextValueStream: _hasTextSubject.stream,
          ),
          hintStyle: widget.style.hintStyle,
          fillColor: widget.style.fillColor,
          hintText: context.strings.enterLocationName,
          filled: true,
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          // ignore: no-equal-arguments
          focusedErrorBorder: InputBorder.none,
        ),
      );

  void _onQueryChangedListener() {
    if (_previousQuery != _textFieldController.text) {
      _previousQuery = _textFieldController.text;
      widget.onChanged(_textFieldController.text);
      _hasTextSubject.add(_textFieldController.text.isNotEmpty);
    }
  }
}
