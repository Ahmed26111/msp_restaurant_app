import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:msp_restaurant_app/ui/core/theme/theme_manager.dart';
import 'package:msp_restaurant_app/ui/core/ui/layout_widget/layout_screen.dart';
import 'package:msp_restaurant_app/ui/orders_modal/order_modal_cubit.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: OrderModalCubit.get(context),
      builder: (context, state) {
        var cubit = OrderModalCubit.get(context);
        return Scaffold(
          appBar: AppBar(),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                child: Text(
                  "Payment method",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(Icons.monetization_on_outlined, size: 40),
                  title: Text(
                    'Cash',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  trailing: Icon(cubit.isPaymentChosen(EnWhichPaymentMethod.eCash), size: 30),
                  onTap: (){
                    cubit.changePaymentMethod(EnWhichPaymentMethod.eCash);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset('assets/master-card.png'),
                  title: Text(
                    'master Card',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  trailing: Icon(cubit.isPaymentChosen(EnWhichPaymentMethod.eMasterCard), size: 30),
                  shape: masterCardTileTheme().shape,
                  tileColor: masterCardTileTheme().tileColor,
                  iconColor: masterCardTileTheme().iconColor,
                  onTap: (){
                    cubit.changePaymentMethod(EnWhichPaymentMethod.eMasterCard);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset("assets/visa.png"),
                  title: Text(
                    'visa',
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                  trailing: Icon(cubit.isPaymentChosen(EnWhichPaymentMethod.eVisa), size: 30),
                  shape: visaTileTheme().shape,
                  tileColor: visaTileTheme().tileColor,
                  iconColor: visaTileTheme().iconColor,
                  onTap: (){
                    cubit.changePaymentMethod(EnWhichPaymentMethod.eVisa);
                  },
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Total price"),
                        Row(
                          children: [
                            Text(
                                "\$",
                              style: Theme.of(context).textTheme.displayMedium,
                            ),
                            Text(
                              '${cubit.getTotalPrice()}',
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 70,
                      width: 150,
                      child: FilledButton(
                        onPressed: () {
                          showDialog(
                              barrierColor: Theme.of(context).scaffoldBackgroundColor,
                              barrierDismissible: false,
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Column(
                                    spacing: 10,
                                    children: [
                                      Icon(Icons.check_circle , size: 70, color: Theme.of(context).primaryColorDark,),
                                      Text("Success !" , style: Theme.of(context).textTheme.displayMedium,),
                                      Padding(
                                        padding: const EdgeInsets.all(15),
                                        child: Text("Your payment was successful.A receipt for this purchase has been sent to your email.",style: Theme.of(context).textTheme.titleLarge,),
                                      ),
                                      SizedBox(
                                        height: 70,
                                        width: 200,
                                        child: FilledButton(
                                            onPressed: (){
                                              cubit.clearCart();
                                              Navigator.pop(context);
                                              Navigator.pop(context);
                                            },
                                            style: checkoutButtonStyle(),
                                            child: Text("Go Back")
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                          );
                        },
                        style: addToCartButtonStyle(),
                        child: Text(
                          'Pay',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
