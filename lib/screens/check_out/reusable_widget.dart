
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';
import '../../reusable_widget.dart';

Row buildTitleRow() {
  return Row(
    children: [
      Text(
        'Delivery Address',
        style: TextStyle(fontSize: 15, color: KPlaceholderColor),
      ),
    ],
  );
}

Row buildAddressRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        '653 Nostrand Ave.,\nBrooklyn, NY 11216',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      ClickableText(
        text: '',
        clickableText: 'Change',
        color: KMainColor,
        onClick: () {
          Navigator.pushNamed(context, '/change_address');
        },
      )
    ],
  );
}

Row buildPaymentMethodRow(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text('Payment method'),
      Row(
        children: [
          SvgPicture.asset('assets/images/plus.svg',color: KMainColor,),
          SizedBox(width: 15,),
          ClickableText(
            text: '',
            clickableText: 'Add Card',
            color: KMainColor,
            onClick: () => showModalBottomSheet(
              context: context,
              builder: (context) => buildSheet(context),
              enableDrag: false,
              isScrollControlled: true,
              isDismissible: false,
            ),
          ),
        ],
      )
    ],
  );
}

Widget buildSheet(BuildContext context) => AddCreditCard();
