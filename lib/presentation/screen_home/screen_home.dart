import 'package:exptracker/applications/expence_income_bloc/bloc/expance_bloc.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:exptracker/presentation/screen_add_catagory/screen_add_expanse.dart';
import 'package:exptracker/presentation/screen_catagories/screen_catagories.dart';
import 'package:exptracker/presentation/screen_home/widgets/piechart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart';
import 'package:pie_chart/pie_chart.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExpanceBloc>(context).add(const GetTransactionList());
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: BlocBuilder<ExpanceBloc, ExpanceState>(
        builder: (context, state) {
          return 
          state.isLoading?
          Center(child: CircularProgressIndicator(color: mainColor,backgroundColor: Colors.black12,),):
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: mainColor),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 18.0, horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text(
                                'Total Balance',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              BlocBuilder<ExpanceBloc, ExpanceState>(
                                builder: (context, state) {
                                  return Text(
                                    '₹${int.parse(state.totalIncome) - int.parse(state.totalExpence)}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  );
                                },
                              )
                            ],
                          ),
                          BlocBuilder<ExpanceBloc, ExpanceState>(
                            builder: (context, state) {
                              return HomePie(
                                tExp: double.parse(state.totalExpence),
                                tInc: double.parse(state.totalIncome),
                                total: double.parse(state.totalExpence) +
                                    double.parse(state.totalIncome),
                              );
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  h20Gap,
                  BlocBuilder<ExpanceBloc, ExpanceState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenAddCata(
                                cata: 'Income',
                              ),
                            )),
                            child: Stack(children: [
                              Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .4,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: mainColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Income',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '₹${state.totalIncome}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ))
                            ]),
                          ),
                          w10Gap,
                          w10Gap,
                          InkWell(
                            onTap: () =>
                                Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ScreenAddCata(
                                cata: 'Expance',
                              ),
                            )),
                            child: Stack(children: [
                              Container(
                                height: MediaQuery.of(context).size.height * .1,
                                width: MediaQuery.of(context).size.width * .4,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: mainColor),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Expance',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      '₹${state.totalExpence}',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  bottom: 5,
                                  right: 5,
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                  ))
                            ]),
                          ),
                        ],
                      );
                    },
                  ),
                  h10Gap,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Recent Expences',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                      w5Gap,
                      Expanded(
                          child: Container(
                        height: 1,
                        color: Colors.black12,
                      ))
                    ],
                  ),
                  h5Gap,
                  BlocBuilder<ExpanceBloc, ExpanceState>(
                    builder: (context, state) {
                      return Column(
                        children: List.generate(
                            state.expance.length < 5 ? state.expance.length : 5,
                            (index) => Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5.0),
                                  child: ListTile(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        side: BorderSide(
                                            color: mainColor.withOpacity(.5),
                                            width: .5)),
                                    
                                    title: Text(state.expance[index].catatype.toUpperCase()),
                                    subtitle: Text(state.expance[index].date.substring(0,10)),
          trailing: Text('₹ ${state.expance[index].amount}',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
                                  ),
                                )),
                      );
                    },
                  ),
                  h20Gap
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
