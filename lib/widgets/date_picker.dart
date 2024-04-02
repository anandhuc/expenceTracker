import 'package:exptracker/applications/expence_income_bloc/bloc/expance_bloc.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> showDatePickerDialog(
    {required BuildContext context, DateTime? selectedStartDate, required String selectedCata}) async {
  final DateTime? pickedDate = await showDatePicker(
    builder: (context, child) {
      return Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.light(
            primary: mainColor, // <-- SEE HERE
            onPrimary: Colors.white, // <-- SEE HERE
            onSurface: mainColor, // <-- SEE HERE
          ),
        ),
        child: child!,
      );
    },
    context: context,
    initialDate: selectedStartDate ?? DateTime.now(),
    firstDate: DateTime(1900),
    lastDate: DateTime.now(),
  );

  if (pickedDate != null && pickedDate != selectedStartDate) {
   BlocProvider.of<ExpanceBloc>(context).add(DropCatagory(selectedCata: selectedCata,selecetedDate: pickedDate));
  }
}
