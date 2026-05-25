create database banking_system;
use banking_system;

create table customers (
    customer_id int primary key auto_increment,
    first_name varchar(50),
    last_name varchar(50),
    gender enum('male', 'female'),
    phone varchar(20),
    email varchar(100),
    city varchar(50)
);

create table accounts (
    account_id int primary key auto_increment,
    customer_id int,
    account_type enum('saving', 'current'),
    balance decimal(12,2),
    created_at date,
    foreign key (customer_id) references customers(customer_id)
);

create table transactions (
    transaction_id int primary key auto_increment,
    account_id int,
    transaction_type enum('deposit', 'withdraw'),
    amount decimal(10,2),
    transaction_date date,
    foreign key (account_id) references accounts(account_id)
);

create table loans (
    loan_id int primary key auto_increment,
    customer_id int,
    loan_amount decimal(12,2),
    loan_type varchar(50),
    loan_date date,
    foreign key (customer_id) references customers(customer_id)
);

insert into customers (first_name, last_name, gender, phone, email, city)
values
('sok', 'dara', 'male', '012345001', 'sok1@gmail.com', 'phnom penh'),
('vann', 'srey', 'female', '012345002', 'vann2@gmail.com', 'siem reap'),
('chan', 'pisey', 'female', '012345003', 'chan3@gmail.com', 'kampot'),
('kim', 'long', 'male', '012345004', 'kim4@gmail.com', 'battambang'),
('ly', 'na', 'female', '012345005', 'ly5@gmail.com', 'kep'),
('heng', 'sokha', 'male', '012345006', 'heng6@gmail.com', 'takeo'),
('nita', 'chan', 'female', '012345007', 'nita7@gmail.com', 'kandal'),
('rith', 'yim', 'male', '012345008', 'rith8@gmail.com', 'kampong cham'),
('maly', 'heng', 'female', '012345009', 'maly9@gmail.com', 'pursat'),
('vichea', 'kim', 'male', '012345010', 'vichea10@gmail.com', 'kratie'),
('bopha', 'seng', 'female', '012345011', 'bopha11@gmail.com', 'prey veng'),
('kosal', 'ly', 'male', '012345012', 'kosal12@gmail.com', 'svay rieng'),
('davy', 'sok', 'female', '012345013', 'davy13@gmail.com', 'kampong speu'),
('chea', 'rath', 'male', '012345014', 'chea14@gmail.com', 'mondulkiri'),
('sina', 'hong', 'female', '012345015', 'sina15@gmail.com', 'ratanakiri'),
('pheak', 'meng', 'male', '012345016', 'pheak16@gmail.com', 'pailin'),
('kanha', 'srun', 'female', '012345017', 'kanha17@gmail.com', 'koh kong'),
('virak', 'touch', 'male', '012345018', 'virak18@gmail.com', 'oddar meanchey'),
('lina', 'nou', 'female', '012345019', 'lina19@gmail.com', 'stung treng'),
('sothy', 'kea', 'male', '012345020', 'sothy20@gmail.com', 'preah vihear');

insert into accounts (customer_id, account_type, balance, created_at)
values
(1, 'saving', 2500.00, '2025-01-01'),
(2, 'current', 3400.00, '2025-01-02'),
(3, 'saving', 1800.00, '2025-01-03'),
(4, 'current', 4200.00, '2025-01-04'),
(5, 'saving', 2100.00, '2025-01-05'),
(6, 'current', 5300.00, '2025-01-06'),
(7, 'saving', 1600.00, '2025-01-07'),
(8, 'current', 2900.00, '2025-01-08'),
(9, 'saving', 3100.00, '2025-01-09'),
(10, 'current', 2700.00, '2025-01-10'),
(11, 'saving', 4500.00, '2025-01-11'),
(12, 'current', 2200.00, '2025-01-12'),
(13, 'saving', 3900.00, '2025-01-13'),
(14, 'current', 1700.00, '2025-01-14'),
(15, 'saving', 2600.00, '2025-01-15'),
(16, 'current', 6000.00, '2025-01-16'),
(17, 'saving', 1500.00, '2025-01-17'),
(18, 'current', 3700.00, '2025-01-18'),
(19, 'saving', 2800.00, '2025-01-19'),
(20, 'current', 4900.00, '2025-01-20');

