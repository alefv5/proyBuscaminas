class Buscamina
    
    @@filas=8
    @@columnas=8
    @@tablero=Array.new @@filas*@@columnas, "_"
    @@casillasDesbloqueadas="0"
    def getNombre()
        return @nombre
    end
    #def crear_tablero()
    #    @@tablero = Array.new(8) { Array.new(8) { 0 } }
        #puts tablero
    #end
    def setNombre(nombre)
        @nombre = nombre
    end
    def verificarCasilla(x,y)
        posicion=coordenadaAposicion(x,y)
        @@tablero[posicion - 1]="0"
        @@casillasDesbloqueadas += ".c" + posicion.to_s
    end 
    def coordenadaAposicion(x,y)
        x=x-1
        posicion=(x*@@filas+y)
        return posicion
    end
    def getCasillaDeTablero(x,y)
        return @@tablero[coordenadaAposicion(x,y)-1]
    end
    def getCasillasDesbloqueadas
        return @casillaDesbloqueada
    end
    def getTablero
        return @@tablero
    end
end