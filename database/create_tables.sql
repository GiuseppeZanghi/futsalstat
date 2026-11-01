create table if not exists giocatore (
    id int generated always as identity primary key,
    email varchar(255) unique,
    password_hash varchar(255),
    nome varchar(255) not null,
    cognome varchar(255) not null,
    data_nascita date,
    foto_profilo varchar(511),
    ruolo_preferito varchar(3),
    stato varchar(20) not null check (stato in ('REAL','RIMPIAZZO'))
);

create table if not exists campionato (
    id int generated always as identity primary key,
    nome varchar(255) not null unique,
    formato varchar(48) not null check (formato in ('CALCIO_5','CALCIO_7','CALCIO_8','CALCIO_11'))
);

create table if not exists edizione (
    id int generated always as identity primary key,
    id_campionato int not null,
    stagione varchar(20) not null,
    data_inizio date not null,
    data_fine date,
    constraint fk_campionato_edizione foreign key (id_campionato) references campionato(id) on delete cascade
);

create table if not exists partita (
    id int generated always as identity primary key,
    id_edizione int not null,
    data_ora timestamp,
    gol_casa int,
    gol_trasferta int,
    stato varchar(48) not null check (stato in('PROGRAMMATA','IN_CORSO','TERMINATA')),
    constraint fk_edizione_partita foreign key (id_edizione) references edizione(id) on delete cascade
);

create table if not exists evento (
    id int generated always as identity primary key,
    id_giocatore int not null,
    id_partita int not null,
    tipo varchar(48) not null check (tipo in ('GOL','AUTOGOL','ASSIST','AMMONIZIONE','ESPULSIONE','INFORTUNIO','ENTRATO','USCITO','RIGORE_PARATO')),
    minuto INT CHECK (minuto >= 0 AND minuto <= 120),
    constraint fk_giocatore_evento foreign key (id_giocatore) references giocatore(id) on delete cascade,
    constraint fk_partita_evento foreign key (id_partita) references partita(id) on delete cascade
);

create table if not exists partita_Giocata (
    id_giocatore int not null,
    id_partita int not null,
    squadra varchar(48) not null check (squadra in ('CASA','TRASFERTA')),
    voto DECIMAL(3,1) CHECK (voto >= 0.0 AND voto <= 10.0),
    constraint fk_giocatore_partitagiocata foreign key (id_giocatore) references giocatore(id) on delete cascade,
    constraint fk_partita_partitagiocata foreign key (id_partita) references partita(id) on delete cascade,
    primary key (id_giocatore, id_partita)
);