import 'package:exptracker/applications/catagory_bloc/bloc/catagory_bloc.dart';
import 'package:exptracker/applications/expence_income_bloc/bloc/expance_bloc.dart';
import 'package:exptracker/constants/constants.dart';
import 'package:exptracker/domains/transaction_model/transcation_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenTransactions extends StatelessWidget {
  const ScreenTransactions({super.key});

 @override
  Widget build(BuildContext context) {

     WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<ExpanceBloc>(context)
          .add(const GetTransactionList());
     
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Transactions'),
        centerTitle: true,
      ),
      
      body: BlocBuilder<ExpanceBloc, ExpanceState>(
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
                                child: TransactionTile(
                                  trans: state.expance[index],
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
                                child: TransactionTile(
                                  trans: state.income[index],
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


class TransactionTile extends StatelessWidget {
  const TransactionTile({
    
    super.key,
    required this.trans,
   

  });
  final TransactionModel trans;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border:
                Border.all(color: mainColor.withOpacity(.5), width: .5)),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          
          title: Text(trans.catatype,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16,),),
          subtitle: Text(trans.date.substring(0,10)),
          trailing: Text('₹ ${trans.amount}',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 16),),
        ),
      ),
    );
  }
}
