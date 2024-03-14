TABELLA MYSQL PROGGETTO REAL-HOME
--------------------------------

CREATE TABLE Admin (
 Id_admin int(11) PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(40) NOT NULL,
 Cognome VARCHAR(40) NOT NULL,
 DataNascita DATETIME NOT NULL,
 Citta VARCHAR(40) NOT NULL,
 Email VARCHAR(40) NOT NULL (UNIQUE),
 Password VARCHAR(32) NOT NULL,
 Data_inscrizione TIMESTAMP on UPDATE CURRENT_TIMESTAMP() { DEFAULT: current_timestamp() }
);

INSERT INTO Admin (Nome, Cognome, DataNascita, Citta, Email, Password) VALUE
('Mauro', 'DeValerio', '1968-07-12 10:00:00', 'Perugia', 'maurodivalerio@gmail.com', 'mauro5');


CREATE TABLE Signup (
 Id_signup int(255) PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(40) NOT NULL,
 Email VARCHAR(50) NOT NULL (UNIQUE),
 Password VARCHAR(80) NOT NULL
);

INSERT INTO Signup (Nome, Email, Password) VALUES
('Mauro', 'maurodivalerio@gmail.com', 'mauro5'), 
('leo', 'leo@gmail.com', 'prova123');


CREATE TABLE Propietario (
 Id_propietario int(100) PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(40) NOT NULL,
 Cognome VARCHAR(40) NOT NULL,
 Email VARCHAR(40) NOT NULL (UNIQUE),
 Numero_cell VARCHAR(12) NOT NULL
);

INSERT INTO Propietario (Nome, Cognome, Email, Numero_cell) VALUES
('Simon', 'Zeus', 'simon@gmail.com', '3386672574'),
('Gabriele', 'Tomio', 'gab@gmail.com', '3375672574');


CREATE TABLE Agente (
 Id_agente int(80) PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(40) NOT NULL,
 Cognome VARCHAR(40) NOT NULL,
 Email VARCHAR(40) NOT NULL (UNIQUE),
 Password VARCHAR(250) NOT NULL
 Numero_cell VARCHAR(12) NOT NULL
);

INSERT INTO Agente (Nome, Cognome, Email, Numero_cell) VALUE
('Emanuele', 'Valora', 'ema@gmail.com', '3494436432');


CREATE TABLE Casa (
    Id_casa INT PRIMARY KEY AUTO_INCREMENT,
    PropietarioIm INT NOT NULL,
    AgenteImm INT NOT NULL,
    Nome VARCHAR(40) NOT NULL,
    Paese VARCHAR(40) NOT NULL,
    Citta VARCHAR(40) NOT NULL,
    Via VARCHAR(150) NOT NULL,
    Prezzo DECIMAL(10,2) NOT NULL,
    Descrizione TEXT ( 65.535 byte ) NOT NULL,
    ImageURL VARCHAR(250),
    FOREIGN KEY (PropietarioIm) REFERENCES Proprietario(Id_proprietario),
    FOREIGN KEY (AgenteImm) REFERENCES Agente(Id_agente)
);


INSERT INTO Casa (PropietarioIm, AgenteImm, Nome, Paese, Citta, Via, Prezzo, Descrizione, ImageURL) VALUES
(1, 1, 'Villa1', 'Italia', 'Parma', 'San leonardo 21', '6750000', 'Bella casa in pieno zona di passaggio. Presenza di una cantina e di un garage di 15 mq.' , '../CaseInVendita/imgForExample.jpg'),
(2, 1, 'Villa2', 'Spagna', 'Barcellona', 'San secondito 1', '4350000', 'Bella casa in pieno zona centro. Presenza di una cantina spaziosa e posto auto coperto nel parcheggio riservato.', '../CaseInVendita/imgForExample.jpg'),
(1, 1, 'Villa3', 'Italia', 'Barcellona', 'San palermo 2', '3750000', 'Bella casa in pieno zona centro. Presenza di una cantina sotterraneo' , '../CaseInVendita/imgForExample.jpg');
//altre house
 (1, 1, 'Villa del Sole', 'Italia', 'Roma', 'Via dei Colli 12', '12000000', 'Splendida villa situata sulle colline romane, con vista panoramica su tutta la città. Dotata di piscina olimpionica, campo da tennis e giardino paesaggistico.', '../CaseInVendita/villa_sole.jpg'),
