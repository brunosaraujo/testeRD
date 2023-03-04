Dado('que eu possua o cep {string}') do |cep|
    @cep = cep
end
  
Quando('faço uma requisição GET para a API dos correios') do
    @request_cep = cep.get_cep(@cep)
end

Então('recebo o codigo {string}') do |status_code|
    expect(@request_cep.response.code).to eq status_code
end

Então('eu recebo o endereço {string}, {string}') do |endereco, validade|
    case validade
    when "ok"
        expect(@request_cep.parsed_response["logradouro"]).to eq endereco
    when "nok"
        expect(@request_cep.response.code).to eq status_code
    end
end