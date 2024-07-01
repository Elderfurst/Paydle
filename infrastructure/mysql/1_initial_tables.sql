CREATE TABLE `Jobs` (
    `ID` int unsigned not null auto_increment,
    `Name` varchar(255) not null,
    `Salary` int unsigned not null,
    `Country` varchar(100) not null,
    `Experience` int unsigned not null,
    `Company` varchar(100) not null,
    `Bonus` int unsigned not null,
    `Level` varchar(100) not null,
    `Completed` boolean not null default 0,
    primary key (`ID`),
    unique key (`Completed`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

CREATE TABLE `Users` (
    `ID` int not null auto_increment,
    `Provider` varchar(100) not null,
    `ProviderID` varchar(255) not null,
    primary key (`ID`),
    unique key (`Provider`, `ProviderID`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

CREATE TABLE `Stats` (
    `ID` int not null auto_increment,
    `UserID` int not null,
    `Played` int not null default '0',
    `Wins` int not null default '0',
    `Losses` int not null default '0',
    `LongestStreak` int not null default '0',
    `CurrentStreak` int not null default '0',
    `One` int not null default '0',
    `Two` int not null default '0',
    `Three` int not null default '0',
    `Four` int not null default '0',
    `Five` int not null default '0',
    `Six` int not null default '0',
    primary key (`ID`),
    unique key (`UserID`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;
