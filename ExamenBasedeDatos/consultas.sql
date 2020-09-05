SELECT
    productos.idproductos,
    productos.nombre,
    COUNT(venta.idproductos) AS "total"
FROM
    productos
    INNER JOIN venta ON productos.idproductos = venta.idproductos
GROUP BY
    productos.idproductos
ORDER BY
    total DESC;

SELECT
    CONCAT_WS(
        cajeros.nombre,
        cajeros.apellidoPaterno,
        cajeros.apellidoMaterno
    ) AS nombreCajero,
    productos.nombre AS nombreProducto,
    productos.precio,
    piso
FROM
    venta
    INNER JOIN cajeros ON venta.idcajeros = cajeros.idcajeros
    INNER JOIN productos ON venta.idproductos = productos.idproductos
    INNER JOIN maquinas_registradoras ON venta.idmaquinas_registradoras = maquinas_registradoras.idmaquinas_registradoras
ORDER BY
    piso ASC;

SELECT
    piso,
    COUNT(*) AS ventasTotales
FROM
    venta
    INNER JOIN maquinas_registradoras ON venta.idmaquinas_registradoras = maquinas_registradoras.idmaquinas_registradoras
GROUP BY
    piso;

SELECT
    cajeros.idcajeros,
    CONCAT_WS(
        " ",
        cajeros.nombre,
        cajeros.apellidoPaterno,
        cajeros.apellidoMaterno
    ) AS nombreCajero,
    (
        SELECT
            SUM(precio)
        FROM
            venta
            INNER JOIN productos ON venta.idproductos = productos.idproductos
        WHERE
            venta.idcajeros = cajeros.idcajeros
    ) AS totalVenta
FROM
    cajeros;

SELECT
    cajeros.idcajeros,
    CONCAT_WS(
        ' ',
        cajeros.nombre,
        cajeros.apellidoPaterno,
        cajeros.apellidoMaterno
    ) AS nombreCajero
FROM
    venta
    INNER JOIN cajeros ON venta.idcajeros = cajeros.idcajeros
    INNER JOIN maquinas_registradoras ON venta.idmaquinas_registradoras = maquinas_registradoras.idmaquinas_registradoras
WHERE
    piso IN (
        SELECT
            piso
        FROM
            venta
            INNER JOIN maquinas_registradoras ON venta.idmaquinas_registradoras = maquinas_registradoras.idmaquinas_registradoras
        WHERE
            (
                SELECT
                    precio
                FROM
                    productos
                WHERE
                    productos.idproductos = venta.idproductos
            ) < 5000
        GROUP BY
            piso
    )
GROUP BY
    idcajeros
ORDER BY
    idcajeros;