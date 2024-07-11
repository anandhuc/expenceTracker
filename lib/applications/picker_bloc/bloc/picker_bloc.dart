import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:file_picker/file_picker.dart';

part 'picker_event.dart';
part 'picker_state.dart';
part 'picker_bloc.freezed.dart';

class PickerBloc extends Bloc<PickerEvent, PickerState> {
  PickerBloc() : super(_Initial()) {
    on<Picker>((event, emit) async {
      FilePickerResult? result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: false);
      final String path = result!.files.single.path!;
      if (path != 'null') {
        log(path);
        Fluttertoast.showToast(msg: path);
      } else {
        Fluttertoast.showToast(msg: 'Oops');
      }
    });
  }
}
