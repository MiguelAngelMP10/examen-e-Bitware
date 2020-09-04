class Persona {
  private _nombre: string = "";
  private _edad: number = 0;
  private _NSS: string = "";
  private _sexo: string = "H";
  private _peso: number = 0;
  private _altura: number = 0;

  constructor(
    nombre: string,
    edad: number,
    sexo: string,
    peso: number,
    altura: number
  ) {
    this._nombre = nombre;
    this._edad = edad;
    this._NSS = this.generaNSS();
    this._sexo = sexo;
    this._peso = peso;
    this._altura = altura;
  }
  get NSS() {
    return this._NSS;
  }
  get nombre() {
    return this._nombre;
  }
  set nombre(nombre) {
    this._nombre = nombre;
  }

  set edad(edad) {
    this._edad = edad;
  }
  get edad() {
    return this._edad;
  }

  set sexo(sexo) {
    this._sexo = sexo;
  }
  get sexo() {
    return this._sexo;
  }
  set peso(peso) {
    this._peso = peso;
  }
  get peso() {
    return this._peso;
  }
  set altura(altura) {
    this._altura = altura;
  }
  get altura() {
    return this._altura;
  }
  public calcularIMC(): any {
    const datosHombre = [
      { de: 0, hasta: 20, mensaje: -1 },
      { de: 20, hasta: 25, mensaje: 0 },
      { de: 25, hasta: 40, mensaje: 1 },
    ];
    const datosMujer = [
      { de: 0, hasta: 19, mensaje: -1 },
      { de: 19, hasta: 24, mensaje: 0 },
      { de: 24, hasta: 37, mensaje: 1 },
    ];

    let medidas: any = [];

    if (this.sexo === "H") {
      medidas = datosHombre;
    }
    if (this.sexo === "M") {
      medidas = datosMujer;
    }

    let IMC = this.peso / Math.pow(this.altura, 2);
    let valor = null;

    medidas.forEach((medida: any) => {
      if (IMC >= parseInt(medida.de) && IMC <= parseInt(medida.hasta)) {
        valor = medida.mensaje;
      }
    });
    return valor;
  }
  public esMayorDeEdad() {
    return this.edad >= 18 ? true : false;
  }

  private comprobarSexo(sexo: string) {
    return sexo == "H" || sexo == "M" ? true : false;
  }

  public toString() {
    return JSON.stringify(this);
  }
  private generaNSS() {
    let nss = "";
    let diccionario =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    for (var i = 0; i < 8; i++) {
      nss += diccionario.charAt(Math.floor(Math.random() * diccionario.length));
    }
    return nss;
  }
}

export default Persona;
// let p = new Persona("Miguel Angel Muñoz Pozos", 26, "ggg", "H", 72, 1.65);

// console.log(p);
// console.log(p.calcularIMC());
// console.log(p.esMayorDeEdad());
// console.log(p.toString());
