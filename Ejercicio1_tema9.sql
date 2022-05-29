CREATE TABLE tblUsuarios (
idx INT PRIMARY KEY,
usuario VARCHAR,
nombre VARCHAR,
sexo VARCHAR,
nivel TINYINT,
email VARCHAR,
telefono VARCHAR,
marca VARCHAR,
compañia VARCHAR,
saldo FLOAT,
activo BOOLEAN
);
INSERT INTO tblUsuarios(
    nombre,
    sexo,
    nivel,
    email,
    telefono,
    marca,
    compañia,
    saldo,
    activo
)
VALUES
    (
        "Juan Garcia",
        "M",
        "1",
        "jantonio.juan@gmail.com",
        "616707466",
        "Iphone",
        "Orange",
        "100",
        TRUE
    ),
     (
        "Pedro Garcia",
        "M",
        "2",
        "pedrogarcia@gmail.com",
        "623456789",
        "Iphone",
        "Vodafone",
        "100",
        TRUE
    ),
     (
        "Alberto Perez",
        "M",
        "3",
        "albertoperez@gmail.com",
        "698345635",
        "Samsung",
        "Movistar",
        "20",
        TRUE
    ),
     (
        "Sofia Nadal",
        "F",
        "4",
        "sofian@gmail.com",
        "615879699",
        "Iphone",
        "Orange",
        "200",
        TRUE
    ),
     (
        "Sergio Hernandez",
        "M",
        "5",
        "serguih@gmail.com",
        "645679808",
        "Xiaomi",
        "Movistar",
        "30",
        TRUE
    ),
     (
        "Manuela Galvan",
        "F",
        "6",
        "MNUEL@gmail.com",
        "689065435",
        "NOKIA",
        "NEXTEL",
        "200",
        TRUE
    ),
     (
        "Sonia Pascua",
        "F",
        "7",
        "SoniaP@gmail.com",
        "789065432",
        "blackberry",
        "Axel",
        "150",
        TRUE
    ),
     (
        "Ana Garcia",
        "F",
        "8",
        "Anagarciamart@gmail.com",
        "616707466",
        "LG",
        "Iusacell",
        "25",
        FALSE
    ),
     (
        "Pedro Herbella",
        "M",
        "9",
        "pedrohnm@gmail.com",
        "632896677",
        "Motorola",
        "Telcel",
        "400",
        TRUE
    ),
     (
        "Carolina Arias",
        "F",
        "10",
        "carolinarias@gmail.com",
        "623121234",
        "Sony",
        "Unefon",
        "34",
        TRUE
    ),
     (
        "Roberto Losada",
        "M",
        "11",
        "rbuenon@gmail.com",
        "645612345",
        "LG",
        "Iusacell",
        "100",
        TRUE
    ),
     (
        "Feliz Sanz",
        "M",
        "12",
        "felizdn@gmail.com",
        "666777889",
        "Sony",
        "Telcel",
        "87",
        FALSE
    ),
     (
        "Carmen Bautista",
        "F",
        "13",
        "carminaenf@gmail.com",
        "6461511918",
        "Blackberry",
        "Unefon",
        "13",
        TRUE
    ), (
        "Alba Navarro",
        "F",
        "14",
        "albitann@gmail.com",
        "623667543",
        "Nokia",
        "Iusacell",
        "20",
        TRUE
    ),
     (
        "Marcos Varela",
        "M",
        "15",
        "marcosvarela@gmail.com",
        "677889954",
        "Samsung",
        "Axel",
        "350",
        TRUE
    ),
     (
        "Andrea Fernandez",
        "F",
        "16",
        "andreafernandez@gmail.com",
        "622339800",
        "Motorola",
        "Telcel",
        "350",
        TRUE
    ),
     (
        "Manuel Jaramillo",
        "M",
        "17",
        "Manueljara@gmail.com",
        "611908765",
        "Sony",
        "Iusacell",
        "222",
        TRUE
    ),
     (
        "Juan Cala Pedro",
        "M",
        "18",
        "pedritocala@gmail.com",
        "6323434324",
        "Motorola",
        "Axel",
        "130",
        TRUE
    ),
     (
        "Raquel de Dios",
        "F",
        "19",
        "raquelded@gmail.com",
        "699762343",
        "Blackberry",
        "Nokia",
        "300",
        TRUE
    ),
     (
        "Julian ces",
        "M",
        "20",
        "juliances@gmail.com",
        "687556430",
        "Sony",
        "Iusacell",
        "100",
        TRUE
    );
