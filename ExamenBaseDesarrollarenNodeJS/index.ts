const express = require("express");
const bodyParser = require("body-parser");
const handlebars = require("express-handlebars");
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.set("view engine", "hbs");

app.engine("hbs", handlebars({ extname: "hbs", defaultLayout: "main" }));
app.use(express.static("public"));

import Persona from "./lib/Persona";

app.get("/", function (req: any, res: any) {
  res.render("index");
});

app.post("/calcularIMC", function (req: any, res: any) {
  let { nombre, edad, sexo, peso, estatura } = req.body;
  const persona = new Persona(nombre, edad, sexo, peso, estatura);

  let ICM = persona.calcularIMC();
  let situacion = null;
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
  let reporte = {
    situacionICM: situacion,
    mayorDeEdad: persona.esMayorDeEdad()
      ? "Es mayor de edad"
      : "Es menor de edad",
    inforcion: persona.toString(),
  };
  console.log(reporte);
  res.render("reporte", reporte);
});

app.listen(3000, () => {
  console.log(`Example app listening at http://localhost:${3000}`);
});
