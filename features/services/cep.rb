module Rest
    class CEP
        include HTTParty

        base_uri CONFIG['base_uri'] 

        def get_cep(cep)
            self.class.get(
               "/" + cep + "/json/",
               headers: { "content-type": "application/json" }
            )
        end 
    end
end