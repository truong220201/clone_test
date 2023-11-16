import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msb_flutter/app/core/values/app_colors.dart';
import 'package:msb_flutter/app/core/widgets/custom_appbar.dart';
import 'package:msb_flutter/app/data/model/info_model.dart';
import 'package:msb_flutter/app/data/untils/enum/enum_cosumer.dart';
import 'package:msb_flutter/app/data/untils/function/function.dart';
import 'package:msb_flutter/app/modules/home_list/cubit/home_cubit.dart';
import 'package:msb_flutter/app/modules/home_list/cubit/home_state.dart';
import 'package:msb_flutter/app/modules/home_list/view/widgets/card_widget_home.dart';
import 'package:msb_flutter/app/modules/home_list/view/widgets/mini_button_choice.dart';
import 'package:msb_flutter/app/modules/home_list/view/widgets/recent_transactions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}
class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
        listenWhen: (previous, current) {
          return previous.errorConnect != current.errorConnect;
        },
        listener: (context, state) {
          if (state.errorConnect != null) {
            FunctionConsumer.showDialogConsumer(state.errorConnect!, context);
          }
        },
        child: _build(context));
  }

  Widget _build(BuildContext context) {
    return Scaffold(
        appBar: _appbar(),
        backgroundColor: AppColors.colorF5F5F5,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                children: [
                  _listStatusBar(),
                  const SizedBox(
                    height: 25,
                  ),
                  _recentTransactions(),
                  const SizedBox(
                    height: 15,
                  ),
                  _showListCart()
                ],
              ),
            ),
          ),
        ));
  }

  _listStatusBar() {
    HomeCubit cubit = context.read<HomeCubit>();
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MiniButtonChoice(
            filter: FilterHome.waiting,
            onPress: () => {cubit.changeStatusFilter(1)},
            hasCheck: FilterHome.waiting == state.filter,
          ),
          const SizedBox(
            width: 10,
          ),
          MiniButtonChoice(
            filter: FilterHome.approved,
            onPress: () => {cubit.changeStatusFilter(2)},
            hasCheck: FilterHome.approved == state.filter,
          ),
          const SizedBox(
            width: 10,
          ),
          MiniButtonChoice(
            filter: FilterHome.refuse,
            onPress: () => {cubit.changeStatusFilter(3)},
            hasCheck: FilterHome.refuse == state.filter,
          ),
        ],
      );
    });
  }

  _showListCart() {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return !state.isLoading
          ? state.listInfo != null || state.listInfo == []
              ? Column(children: _listCard(state.showingList!))
              : const Center(
                  child: Text('Khong co du lieu!'),
                )
          : const CircularProgressIndicator();
    });
  }

  _recentTransactions() {
    return const RecentTransaction();
  }

  _appbar() {
    return const CustomAppBar(title: 'Quản lý giao dịch');
  }

  _listCard(List<InfoModel> listInfo) {
    return <Widget>[
      for (InfoModel i in listInfo)
        CardWidget(
          level: i.userId!,
          date: i.id.toString(),
          money: i.id!,
          content: i.title!,
          reason: i.body!,
        )
    ];
  }

}
