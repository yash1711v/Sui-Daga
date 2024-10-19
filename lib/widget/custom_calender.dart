import '../routes/routes_helper.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class CustomCalendar extends StatefulWidget {
  final DateTime? selectedDate;
  final void Function(DateTime) onDateSelected;

  const CustomCalendar({super.key, this.selectedDate, required this.onDateSelected});
  @override
  _CustomCalendarState createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime _currentDate = DateTime.now();
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    // Set the current date as the default selected date
    _selectedDate =  widget.selectedDate ?? DateTime(_currentDate.year, _currentDate.month, _currentDate.day);
  }

  void _previousMonth() {
    setState(() {
      _currentDate = DateTime(_currentDate.year, _currentDate.month - 1);
    });
  }

  void _nextMonth() {
    setState(() {
      _currentDate = DateTime(_currentDate.year, _currentDate.month + 1);
    });
  }

  List<List<String>> _generateCalendarData() {
    final List<List<String>> calendarData = [];
    final firstDayOfMonth = DateTime(_currentDate.year, _currentDate.month, 1);
    final startOfWeek = firstDayOfMonth
        .subtract(Duration(days: (firstDayOfMonth.weekday - 1) % 7));

    for (int week = 0; week < 6; week++) {
      List<String> weekDays = [];
      for (int day = 0; day < 7; day++) {
        final currentDay = startOfWeek.add(Duration(days: week * 7 + day));
        if (currentDay.month == _currentDate.month) {
          weekDays.add(currentDay.day.toString());
        } else {
          weekDays.add('');
        }
      }
      calendarData.add(weekDays);
    }

    return calendarData;
  }

  void _onDaySelected(String dayString,bool ispast) {
    if (dayString.isNotEmpty) {
      final selectedDay = DateTime(_currentDate.year, _currentDate.month, int.parse(dayString));
       if(!ispast){
         widget.onDateSelected(selectedDay);
         setState(() {
           _selectedDate = selectedDay;
         });
         debugPrint('Selected date: ${DateFormat("dd/MM/yy").format(_selectedDate!)}');
       }
    }
  }

  @override
  Widget build(BuildContext context) {
    final calendarData = _generateCalendarData();
    final monthYear = DateFormat('MMMM yyyy').format(_currentDate);
    final List<String> daysOfWeek = ['Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa', 'Su'];

    return GestureDetector(
      onHorizontalDragEnd: (details) {
        if (details.velocity.pixelsPerSecond.dx > 0) {
          _previousMonth(); // Swipe right
        } else if (details.velocity.pixelsPerSecond.dx < 0) {
          _nextMonth(); // Swipe left
        }
      },
      child: Container(
        width: 400.39,
        height: 344.39,
        padding: const EdgeInsets.symmetric(horizontal: 7.0),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 0.61, color: Color(0xFFEAEAEA)),
            borderRadius: BorderRadius.circular(7.33),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x07AAAAAA),
              blurRadius: 19.54,
              offset: Offset(0, 2.44),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    monthYear,
                    style: const TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14.66,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: _previousMonth,
                    child: const Icon(Icons.chevron_left),
                  ),
                  const SizedBox(width: 14),
                  InkWell(
                    onTap: _nextMonth,
                    child: const Icon(Icons.chevron_right,),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: daysOfWeek.map((day) {
                  return Expanded(
                    child: Center(
                      child: Text(
                        day,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 7,
                  childAspectRatio: .8,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 10,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 42,
                itemBuilder: (context, index) {
                  final weekIndex = index ~/ 7;
                  final dayIndex = index % 7;
                  final day = calendarData[weekIndex][dayIndex];

                  final isSelected = _selectedDate != null &&
                      _selectedDate!.day.toString() == day &&
                      _selectedDate!.month == _currentDate.month &&
                      _selectedDate!.year == _currentDate.year;

                  final isPast = DateTime(_currentDate.year, _currentDate.month, int.tryParse(day) ?? 0)
                      .isBefore(DateTime.now().subtract(const Duration(days: 1)));

                  return GestureDetector(
                    onTap: () => _onDaySelected(day,isPast),
                    child: Container(
                      decoration: BoxDecoration(
                        color: isSelected ? const Color(0xFFE3C5CF) : Colors.transparent,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Text(
                          day,
                          style: TextStyle(
                            fontSize: 16,
                            color: isPast ? Colors.grey : (day.isNotEmpty ? Colors.black : Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
