enum AdminTab {
  general('Основное'),
  stats('Статистика'),
  clients('Клиенты'),
  bookings('Бронирования'),
  orders('Заказы');

  const AdminTab(this.title);

  final String title;
}
