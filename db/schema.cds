using {
    managed,
    cuid
} from '@sap/cds/common';

namespace myLibreria;

entity CantLibros : cuid, managed {
    Cantidad   : Integer;
    Price      : Integer;
    Comentario : String;
};

entity Libros : cuid {
    name       : String(111);
    author     : Association to many Libros_Autores
                     on author.libro = $self;
    CantLibros : Composition of CantLibros
}

entity Authors : cuid {
    nombre_author  : String(111);
    paisNacimiento : String(100);
    libros         : Association to many Libros_Autores
                         on libros.author = $self;
}

entity Libros_Autores : cuid {
    libro  : Association to Libros;
    author : Association to Authors;
}
