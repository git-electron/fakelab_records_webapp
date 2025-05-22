enum CheckoutHint {
  prepayment(_prepaymentText),
  prepaymentRefund(_prepaymentRefundText),
  costFrom(_costFromText),
  costFromAdmin(_costFromAdminText);

  const CheckoutHint(this.text);

  final String text;
}

const String _prepaymentText =
    'После оформления заявки с тобой свяжется админ для подтверждения бронирования и внесения предоплаты';
const String _prepaymentRefundText =
    'При отмене бронирования менее чем за 24 часа предоплата не возвращается';
const String _costFromText =
    'Точная стоимость заказа станет известна после подтверждения админом';
const String _costFromAdminText =
    'Ты сможешь уточнить стоимость заказа после подтверждения этой заявки';
