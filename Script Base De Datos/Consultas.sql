/*DEPOSITOS*/
/*INDICADOR UNO*/
SELECT *
FROM transacciones
WHERE codigo_transaccion = 7705
  AND monto_transaccion > 20000
  AND comentarios_transaccion = "Hecho";

/*INDICADOR DOS - CORREGIR*/
SELECT COUNT(transacciones.id) Cantidad
FROM transacciones, cuentas_bancarias
WHERE transacciones.numero_cuenta = cuentas_bancarias.numero_cuenta
  AND tipo_cuenta = "A01"
  AND codigo_transaccion = 7705
  AND monto_transaccion > 20000;

/*INDICADOR TRES*/
SELECT sucursal_transaccion Agencia, COUNT(sucursal_transaccion) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7705
GROUP BY sucursal_transaccion
ORDER BY Cantidad DESC
LIMIT 0, 5;

/*INDICADOR CUATRO*/
SELECT colaborador_transaccion Operarios, count(colaborador_transaccion) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7705
GROUP BY colaborador_transaccion
ORDER BY Cantidad DESC
LIMIT 0, 5;

/*INDICADOR CINCO*/
SELECT count(transacciones.id) Cantidad
FROM transacciones, cuentas_bancarias
WHERE transacciones.numero_cuenta = cuentas_bancarias.numero_cuenta
  AND tipo_cuenta = "C01"
  AND codigo_transaccion = 7705
  AND monto_transaccion > 15000;

/*CHEQUES*/
/*INDICADOR UNO*/
SELECT count(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = "7005"
  AND fecha_transaccion > "2013-01-01"
  AND comentarios_transaccion ="Hecho";

/*INDICADOR DOS - CORREGIR*/




/*RETIROS*/
/*INDICADOR UNO*/
SELECT count(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7505
  AND comentarios_transaccion = "Hecho";

/*INDICADOR DOS*/
SELECT *
FROM transacciones, cuentas_bancarias
WHERE transacciones.numero_cuenta = cuentas_bancarias.numero_cuenta
  AND tipo_cuenta = "A01"
  AND codigo_transaccion = 7505
  AND monto_transaccion > 55000;

/*INDICADORES TRES*/
SELECT sucursal_transaccion, COUNT(sucursal_transaccion) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7505
GROUP BY sucursal_transaccion;

/*INDICADOR CUATRO*/
SELECT colaborador_transaccion, count(colaborador_transaccion) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7505
GROUP BY colaborador_transaccion;

/*REMESAS*/
/*INDICADOR UNO*/
SELECT COUNT(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7005
  AND monto_transaccion > 2000
  AND comentarios_transaccion = "Hecho";

/*INDICADOR DOS - CORREGIR*/
SELECT COUNT(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7005
  AND monto_transaccion > 3500;

/*INDICADOR TRES*/
SELECT sucursal_transaccion, COUNT(sucursal_transaccion) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7005
GROUP BY sucursal_transaccion;

/*INDICADOR CUATRO*/
SELECT numero_cuenta, count(numero_cuenta) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7005
  AND fecha_transaccion > "2013-01-01"
GROUP BY numero_cuenta;

/*TRANSFERENCIAS*/
/*INDICADOR UNO - CORREGIR*/
SELECT COUNT(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7107
  AND monto_transaccion > 50000;

/*INDICADOR DOS*/
SELECT count(id) Cantidad
FROM transacciones
WHERE fecha_transaccion > "2013-01-01";

/*INDICADOR TRES*/
SELECT COUNT(id) Cantidad
FROM transacciones
WHERE codigo_transaccion = 7107;

/*INDICADOR CUATRO*/
SELECT numero_cuenta, count(numero_cuenta) Cantidad
FROM transacciones
WHERE fecha_transaccion > "2013-01-01";

/*PAGO SERVICIOS*/
/*INDICADOR UNO*/
SELECT count(id) Cantidad
FROM pago_servicios
WHERE monto_total > 7500;

/*INDICADOR DOS*/
SELECT  *
FROM pago_servicios
WHERE Fecha_pago > "2013-01-01";