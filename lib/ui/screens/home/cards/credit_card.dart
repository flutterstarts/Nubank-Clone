import 'package:flutter/material.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/screens/credit/credit_screen.dart';
import 'package:nubank_clone/ui/screens/home/components/main_card.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';
import 'package:page_transition/page_transition.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainCard(
      'Cartão de Crédito',
      NuIcons.ic_card_nu,
      [
        Text(
          'Fatura atual',
          style: Theme.of(context).textTheme.caption,
        ),
        SizedBox(height: 13),
        Text(
          'R\$ $kInvoce',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(color: kInvoiceColor),
        ),
        SizedBox(height: 5),
        RichText(
          text: TextSpan(
            text: 'Limite disponível ',
            style: Theme.of(context).textTheme.bodyText2,
            children: <TextSpan>[
              TextSpan(
                text: 'R\$ $kLimit',
                style: TextStyle(
                  color: kLimitColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
      onTap: () => Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft,
              duration: Duration(milliseconds: 400),
              child: CreditScreen())),
    );
  }
}
