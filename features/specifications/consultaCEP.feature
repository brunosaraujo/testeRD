#language: pt

@consultaCEP
Funcionalidade: Consulta CEP
    Validar consulta realizada na API dos correios (Via CEP)

    @get_cep
    Cenário: Validar GET API ViaCEP
        Dado que eu possua o cep "<CEP>"
        Quando faço uma requisição GET para a API dos correios
        Então recebo o codigo "<status_code>"
        E eu recebo o endereço "<endereco>", "<validade>"

        Exemplos:
            | CEP           | status_code   | endereco                              |validada   |
            | 05339000      |  200          | Avenida Corifeu de Azevedo Marques    |ok         |
            |2889603        |400            |nil                                    |nok        |
            |nil            |400            |nil                                    |nok        |

 