(3, 2, 'Villa Bianca', 'Francia', 'Parigi', 'Rue de la Paix 8', '8500000', 'Elegante villa parigina nel cuore della città. Arredata con mobili di epoca e dotata di sala cinema, spa privata e ascensore panoramico.', '../CaseInVendita/villa_bianca.jpg'),
(2, 9, 'Villa dei Fiori', 'Spagna', 'Marbella', 'Calle de las Rosas 23', '5500000', 'Lussuosa residenza situata sulla costa di Marbella. Dispone di accesso diretto alla spiaggia, piscina infinity e terrazza panoramica con vista sul mare.', '../CaseInVendita/villa_fiori.jpg'),
(4, 12, 'Villa Verde', 'Stati Uniti', 'Los Angeles', 'Beverly Hills Drive 123', '18000000', 'Magnifica villa Hollywoodiana nel cuore di Beverly Hills. Dotata di sala giochi, sala fitness, sala degustazione vini e servizio di sicurezza privato 24 ore su 24.', '../CaseInVendita/villa_verde.jpg'),
(17, 13, 'Villa Serenissima', 'Italia', 'Venezia', 'Piazza San Marco 15', '25000000', 'Unica villa sul Canal Grande con accesso privato per gondola. Decorata con opere di arte rinascimentali e dotata di giardino segreto con piscina interna.', '../CaseInVendita/villa_serenissima.jpg'),
(1, 1, 'Villa Aurora', 'Grecia', 'Mykonos', 'Elia Beach Road 7', '7500000', 'Incantevole villa sull isola di Mykonos con vista mozzafiato sul Mar Egeo. Dispone di eliporto privato, spa all''aperto e terrazza con Jacuzzi.', '../CaseInVendita/villa_aurora.jpg'),
(3, 2, 'Villa Diamante', 'Portogallo', 'Lisbona', 'Rua do Carmo 32', '9500000', 'Lussuosa dimora nel cuore di Lisbona, con vista panoramica sul fiume Tago. Arredata con opere d''arte contemporanea e dotata di sala musicale e biblioteca.', '../CaseInVendita/villa_diamante.jpg'),
(2, 9, 'Villa Azzurra', 'Grecia', 'Santorini', 'Oia Caldera 5', '4800000', 'Elegante villa sull''isola di Santorini con vista spettacolare sul mare e sul tramonto. Dispone di piscina a sfioro, terrazza panoramica e cantina per la conservazione dei vini locali.', '../CaseInVendita/villa_azzurra.jpg'),
(4, 12, 'Villa Paradiso', 'Italia', 'Portofino', 'Via della Libertà 21', '16000000', 'Esclusiva residenza a Portofino con accesso diretto al porto turistico. Dotata di sala cinema, sala biliardo e beach club privato sulla scogliera.', '../CaseInVendita/villa_paradiso.jpg'),
(17, 13, 'Villa Eterna', 'Francia', 'Nizza', 'Promenade des Anglais 78', '30000000', 'Incredibile villa sulla Promenade des Anglais con vista panoramica sulla baia di Nizza. Dispone di giardino botanico privato, piscina interna riscaldata e campo da golf privato.', '../CaseInVendita/villa_eterna.jpg'),
(1, 1, 'Villa Rosa', 'Spagna', 'Ibiza', 'Carrer de Sa Calma 3', '6500000', 'Lussuosa villa sull''isola di Ibiza con vista sul mare e sulla baia di Talamanca. Dotata di accesso privato alla spiaggia, piscina infinity e area lounge all''aperto.', '../CaseInVendita/villa_rosa.jpg'),
(3, 2, 'Villa Fiorella', 'Italia', 'Capri', 'Via Tragara 12', '11000000', 'Storica villa a Capri con vista panoramica sui Faraglioni. Arredata con mobili d''epoca e dotata di giardino mediterraneo, piscina termale e sala degustazione limoncello.', '../CaseInVendita/villa_fiorella.jpg'),
(2, 12, 'Villa Delle Palme', 'Grecia', 'Creta', 'Elounda Bay 4', '6000000', 'Elegante villa sulla baia di Elounda con accesso privato alla spiaggia. Dispone di piscina privata, campo da tennis e terrazza con vista sulle montagne.', '../CaseInVendita/villa_palme.jpg'),
(4, 13, 'Villa Celeste', 'Spagna', 'Mallorca', 'Carrer de la Mar 56', '14500000', 'Stravagante residenza sull''isola di Mallorca con vista sul Mar Mediterraneo. Dotata di palestra privata, sala yoga, centro benessere e cantina per i vini pregiati.', '../CaseInVendita/villa_celeste.jpg'),
(17, 9, 'Villa Splendore', 'Italia', 'Firenze', 'Via dei Tornabuoni 10', '28000000', 'Iconica villa rinascimentale nel cuore di Firenze, a due passi dal Ponte Vecchio. Decorata con affreschi originali, giardino all''italiana e cappella privata.', '../CaseInVendita/villa_splendore.jpg');


