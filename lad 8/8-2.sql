-- Создание таблицы "Гостиницы"
CREATE TABLE Гостиницы (
    идентификатор INT PRIMARY KEY,
    название VARCHAR(255)
);

-- Создание таблицы "Номера"
CREATE TABLE Номера (
    гостиница INT,
    класс INT,
    количество_номеров INT,
    количество_мест INT,
    стоимость DECIMAL(10, 2),
    FOREIGN KEY (гостиница) REFERENCES Гостиницы (идентификатор)
);

-- Создание таблицы "Постояльцы"
CREATE TABLE Постояльцы (
    паспорт VARCHAR(20) PRIMARY KEY,
    ФИО VARCHAR(255),
    пол VARCHAR(10),
    гостиница INT,
    номер INT,
    дата_вселения DATE,
    дата_выезда DATE,
    FOREIGN KEY (гостиница) REFERENCES Гостиницы (идентификатор),
    FOREIGN KEY (номер) REFERENCES Номера (класс)
);