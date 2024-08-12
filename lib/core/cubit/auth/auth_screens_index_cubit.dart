import 'package:flutter_bloc/flutter_bloc.dart';

class AuthScreensIndexCubit extends Cubit<int> {
  AuthScreensIndexCubit() : super(0);

  void setSelectedIndex(int index) {
    emit(index);
  }
}
