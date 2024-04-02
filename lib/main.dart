import 'package:exptracker/applications/catagory_bloc/bloc/catagory_bloc.dart';
import 'package:exptracker/applications/expence_income_bloc/bloc/expance_bloc.dart';
import 'package:exptracker/applications/profile_info_bloc/bloc/profile_info_bloc.dart';
import 'package:exptracker/domains/catagory_model/catagory_model.dart';
import 'package:exptracker/domains/transaction_model/transcation_model.dart';
import 'package:exptracker/presentation/screen_main_tab/screen_main_tab.dart';
import 'package:exptracker/presentation/screen_splash/screen_splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  var path = await getApplicationDocumentsDirectory();
  Hive.init(path.path);
  
  if (!Hive.isAdapterRegistered(CatagoryModelAdapter().typeId)) {
    Hive.registerAdapter(CatagoryModelAdapter());
  }
  if (!Hive.isAdapterRegistered(CatagoryTypeAdapter().typeId)) {
    Hive.registerAdapter(CatagoryTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(TransactionModelAdapter().typeId)) {
    Hive.registerAdapter(TransactionModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ExpanceBloc(),
        ),
        BlocProvider(
          create: (context) => ProfileInfoBloc(),
        ),
        BlocProvider(
          create: (context) => CatagoryBloc(),
        ),
      ],
     
    
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
      textTheme:   GoogleFonts.poppinsTextTheme().copyWith(
                  bodyMedium: GoogleFonts.poppins(
                color: Colors.black,
              )),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const ScreenSplash(),
      ),
    );
  }
}
