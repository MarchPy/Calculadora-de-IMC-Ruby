class CalculadoraImc
    def initialize(peso, altura)
        @resultado = peso.to_f / (altura.to_f * altura.to_f)
    end

    def classificar
       if @resultado < 18.5
        return "Abaixo do peso"
        
       elsif @resultado >= 18.5 and @resultado <= 24.9
        return "Peso normal"
        
       elsif @resultado >= 25.0 and @resultado <= 29.9
        return "Acima do peso"
       
       elsif @resultado >= 30.0 and @resultado <= 34.9
        return "Obesidade nivel I"

       elsif @resultado >= 35.0 and @resultado <= 39.9
        return "Obesidade nivel II"

       elsif @resultado > 40.0
        return "Obesidade nivel III"

       end
    end
end

def main
    printf "\nDigite o seu Peso: "
    peso = gets.chomp
    printf "Digite a sua altura: "
    altura = gets.chomp

    calculadora = CalculadoraImc.new(peso, altura)
    print "\nO seu resultado é: " + calculadora.classificar + "\n"
end

main
