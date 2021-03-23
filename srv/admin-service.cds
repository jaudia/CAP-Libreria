// using {PrimerEjercicio as my} from '../db/schema';
using {myLibreria as my} from '../db/schema';

service AdminService @(_requires : 'authenticated-user') {
    entity Libros   as projection on my.Libros;
    entity Authors  as projection on my.Authors;
    entity Conjunto as projection on my.Libros_Autores;
}
