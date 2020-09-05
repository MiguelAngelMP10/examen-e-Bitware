const express = require("express");
const bodyParser = require("body-parser");
const app = express();

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));

const { Cliente } = require("./models");

app.get("/NutriNET/cliente", async function (req, res) {
  const users = await Cliente.findAll();
  res.json({
    cve_Error: 0,
    cve_Mensaje: "informacion obtenida correctamente",
    data: users,
  });
});

app.get("/NutriNET/cliente/:id", async function (req, res) {
  const user = await Cliente.findAll({
    where: {
      cliente_id: req.params.id,
    },
  });
  res.json({
    cve_Error: 0,
    cve_Mensaje: "informacion obtenida correctamente",
    data: user,
  });
});

app.post("/NutriNET/cliente", async (req, res) => {
  try {
    const cliente = await Cliente.create(req.body);
    res.json({
      cve_Error: 0,
      cve_Mensaje: "Registro insertado correctamente",
      data: cliente,
    });
  } catch (error) {
    res.json({
      cve_Error: -1,
      cve_Mensaje: error,
    });
  }
});

app.delete("/NutriNET/cliente/:id", async (req, res) => {
  const cliente = await Cliente.destroy({
    where: {
      id: req.params.id,
    },
  });
  res.json({
    cve_Error: 0,
    cve_Mensaje: "Registro eliminado correctamente",
    data: cliente,
  });
});

app.put("/NutriNET/cliente/:id", async (req, res) => {
  try {
    const cliente = await Cliente.update(req.body, {
      where: {
        id: req.params.id,
      },
    });
    res.json({
      cve_Error: 0,
      cve_Mensaje: "Registro acutualizado orrectamente",
      data: cliente,
    });
  } catch (error) {
    res.json({
      cve_Error: -1,
      cve_Mensaje: error,
    });
  }
});

app.listen(3000, () => {
  console.log("El servidor está inicializado en el puerto 3000");
});
