"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var express = require("express");
var bodyParser = require("body-parser");
var handlebars = require("express-handlebars");
var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.set("view engine", "hbs");
app.engine("hbs", handlebars({ extname: "hbs", defaultLayout: "main" }));
app.use(express.static("public"));
var Persona_1 = __importDefault(require("./lib/Persona"));
app.get("/", function (req, res) {
    res.render("index");
});
app.post("/calcularIMC", function (req, res) {
    var _a = req.body, nombre = _a.nombre, edad = _a.edad, sexo = _a.sexo, peso = _a.peso, estatura = _a.estatura;
    var persona = new Persona_1.default(nombre, edad, sexo, peso, estatura);
    var ICM = persona.calcularIMC();
    var situacion = null;
    console.log(ICM);
    if (ICM == -1) {
        situacion = "por debajo de su peso ideal";
    }
    if (ICM == 0) {
        situacion = "peso ideal";
    }
    if (ICM == 1) {
        situacion = "tiene sobrepeso";
    }
    var reporte = {
        situacionICM: situacion,
        mayorDeEdad: persona.esMayorDeEdad()
            ? "Es mayor de edad"
            : "Es menor de edad",
        inforcion: persona.toString(),
    };
    console.log(reporte);
    res.render("reporte", reporte);
});
app.listen(3000, function () {
    console.log("Example app listening at http://localhost:" + 3000);
});
