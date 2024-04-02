import 'dart:developer';

import 'package:exptracker/applications/catagory_bloc/bloc/catagory_bloc.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:exptracker/presentation/screen_catagories/widgets/b_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:exptracker/presentation/screen_add_catagory/screen_add_expanse.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenCata extends StatelessWidget {
  ScreenCata({super.key});
  final cataNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {

     WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<CatagoryBloc>(context)
          .add(const GetCataLIst());
     
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Catagories'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return BSheet();
            },
          );
        },
        child: Icon(
          Icons.add,
          size: 30,
        ),
      ),
      body: BlocBuilder<CatagoryBloc, CatagoryState>(
        builder: (context, state) {
          return DefaultTabController(
            length: 2,
            child: Column(children: [
              Container(
                color: Colors.white,
                child: TabBar(
                    unselectedLabelColor: mainColor.withOpacity(.5),
                    physics: const BouncingScrollPhysics(),
                    labelColor: mainColor,
                    indicatorColor: mainColor,
                    tabAlignment: TabAlignment.fill,
                    indicatorSize: TabBarIndicatorSize.tab,
                    // dividerColor: const Color.fromARGB(0, 255, 255, 255),
                    // indicator: const BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(20)),
                    //     color: mainColor),
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 15, fontWeight: FontWeight.w500),
                    tabs: [
                      const Tab(text: 'Expence'),
                      const Tab(text: 'Income'),
                    ]),
              ),
              Expanded(
                  child: TabBarView(children: [
                state.isLoading
                    ? Text('Loading')
                    : state.expance.isEmpty
                        ? Text('MT')
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 12),
                            child: ListView.builder(
                              itemCount: state.expance.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                child: CatagoryTile(
                                  cataName: state.expance[index].catagoryName,
                                ),
                              ),
                            ),
                          ),
                state.isLoading
                    ? Center(child: Text('Loading'))
                    : state.income.isEmpty
                        ? Center(child: Text('MT'))
                        : Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 12),
                            child: ListView.builder(
                              itemCount: state.income.length,
                              itemBuilder: (context, index) => Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 6.0,
                                ),
                                child: CatagoryTile(
                                  cataName: state.income[index].catagoryName,
                                ),
                              ),
                            ),
                          ),
              ])),
            ]),
          );
        },
      ),
    );
  }
}

class CatagoryTile extends StatelessWidget {
  CatagoryTile({super.key, required this.cataName});
  String cataName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: mainColor, width: .5)),
      contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 0),
     
      title: Text(cataName),
    );
  }
}
