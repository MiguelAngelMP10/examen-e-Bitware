"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var Persona = /** @class */ (function () {
    function Persona(nombre, edad, sexo, peso, altura) {
        this._nombre = "";
        this._edad = 0;
        this._NSS = "";
        this._sexo = "H";
        this._peso = 0;
        this._altura = 0;
        this._nombre = nombre;
        this._edad = edad;
        this._NSS = this.generaNSS();
        this._sexo = sexo;
        this._peso = peso;
        this._altura = altura;
    }
    Object.defineProperty(Persona.prototype, "NSS", {
        get: function () {
            return this._NSS;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(Persona.prototype, "nombre", {
        get: function () {
            return this._nombre;
        },
        set: function (nombre) {
            this._nombre = nombre;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(Persona.prototype, "edad", {
        get: function () {
            return this._edad;
        },
        set: function (edad) {
            this._edad = edad;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(Persona.prototype, "sexo", {
        get: function () {
            return this._sexo;
        },
        set: function (sexo) {
            this._sexo = sexo;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(Persona.prototype, "peso", {
        get: function () {
            return this._peso;
        },
        set: function (peso) {
            this._peso = peso;
        },
        enumerable: true,
        configurable: true
    });
    Object.defineProperty(Persona.prototype, "altura", {
        get: function () {
            return this._altura;
        },
        set: function (altura) {
            this._altura = altura;
        },
        enumerable: true,
        configurable: true
    });
    Persona.prototype.calcularIMC = function () {
        var datosHombre = [
            { de: 0, hasta: 20, mensaje: -1 },
            { de: 20, hasta: 25, mensaje: 0 },
            { de: 25, hasta: 40, mensaje: 1 },
        ];
        var datosMujer = [
            { de: 0, hasta: 19, mensaje: -1 },
            { de: 19, hasta: 24, mensaje: 0 },
            { de: 24, hasta: 37, mensaje: 1 },
        ];
        var medidas = [];
        if (this.sexo === "H") {
            medidas = datosHombre;
        }
        if (this.sexo === "M") {
            medidas = datosMujer;
        }
        var IMC = this.peso / Math.pow(this.altura, 2);
        var valor = null;
        medidas.forEach(function (medida) {
            if (IMC >= parseInt(medida.de) && IMC <= parseInt(medida.hasta)) {
                valor = medida.mensaje;
            }
        });
        return valor;
    };
    Persona.prototype.esMayorDeEdad = function () {
        return this.edad >= 18 ? true : false;
    };
    Persona.prototype.comprobarSexo = function (sexo) {
        return sexo == "H" || sexo == "M" ? true : false;
    };
    Persona.prototype.toString = function () {
        return JSON.stringify(this);
    };
    Persona.prototype.generaNSS = function () {
        var nss = "";
        var diccionario = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        for (var i = 0; i < 8; i++) {
            nss += diccionario.charAt(Math.floor(Math.random() * diccionario.length));
        }
        return nss;
    };
    return Persona;
}());
exports.default = Persona;
// let p = new Persona("Miguel Angel Muñoz Pozos", 26, "ggg", "H", 72, 1.65);
// console.log(p);
// console.log(p.calcularIMC());
// console.log(p.esMayorDeEdad());
// console.log(p.toString());
