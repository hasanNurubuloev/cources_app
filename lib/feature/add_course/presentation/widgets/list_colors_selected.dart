import 'package:flutter/material.dart';

class ListColorsSelected extends StatefulWidget {
  final Color? color;
  final void Function(Color color) onSelectColor;

  const ListColorsSelected({
    super.key,
    this.color,
    required this.onSelectColor,
  });

  @override
  State<ListColorsSelected> createState() => _ListColorsSelectedState();
}

class _ListColorsSelectedState extends State<ListColorsSelected> {
  final List<Color> _colors = [
    const Color(0xFFE6F3FD),
    const Color(0xFFFCDDEC),
    const Color(0x99FFB379),
    const Color(0x8070BD59),
    const Color(0xFFEDE6FC),
  ];

  Color _selectedColor = const Color(0xFFE6F3FD);

  @override
  void initState() {
    super.initState();
    print('ololo ${widget.color}');
    if (widget.color == null){
      _selectedColor = _colors.first;
    } else {
      _selectedColor = widget.color!;
      widget.onSelectColor.call(_selectedColor);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Выберите цвет для контейнера:',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _colors
              .map(
                (color) => GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedColor = color;
                      widget.onSelectColor.call(_selectedColor);
                    });
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: color,
                      border: _selectedColor == color ? Border.all(color: Colors.grey, width: 2) : null,
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
