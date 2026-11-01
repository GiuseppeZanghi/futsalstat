class Partita {
  final int id;
  final int idEdizione;
  final DateTime? dataOra;
  final int? golCasa;
  final int? golTrasferta;
  final String stato;

  Partita({
    required this.id,
    required this.idEdizione,
    this.dataOra,
    this.golCasa,
    this.golTrasferta,
    required this.stato,
  });
}