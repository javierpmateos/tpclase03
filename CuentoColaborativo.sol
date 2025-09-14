// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4; //custom errors requier 0.8.4 o más

contract CuentoRealmenteColaborativo {
    string public cuento; //ESTADO
    address public ultimaAddress; //ESTADO

    error MismaAddress(address escritor); //CUSTOM ERROR

    function agregarTexto(string calldata nuevoTexto) external  {
        if (msg.sender == ultimaAddress) { //chequear que el ultimo autor no se repita
            revert MismaAddress(msg.sender); //aplicar CUSTOM ERROR
        }

    cuento = string(abi.encodePacked(cuento, nuevoTexto)); //agregar texto al cuento

    ultimaAddress = msg.sender; //actualizo la vble de estado del ultimo escritor

    }
}
