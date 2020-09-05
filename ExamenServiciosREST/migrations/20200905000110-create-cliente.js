"use strict";
module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable("Clientes", {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER,
      },
      cliente_id: {
        type: Sequelize.NUMBER,
      },
      nombre_usuario: {
        type: Sequelize.STRING,
        unique: true,
      },
      contrasena: {
        type: Sequelize.STRING,
      },
      nombre: {
        type: Sequelize.STRING,
      },
      apellidos: {
        type: Sequelize.STRING,
      },
      correo_electronico: {
        type: Sequelize.STRING,
        unique: true,
      },
      edad: {
        type: Sequelize.NUMBER,
      },
      estatura: {
        type: Sequelize.NUMBER,
      },
      peso: {
        type: Sequelize.NUMBER,
      },
      IMC: {
        type: Sequelize.NUMBER,
      },
      GEB: {
        type: Sequelize.NUMBER,
      },
      ETA: {
        type: Sequelize.NUMBER,
      },
      fecha_creacion: {
        type: Sequelize.DATE,
      },
      fecha_actualizacion: {
        type: Sequelize.DATE,
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE,
      },
    });
  },
  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable("Clientes");
  },
};
