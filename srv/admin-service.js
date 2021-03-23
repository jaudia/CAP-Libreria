const cds = require('@sap/cds');

module.exports = cds.service.impl((srv) => {

    // const { Libros } = srv.entities;

    srv.before('CREATE', 'Libros', (req) => {
        const datos = req.data;

        console.log('------------------------');
        console.log(`Se va a crear el siguiente libro:`);
        console.log(`ID: ${datos.ID} \nNombre: ${datos.name}`);
    });

    srv.after('CREATE', 'Libros', (libro) => {

        console.log('------------------------');
        console.log(`Se generó el siguiente libro:`);
        console.log(libro);
    });


    srv.before('UPDATE', 'Libros', (req) => {
        const datos = req.data;

        console.log('------------------------');
        console.log(`Actualizacion de libro, before:`);
        console.log(`ID: ${datos.ID} \nNombre: ${datos.name}`);
    });

    srv.after('UPDATE', 'Libros', (libro) => {
        console.log('------------------------');
        console.log(`Resultado de la actualizacion del libro:`);
        console.log(libro);
    });

);