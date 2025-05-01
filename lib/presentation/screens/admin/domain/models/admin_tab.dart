enum AdminTab {
  general('Основное'),
  stats('Статистика'),
  clients('Клиенты'),
  bookings('Бронирования'),
  orders('Заказы'),
  staff('Сотрудники');

  const AdminTab(this.title);

  final String title;
}
