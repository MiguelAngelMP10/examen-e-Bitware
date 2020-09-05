"use strict";
const { Model } = require("sequelize");
module.exports = (sequelize, DataTypes) => {
  class Cliente extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Cliente.init(
    {
      cliente_id: DataTypes.NUMBER,
      nombre_usuario: DataTypes.STRING,
      contrasena: DataTypes.STRING,
      nombre: DataTypes.STRING,
      apellidos: DataTypes.STRING,
      correo_electronico: DataTypes.STRING,
      edad: DataTypes.NUMBER,
      estatura: DataTypes.NUMBER,
      peso: DataTypes.NUMBER,
      IMC: DataTypes.NUMBER,
      GEB: DataTypes.NUMBER,
      ETA: DataTypes.NUMBER,
      fecha_creacion: DataTypes.DATE,
      fecha_actualizacion: DataTypes.DATE,
    },
    {
      sequelize,
      modelName: "Cliente",

      indexes: [
        { unique: true, fields: ["nombre_usuario", "correo_electronico"] },
      ],
    }
  );
  return Cliente;
};
