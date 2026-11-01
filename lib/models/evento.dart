class Evento {
  final int id;
  final int idGiocatore;
  final int idPartita;
  final String tipo;
  final int? minuto;

  Evento ({
    required this.id,
    required this.idGiocatore,
    required this.idPartita,
    required this.tipo,
    this.minuto,
  });
}