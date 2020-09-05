"use strict";

module.exports = {
  up: async (queryInterface, Sequelize) => {
    return queryInterface.bulkInsert("Clientes", [
      {
        cliente_id: 1,
        nombre_usuario: "MiguelAngelMP10",
        contrasena: "123",
        nombre: "Miguel Angel",
        apellidos: "Muñoz Pozos",
        correo_electronico: "mmunozpozos@gmail.com",
        edad: 25,
        estatura: 1.66,
        peso: 72,
        IMC: 447,
        GEB: 11,
        ETA: 1144,
        fecha_creacion: new Date(),
        fecha_actualizacion: new Date(),
        createdAt: new Date(),
        updatedAt: new Date(),
      },
    ]);
  },

  down: async (queryInterface, Sequelize) => {
    return queryInterface.bulkDelete("Clientes", null, {});
  },
};
