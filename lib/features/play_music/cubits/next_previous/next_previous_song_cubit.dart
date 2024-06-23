

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'next_previous_song_state.dart';

class NextPreviousSongCubit extends Cubit<NextPreviousSongState> {
  NextPreviousSongCubit() : super(NextPreviousSongInitial());
}
