-- criando o banco e definindo o nome
create database global_cancer_frequency;
use global_cancer_frequency;

-- tabela de países
create table countries (
	id int auto_increment primary key,
    country_name varchar(100) unique
);

-- tabela de frequência de câncer
create table cancer_frequency (
	id int auto_increment primary key,
    country_id int,
    country_rate float,
    foreign key (country_id) references countries(id)
);

-- tabela de incidência por gênero
create table cancer_incidence (
	id int auto_increment primary key,
    country_id int,
    male_with_nmsc_number float,
    male_with_nmsc_rate float,
    male_without_nmsc_number float,
    male_without_nmsc_rate float,
    female_with_nmsc_number float,
    female_with_nmsc_rate float,
    female_without_nmsc_number float,
	female_without_nmsc_rate float,
    foreign key (country_id) references countries(id)
);

-- tabela de mortalidade por gênero
create table cancer_mortality (
	id int auto_increment primary key,
    country_id int,
	male_with_nmsc_number float,
    male_with_nmsc_rate float,
    male_without_nmsc_number float,
    male_without_nmsc_rate float,
    female_with_nmsc_number float,
    female_with_nmsc_rate float,
    female_without_nmsc_number float,
	female_without_nmsc_rate float,
    foreign key (country_id) references countries(id)
);

-- tabela de incidência geral
create table overral_incidence (
	id int auto_increment primary key,
    country_id int,
    with_nmsc_number float,
    with_nmsc_rate float,
    without_nmsc_number float,
    without_nmsc_rate float,
    foreign key (country_id) references countries(id)
);

-- tabela de mortalidade geral
create table overral_mortality (
	id int auto_increment primary key,
    country_id int,
    with_nmsc_number float,
    with_nmsc_rate float,
    without_nmsc_number float,
    without_nmsc_rate float,
    foreign key (country_id) references countries(id)
);