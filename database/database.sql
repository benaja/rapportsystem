
create table kunde(id int primary key auto_increment, vorname text, nachname text, zusatz text, strasse text, ort text, mobile text, festnetz text, verpflegung text, kuechen_ausstattung text, max_verpflegung int, fahrer_info text, bemerkung text, maps text);

create table mitarbeiter(id int primary key auto_increment, rufname text, vorname text, nachname text, nationalität text, isIntern boolean, isFahrer boolean, deutschkenntnisse boolean, englischkenntnisse boolean, geschlecht text, bemerkung text, erfahrung text, isAktiv boolean, profilbild text, allergie text);

create table eintritt-austritt(id int primary key auto_increment, mitarbeiter_id int, datum datetime, isEintritt boolean, foreign key(mitarbeiter_id) references mitarbeiter(id));

create table arbeitsort(id int primary key auto_increment, name text);

create table arbeitsort-mitarbeiter (arbeitsort_id, int, mitarbeiter_id int, primary key(arbeitsort_id, mitarbeiter_id));

create table kultur(id int primary key auto_increment, name text);

create table stundenangaben(id int primary key auto_increment, kunde_id int, kultur_id int, monatsanfang date, foreign key(kultur_id) references kultur(id));

create table einstellungen(id int primary key auto_increment, ferienstunden double);