require 'buscamina'
RSpec.describe Buscamina do 
    it 'debería mostrar nombre' do
        @juego = Buscamina.new
        @juego.setNombre('elpepe')
        expect(@juego.getNombre()).to eq('elpepe')
     end
end