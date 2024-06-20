

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'on_off_controller_state.dart';

class OnOffControllerCubit extends Cubit<OnOffControllerState> {
  OnOffControllerCubit() : super(OnOffControllerInitial());
}
