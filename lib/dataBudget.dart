class dataBudget {
  static List<dataBudget> databudgets = [];
  String judul;
  int nominal;
  String tipe;
  DateTime date;

  dataBudget({
    required this.judul,
    required this.nominal,
    required this.tipe,
    required this.date,
  });

  static void addBudget({
    required judul,
    required nominal,
    required tipe,
    required date,
  }) {
    databudgets.add(dataBudget(
      judul: judul,
      nominal: nominal,
      tipe: tipe,
      date: date,
    ));
  }
}