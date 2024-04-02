import 'dart:developer';

import 'package:exptracker/applications/catagory_bloc/bloc/catagory_bloc.dart';
import 'package:exptracker/applications/infrastructure/commons.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:flutter/material.dart';

class BSheet extends StatefulWidget {
  const BSheet({super.key});

  @override
  State<BSheet> createState() => _BSheetState();
}

class _BSheetState extends State<BSheet> {
  final cataNameController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CatagoryBloc, CatagoryState>(
      builder: (context, state) {
        return Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Container(
            // Set your desired height
            child: Wrap(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    h5Gap,
                    Container(
                      width: 40,
                      height: 4,
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    h20Gap,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateProperty.all(mainColor),
                              value: state.selectedCataType,
                              groupValue: 0,
                              onChanged: (value) {
                                // log(value.toString());
                                BlocProvider.of<CatagoryBloc>(context)
                                    .add(SelectCataType(selectedCataType: 0));
                              },
                            ),
                            Text('Expance')
                          ],
                        ),
                        Row(
                          children: [
                            Radio(
                              fillColor: MaterialStateProperty.all(mainColor),
                              value: state.selectedCataType,
                              groupValue: 1,
                              onChanged: (value) {
                                BlocProvider.of<CatagoryBloc>(context)
                                    .add(SelectCataType(selectedCataType: 1));
                              },
                            ),
                            Text('Income')
                          ],
                        )
                      ],
                    ),
                    Form(
                      key: formKey,
                      child: TextFormField(
                        // inputFormatters: [
                        //   FilteringTextInputFormatter.deny(RegExp(r'[^\x00-\x7F]'))
                        // ],
                        style: GoogleFonts.poppins(color: Colors.black),
                        controller: cataNameController,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(5),
                          hintText: 'Catagory name',
                          hintStyle: GoogleFonts.poppins(
                              color: Colors.black38,
                              fontWeight: FontWeight.w300),
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
                        onChanged: (value) {
                          validate(formKey);
                        },
                        validator: (mail) {
                          if (mail!.length != 0) {
                          } else {
                            return 'Enter a valid catagory';
                          }
                          return null;
                        },
                      ),
                    ),
                    h10Gap,
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(mainColor)),
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                log('ok');
                                BlocProvider.of<CatagoryBloc>(context).add(
                                    AddCataType(
                                        selectedCataType:
                                            state.selectedCataType,
                                        cataName: cataNameController.text
                                            .trim()
                                            .toString()));
                                BlocProvider.of<CatagoryBloc>(context)
                                    .add(const GetCataLIst());
                                Navigator.pop(context);
                              } else {
                                log('message');
                              }
                            },
                            child: Text(
                              'Add Catagory',
                              style: GoogleFonts.poppins(color: Colors.white),
                            ))),
                    h20Gap
                  ],
                ),
              )
            ]),
          ),
        );
      },
    );
  }
}
