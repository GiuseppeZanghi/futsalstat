class PartitaGiocata {
  final int idGiocatore;
  final int idPartita;
  final String squadra;
  final double? voto;
  
  PartitaGiocata ({
    required this.idGiocatore,
    required this.idPartita,
    required this.squadra,
    this.voto
  });
}