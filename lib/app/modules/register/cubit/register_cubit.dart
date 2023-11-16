import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/modules/register/cubit/register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(const RegisterState());
}
