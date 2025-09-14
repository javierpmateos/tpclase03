# Cuento Colaborativo (tp clase 3) en Solidity

## Descripción del proyecto

Este proyecto consiste en un **contrato inteligente en Solidity** que permite a múltiples direcciones escribir de manera colaborativa un cuento en la blockchain. Cada usuario puede agregar texto, pero **no puede escribir dos veces seguidas**.  

Se implementa un **Custom Error** para optimizar el consumo de gas al validar esta regla.  

### Componentes principales

- **Variables de estado:**  
  - `cuento` → almacena todo el texto agregado.  
  - `ultimaDireccion` → registra la última dirección que escribió.  

- **Función principal:**  
  - `agregarTexto(string calldata nuevoTexto)` → agrega texto al cuento de forma secuencial, respetando la regla de no escribir dos veces seguidas.  

- **Custom Error:**  
  - `MismoAutor(address autor)` → dispara un error eficiente si la misma dirección intenta escribir dos veces consecutivas.  

---

## Despliegue en Sepolia

Para quienes quieran probar el contrato ya compilado y publicado en la Red Sepolia

Link: https://sepolia.etherscan.io/address/0xB93A0D21728E8ac6Eec9fc5195293c81b27DdCD6

