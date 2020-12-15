class AvengersHeadQuarters 

    attr_accessor :avengerList

    def initialize() 
        self.avengerList = []
    end

    def put(avenger) 
        self.avengerList.push(avenger)
    end
end


describe AvengersHeadQuarters do 

    it 'deve adicionar um vingador' do

        headquarters = AvengersHeadQuarters.new

        headquarters.put('Spiderman')
        expect(headquarters.avengerList).to eql ['Spiderman']

    end

    it 'deve adicionar uma lista de vingadores' do
        
        headquarters = AvengersHeadQuarters.new
        headquarters.put('Thor')
        headquarters.put('Black Widow')
        headquarters.put('Black Phanter') 
        
        expect(headquarters.avengerList).to include 'Black Widow'
    end

    it 'verifica se é uma lista não vazia' do 

        headquarters = AvengersHeadQuarters.new
        isListaVazia = headquarters.avengerList.size == 0
        expect(isListaVazia).to be false
    end

    it 'Thor deve ser o primeiro da lista' do

        headquarters = AvengersHeadQuarters.new
        headquarters.put('Thor')
        headquarters.put('Black Widow')
        headquarters.put('Black Phanter') 

        expect(headquarters.avengerList).to start_with('Thor')
    end 

    it 'deve conter o sobrenome' do

        avenger = 'Peter Parker'

        expect(avenger).not_to match(/Parker/)
    end
end