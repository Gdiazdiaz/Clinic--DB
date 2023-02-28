CREATE TABLE patients(
   id serial Primary key,
   name text,
   date_of_birth date
);

CREATE TABLE treatments(
   id serial Primary key,
   type text,
   name text
);

CREATE TABLE medical_histories(
   id serial Primary key,
   admitted_at timestamp,
   patient_id integer References patients (id),
	status text
);