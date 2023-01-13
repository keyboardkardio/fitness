-- Version 1.0 --

create table splits (
    id int not null primary key,
    name varchar(6) not null unique
);

create table muscle_groups (
    id int not null primary key,
    split_id int not null references splits(id),
    name varchar(50) not null unique
);

create table movement_types (
    id int not null primary key,
    name varchar(12) not null unique
);

create table exercises (
    id serial not null primary key,
    movement_type_id int not null references movement_types(id),
    name varchar(50) not null unique
);

create table muscle_group_exercises (
    muscle_group_id int not null references muscle_groups(id),
    exercise_id int not null references exercises(id),
    primary key (muscle_group_id, exercise_id)
);

/* ---- For use with the PlanetScale platform ----
create table splits (
    id int not null primary key,
    name varchar(6) not null unique
);

create table movement_types (
    id int not null primary key,
    name varchar(12) not null unique
);

create table muscle_groups (
    id int not null primary key,
    split_id int not null,
    name varchar(50) not null unique,
    key split_id_idx (split_id)
);

create table exercises (
    id serial not null primary key,
    movement_type_id int not null,
    name varchar(50) not null unique,
    key movement_type_id_idx (movement_type_id)
);

create table muscle_group_exercises (
    id serial not null primary key,
    muscle_group_id int not null,
    exercise_id int not null,
    key muscle_group_id_idx (muscle_group_id),
    key exercise_id_idx (exercise_id)
);
----------------------------------------------- */

insert into splits (id, name)
    values (1, 'core'),
           (2, 'lower'),
           (3, 'upper');

insert into movement_types (id, name)
    values (1, 'full-body'),
           (2, 'pull'),
           (3, 'push'),
           (4, 'static');

insert into muscle_groups (id, split_id, name)
    values (1, 2, 'abductors'),
           (2, 1, 'abs'),
           (3, 2, 'adductors'),
           (4, 3, 'back'),
           (5, 3, 'biceps'),
           (6, 2, 'calves'),
           (7, 3, 'chest'),
           (8, 3, 'forearms'),
           (9, 2, 'glutes'),
           (10, 2, 'hamstrings'),
           (11, 1, 'lower back'),
           (12, 3, 'neck'),
           (13, 2, 'quadriceps'),
           (14, 3, 'shoulders'),
           (15, 3, 'trapezius'),
           (16, 3, 'triceps');

insert into exercises (movement_type_id, name)
    values (3, 'arnold press'),
           (3, 'barbell back squat'),
           (3, 'barbell bench press'),
           (1, 'barbell clean'),
           (2, 'barbell deadlift'),
           (3, 'barbell front squat'),
           (3, 'barbell glute bridge'),
           (3, 'barbell hip thrust'),
           (3, 'barbell landmine press'),
           (3, 'barbell lunge'),
           (2, 'barbell row'),
           (3, 'barbell shoulder press'),
           (1, 'barbell snatch'),
           (3, 'bulgarian split squat'),
           (3, 'cable crossover'),
           (2, 'cable face-pull'),
           (3, 'cable push-down'),
           (3, 'calf raise'),
           (3, 'chest fly'),
           (2, 'chin up'),
           (2, 'crunch'),
           (4, 'dead hang'),
           (2, 'dumbbell bicep curl'),
           (2, 'dumbbell concentration curl'),
           (3, 'dumbbell front raise'),
           (2, 'dumbbell hammer curl'),
           (3, 'dumbbell lateral raise'),
           (2, 'dumbbell preacher curl'),
           (3, 'dumbbell rear delt raise'),
           (2, 'dumbbell row'),
           (3, 'dumbbell shoulder press'),
           (1, 'dumbbell snatch'),
           (3, 'dumbbell squeeze press'),
           (3, 'dumbbell tricep extension'),
           (3, 'dumbbell tricep kickback'),
           (2, 'ez-bar curl'),
           (2, 'lat pull down'),
           (2, 'leg pull-in'),
           (3, 'leg raise'),
           (2, 'machine hamstring curl'),
           (3, 'machine leg extension'),
           (4, 'plank'),
           (2, 'power clean'),
           (1, 'power snatch'),
           (2, 'pull up'),
           (3, 'push up'),
           (1, 'single-arm cable row'),
           (2, 'single-arm dumbbell row'),
           (2, 'sit up'),
           (3, 'tricep dip');

insert into muscle_group_exercises (exercise_id, muscle_group_id)
    values (1, 14),
           (1, 15),
           (1, 16),
           (2, 9),
           (2, 10),
           (2, 13),
           (3, 5),
           (3, 7),
           (3, 16),
           (4, 9),
           (4, 11),
           (4, 10),
           (4, 13),
           (4, 15),
           (5, 4),
           (5, 9),
           (5, 10),
           (5, 11),
           (5, 15),
           (6, 4),
           (6, 13),
           (7, 9),
           (8, 9),
           (8, 10),
           (9, 7),
           (9, 14),
           (9, 16),
           (10, 6),
           (10, 9),
           (10, 10),
           (10, 13),
           (11, 4),
           (11, 15),
           (12, 14),
           (12, 15),
           (12, 16),
           (13, 9),
           (13, 13),
           (13, 14),
           (13, 15),
           (14, 6),
           (14, 9),
           (14, 10),
           (14, 13),
           (15, 7),
           (16, 4),
           (16, 14),
           (17, 16),
           (18, 6),
           (19, 7),
           (20, 4),
           (21, 2),
           (22, 4),
           (23, 5),
           (24, 5),
           (25, 5),
           (25, 7),
           (25, 14),
           (26, 5),
           (27, 14),
           (27, 15),
           (28, 5),
           (29, 4),
           (29, 15),
           (30, 4),
           (30, 5),
           (30, 15),
           (31, 14),
           (31, 15),
           (32, 16),
           (33, 7),
           (33, 16),
           (34, 16),
           (35, 16),
           (36, 5),
           (37, 4),
           (38, 2),
           (39, 2),
           (39, 11),
           (40, 10),
           (41, 13),
           (42, 2),
           (42, 11),
           (43, 4),
           (43, 5),
           (43, 6),
           (43, 9),
           (43, 10),
           (43, 11),
           (43, 13),
           (43, 15),
           (44, 10),
           (44, 13),
           (44, 15),
           (45, 4),
           (46, 7),
           (46, 14),
           (46, 16),
           (47, 4),
           (47, 14),
           (47, 15),
           (48, 4),
           (48, 14),
           (48, 15),
           (49, 2),
           (50, 16);