CREATE TABLE Immagini_casa (
    Id_immagine INT PRIMARY KEY AUTO_INCREMENT,
    Id_casa INT NOT NULL,
    Nome_file VARCHAR(250) NOT NULL,
    FOREIGN KEY (Id_casa) REFERENCES Casa(Id_casa)
);

INSERT INTO Immagini_casa(Id_casa, Nome_file) VALUE ('1', 'https://www.negrettiarreda.it/public/img/negretti01-1763.jpg');
INSERT INTO Immagini_casa(Id_casa, Nome_file) VALUE ('1', 'https://hpinterior.it/wp-content/uploads/2022/10/render-Villa-Polpenazze-.jpg');


CREATE TABLE Contatto (
 Id_contatto int(80) PRIMARY KEY AUTO_INCREMENT,
 Nome VARCHAR(40) NOT NULL,
 Email VARCHAR(40) NOT NULL,
 Data_messaggio TIMESTAMP on UPDATE CURRENT_TIMESTAMP(),
 Messaggio TEXT ( 65.535 byte ) NOT NULL
);

INSERT INTO Contatto (Nome, Email, Messaggio) VALUE
('Daniele', 'dani@gmail.com', 'Non risco a vedere il sito');


CREATE TABLE RichiesteXMessaggio (
 Id_msg int(250) PRIMARY KEY AUTO_INCREMENT,
 Email_richiedente VARCHAR(40) NOT NULL,
 Id_agente INT NOT NULL,
 Data_messaggio TIMESTAMP on UPDATE CURRENT_TIMESTAMP(),
 Titolo VARCHAR(250) NOT NULL,
 Descrizione_msg VARCHAR(255) NOT NULL
);

INSERT INTO RichiesteXMessaggio (Email_richiedente, Id_agente, Titolo, Descrizione_msg) VALUE 
('simon@gmail.com', '1', 'Appuntamento da fissare', 'richiesta per fissare un appuntamento per domani');


CREATE TABLE CasaVenduta (
 Id_venduta int(250) PRIMARY KEY AUTO_INCREMENT,
 Id_casa INT NOT NULL,
 FOREIGN KEY (Id_casa) REFERENCES Casa(Id_casa)
);

INSERT INTO CasaVenduta (Id_casa) VALUE ('3');


CREATE TABLE ScambioEmail (
 Id_email int PRIMARY KEY AUTO_INCREMENT,
 Email_richiedente VARCHAR(80) NOT NULL,
 Id_agente INT NOT NULL,
 Data_messaggio TIMESTAMP on UPDATE CURRENT_TIMESTAMP(),
 Titolo text NOT NULL,
 Descrizione_email text NOT NULL,
 FOREIGN KEY (Id_agente) REFERENCES Agente(Id_agente)
);

INSERT INTO ScambioEmail (Email_richiedente, Id_agente, Titolo, Descrizione_email) VALUE 
('simon@gmail.com', '1', 'Appuntamento da fissare', 'richiesta per fissare un appuntamento per domani');


CREATE TABLE Preferita (
 Id_prefe INT PRIMARY KEY AUTO_INCREMENT,
 Id_user INT NOT NULL,
 Id_casaPref INT NOT NULL,
 FOREIGN KEY (Id_casaPref) REFERENCES Casa(Id_casa)
);

INSERT INTO Preferita (Id_user, Id_casaPref) VALUE ('3', '36');

//fine
