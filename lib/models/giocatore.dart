class Giocatore{
 final int id;
 final String? email;
 //passwordHash non presente per motivi di sicurezza
 final String nome;
 final String cognome;
 final DateTime? dataNascita;
 final String? fotoProfilo;
 final String? ruoloPreferito;
 final String stato;

 Giocatore({
  required this.id,
  this.email,
  required this.nome,
  required this.cognome,
  this.dataNascita,
  this.fotoProfilo,
  this.ruoloPreferito,
  required this.stato,
 });
}