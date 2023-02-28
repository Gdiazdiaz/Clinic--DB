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

CREATE TABLE invoices(
   id serial Primary key,
   total_amount decimal,
   generated_at timestamp,
   payed_at timestamp,
   medical_history_id integer References medical_histories (id)
);

CREATE TABLE invoice_items(
   id serial Primary key,
   unit_price decimal,
   quantity integer,
   total_price decimal,
   invoice_id integer References invoices (id),
   treatment_id integer References treatments (id)
);

Create table med_hist_treat(
   medical_history_id integer References medical_histories (id),
   treatment_id integer References treatments (id)
);
