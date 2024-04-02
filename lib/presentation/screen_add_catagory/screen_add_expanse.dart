import 'dart:developer';

import 'package:exptracker/applications/expence_income_bloc/bloc/expance_bloc.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:exptracker/widgets/date_picker.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenAddCata extends StatelessWidget {
  ScreenAddCata({super.key, required this.cata});
  final String cata;
  final TextEditingController amtController = TextEditingController();
  final TextEditingController decsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        BlocProvider.of<ExpanceBloc>(context).add(GetCataForTancastion(
            cataType:
                cata == "Income" ? CatagoryType.income : CatagoryType.expance));
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Add your $cata'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              h10Gap,
              TextFormField(
                // inputFormatters: [
                //   FilteringTextInputFormatter.deny(RegExp(r'[^\x00-\x7F]'))
                // ],
                keyboardType: TextInputType.phone,
                style: GoogleFonts.poppins(color: Colors.black),
                controller: amtController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  hintText: '  Amount',
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.black38, fontWeight: FontWeight.w300),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                // onChanged: (value) {
                //   validate(formKey);
                // },
                // validator: (mail) {
                //   if (isEmailValid(mail!)) {
                //   } else {
                //     return 'Enter a valid email Id';
                //   }
                //   return null;
                // },
              ),
              h10Gap,
              BlocBuilder<ExpanceBloc, ExpanceState>(
                builder: (context, state) {
                  log(state.selectedCata.toString());
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12),
                        child: DropdownButton(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300, color: Colors.black),
                          value: state.selectedCata,
                          items: state.drop
                              .map((drop) => DropdownMenuItem(
                                  value: drop.catagoryName,
                                  child: Text(
                                    drop.catagoryName,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black),
                                  )))
                              .toList(),
                          onChanged: (value) {
                            BlocProvider.of<ExpanceBloc>(context).add(
                                DropCatagory(selectedCata: value.toString()));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
              h10Gap,
              BlocBuilder<ExpanceBloc, ExpanceState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: () {
                      showDatePickerDialog(
                          selectedCata: state.selectedCata,
                          context: context,
                          selectedStartDate: state.selectedDate);
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: borderColor)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 14.0),
                            child: Text(
                              state.selectedDate != null
                                  ? DateFormat('yyyy-MM-dd')
                                      .format(state.selectedDate!)
                                  : 'Select a date',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w300,
                                  color: state.selectedDate == null
                                      ? Colors.black38
                                      : Colors.black),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12.0),
                            child: Icon(Icons.date_range_outlined,
                                color: Color.fromARGB(255, 159, 157, 157)),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
              h10Gap,
              BlocBuilder<ExpanceBloc, ExpanceState>(
                builder: (context, state) {
                  log(state.selectedCata.toString());
                  return Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: borderColor),
                        borderRadius: BorderRadius.circular(10)),
                    width: double.infinity,
                    child: DropdownButtonHideUnderline(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 12),
                        child: DropdownButton(
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w300, color: Colors.black),
                          value: state.selectedPayType,
                          items: state.paymentType
                              .map((item) => DropdownMenuItem(
                                  value: item,
                                  child: Text(item,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          color: state.selectedPayType ==
                                                  'Payment Method'
                                              ? Colors.black38
                                              : Colors.black))))
                              .toList(),
                          onChanged: (value) {
                            BlocProvider.of<ExpanceBloc>(context).add(
                                PaymentTypes(
                                    selectedPaymentType: value.toString()));
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
              h10Gap,
              TextFormField(
                minLines: 4,
                maxLines: 4,

                // inputFormatters: [
                //   FilteringTextInputFormatter.deny(RegExp(r'[^\x00-\x7F]'))
                // ],
                style: GoogleFonts.poppins(color: Colors.black),
                controller: decsController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(5),
                  hintText: '  Description',
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.black38, fontWeight: FontWeight.w300),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: borderColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
                // onChanged: (value) {
                //   validate(formKey);
                // },
                // validator: (mail) {
                //   if (isEmailValid(mail!)) {
                //   } else {
                //     return 'Enter a valid email Id';
                //   }
                //   return null;
                // },
              ),
              h20Gap,
              BlocBuilder<ExpanceBloc, ExpanceState>(
                builder: (context, state) {
                  return ElevatedButton(
                                onPressed: () {
                                  if (amtController==null||amtController.text.toString().isEmpty||state.selectedDate==null||state.selectedPayType.toString()=='Payment Method') {
                                    log('message');
                                  Fluttertoast.showToast(msg: 'Fill all the datas');
                                  } else {
                                    log('ok');
                                        BlocProvider.of<ExpanceBloc>(context).add(AddTransaction(
                                      amt: amtController.text.toString(),
                                      Decs: decsController.text.toString()));
                                       BlocProvider.of<ExpanceBloc>(context).add(const GetTransactionList());
                                      Navigator.pop(context);
                                  }
                             
                                },
                                child: Text('ADD '+cata.toUpperCase()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
