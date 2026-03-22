import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/core/ui/layout_modal/layout_modal_cubit.dart';


class LayoutScreen extends StatelessWidget {
   const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: LayoutModalCubit.get(context),
      builder: (context , state) {
        var cubit = LayoutModalCubit.get(context);
        return Scaffold(
        body: IndexedStack(
          index: cubit.index,
          children: cubit.screens
        ),
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined) , label:"Home",activeIcon: Icon(Icons.home_rounded)),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined) , label: "Cart",activeIcon: Icon(Icons.shopping_cart_rounded) )
            ],
            onTap: (index)=> cubit.changeIndex(index),
            currentIndex: cubit.index,

        ),
      );
      },
    );
  }
}
