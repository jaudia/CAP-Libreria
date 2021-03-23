// using {PrimerEjercicio as my} from '../db/schema';
using {myLibreria as my} from '../db/schema';

service UserService @(path : '/usuario') {

  
  entity Libros  as
    select from my.Libros_Autores {
      *
    };  


  entity Authors as select from my.Libros_Autores : author;

// @requires_ : 'authenticated-user'
// action submitOrder(book : Libros : ID, amount : Integer);
}
