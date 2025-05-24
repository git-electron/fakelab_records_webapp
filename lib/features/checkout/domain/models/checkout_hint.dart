enum CheckoutHint {
  prepayment(_prepaymentText),
  costFrom(_costFromText),
  costFromAdmin(_costFromAdminText);

  const CheckoutHint(this.text);

  final String text;
}

const String _prepaymentText =
    'После оформления заявки с тобой свяжется админ для подтверждения бронирования и внесения предоплаты';
const String _costFromText =
    'Точная стоимость заказа станет известна после подтверждения админом';
const String _costFromAdminText =
    'Ты сможешь изменить стоимость этого заказа после его подтверждения';
