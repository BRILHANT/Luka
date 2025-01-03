function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    soundsBackground = {}
    --
    soundsNotes = {}
    soundsNotes.C = love.audio.newSource("sons/notas/C.mp3", "static")    -- Dó
    soundsNotes.D = love.audio.newSource("sons/notas/D.mp3", "static")    -- Ré
    soundsNotes.E = love.audio.newSource("sons/notas/E.mp3", "static")    -- Mi
    soundsNotes.F = love.audio.newSource("sons/notas/F.mp3", "static")    -- Fá
    soundsNotes.G = love.audio.newSource("sons/notas/G.mp3", "static")    -- Sol
    soundsNotes.A = love.audio.newSource("sons/notas/A.mp3", "static")    -- Lá
    soundsNotes.B = love.audio.newSource("sons/notas/B.mp3", "static")    -- Si
    soundsNotes.C6 = love.audio.newSource("sons/notas/C-.mp3", "static")   -- Dó uma oitava acima
    soundsNotes.D6 = love.audio.newSource("sons/notas/D-.mp3", "static")   -- Ré uma oitava acima

    --[[
    ** informacoes do Phellipe **
    Phellipe = {}
    Phellipe.speed = 5
    Phellipe.sprite = love.graphics.newImage('caminho/para/imagem/do/personagem.png') -- COLCAR A IMAGEM DELE QUANDO ESTIVER PRONTA
    Phellipe.x = width/2
    Phellipe.y = height/2
    ]]

    --[[ 
    background = {}
    background.um = love.graphics.newImage('caminho.png')
    background.dois = love.graphics.newImage('caminho.png')
    background.tres = love.graphics.newImage('caminho.png')
    ]]


    -- como deixar a imagem com qualidade normal -> NomeDaImagem:setFilter("nearest","nearest") <- 
    terFlauta = true
    segurarFlauta = false
end

function love.update(dt)
end

function love.draw()
end

function love.keyboardpressed(key)
    if key == "shift" then
        segurarFlauta = not segurarFlauta
    end

    if terFlauta and segurarFlauta then
        if key== "1" then
            soundsNotes.C:play()
        elseif key== "2" then
            soundsNotes.D:play()
        elseif key=="3" then
            soundsNotes.E:play()
        elseif key=="4" then
            soundsNotes.F:play()
        elseif key=="5" then
            soundsNotes.G:play()
        elseif key=="6" then
            soundsNotes.A:play()
        elseif key=="7" then
            soundsNotes.B:play()
        elseif key=="8" then
            soundsNotes.C6:play()
        elseif key=="9" then
            soundsNotes.D6:play()
        end
    end
end