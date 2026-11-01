class Edizione {
  final int id;
  final int idCampionato;
  final String stagione;
  final DateTime dataInizio;
  final DateTime? dataFine;

  Edizione ({
    required this.id,
    required this.idCampionato,
    required this.stagione,
    required this.dataInizio,
    this.dataFine,
  });
}