insert into transactions (account_id, transaction_type, amount, transaction_date)
values
(1, 'deposit', 500.00, '2025-02-01'),
(2, 'withdraw', 200.00, '2025-02-02'),
(3, 'deposit', 300.00, '2025-02-03'),
(4, 'withdraw', 150.00, '2025-02-04'),
(5, 'deposit', 700.00, '2025-02-05'),
(6, 'withdraw', 100.00, '2025-02-06'),
(7, 'deposit', 250.00, '2025-02-07'),
(8, 'withdraw', 350.00, '2025-02-08'),
(9, 'deposit', 400.00, '2025-02-09'),
(10, 'withdraw', 500.00, '2025-02-10'),
(11, 'deposit', 450.00, '2025-02-11'),
(12, 'withdraw', 120.00, '2025-02-12'),
(13, 'deposit', 620.00, '2025-02-13'),
(14, 'withdraw', 330.00, '2025-02-14'),
(15, 'deposit', 210.00, '2025-02-15'),
(16, 'withdraw', 700.00, '2025-02-16'),
(17, 'deposit', 190.00, '2025-02-17'),
(18, 'withdraw', 410.00, '2025-02-18'),
(19, 'deposit', 800.00, '2025-02-19'),
(20, 'withdraw', 250.00, '2025-02-20');

insert into loans (customer_id, loan_amount, loan_type, loan_date)
values
(1, 5000.00, 'home loan', '2025-03-01'),
(2, 3000.00, 'car loan', '2025-03-02'),
(3, 2500.00, 'business loan', '2025-03-03'),
(4, 4500.00, 'education loan', '2025-03-04'),
(5, 6000.00, 'home loan', '2025-03-05'),
(6, 3500.00, 'car loan', '2025-03-06'),
(7, 2000.00, 'business loan', '2025-03-07'),
(8, 7000.00, 'education loan', '2025-03-08'),
(9, 2800.00, 'home loan', '2025-03-09'),
(10, 1500.00, 'car loan', '2025-03-10'),
(11, 4700.00, 'business loan', '2025-03-11'),
(12, 3900.00, 'education loan', '2025-03-12'),
(13, 8000.00, 'home loan', '2025-03-13'),
(14, 1200.00, 'car loan', '2025-03-14'),
(15, 3300.00, 'business loan', '2025-03-15'),
(16, 5200.00, 'education loan', '2025-03-16'),
(17, 2400.00, 'home loan', '2025-03-17'),
(18, 4100.00, 'car loan', '2025-03-18'),
(19, 6200.00, 'business loan', '2025-03-19'),
(20, 2800.00, 'education loan', '2025-03-20');



create user 'michael'@'localhost' identified by 'michael123$';
grant all privileges on banking_system.* to 'michael'@'localhost' with grant option;

create user 'jessica'@'localhost' identified by 'jessica2023$';
grant alter, create view, delete, select, insert, update on banking_system.* to 'jessica'@'localhost';
revoke alter, create view, delete, select, insert, update on banking_system.* from 'jessica'@'localhost';
grant all privileges on banking_system.* to 'jessica'@'localhost';

create user 'james'@'localhost' identified by 'james2024$';
grant alter, create view, delete, select, insert, update on banking_system.* to 'james'@'localhost';

create user 'david'@'localhost' identified by 'david123456$';
grant alter, create view, insert, select, update on banking_system.* to 'david'@'localhost';

create user 'matthew'@'localhost' identified by 'matthew6789$';
grant create view, select, insert, update on banking_system.* to 'matthew'@'localhost';

create user 'emily'@'localhost' identified by 'emily1234$';
grant select, insert, update on banking_system.* to 'emily'@'localhost';

create user 'john'@'localhost' identified by 'john1234$';
grant select, insert, update on banking_system.* to 'john'@'localhost';

create user 'mario'@'localhost' identified by 'mario1234$';
alter user 'mario'@'localhost' identified by 'mario1234$' password expire interval 100 day;
alter user 'mario'@'localhost' password expire;
grant select, insert, update on banking_system.* to 'mario'@'localhost';

flush privileges;

show grants for 'michael'@'localhost';
show grants for 'jessica'@'localhost';
show grants for 'james'@'localhost';
show grants for 'david'@'localhost';
show grants for 'matthew'@'localhost';
show grants for 'emily'@'localhost';
show grants for 'john'@'localhost';
show grants for 'mario'@'localhost';

select * from mysql.user;
select * from mysql.global_priv;
