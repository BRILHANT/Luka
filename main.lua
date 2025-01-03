function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()

    soundsBackground = {}
        --
    soundsNotes = {}
    soundsNotes.C = love.audio.newSource("caminho.mp3", "static")    -- Dó
    soundsNotes.D = love.audio.newSource("caminho.mp3", "static")    -- Ré
    soundsNotes.E = love.audio.newSource("caminho.mp3", "static")    -- Mi
    soundsNotes.F = love.audio.newSource("caminho.mp3", "static")    -- Fá
    soundsNotes.G = love.audio.newSource("caminho.mp3", "static")    -- Sol
    soundsNotes.A = love.audio.newSource("caminho.mp3", "static")    -- Lá
    soundsNotes.B = love.audio.newSource("caminho.mp3", "static")    -- Si

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
    terFlauta = "true"
end

function love.update(dt)
end

function love.draw()
end

function love.keyboard(key)





    
    if terFlauta=="true" then
        if key=="sift" then
            if key=="1" then
                soundsNotes.C:play()
            if key=="2" then
                soundsNotes.C:play()
            if key=="3" then
                soundsNotes.C:play()
            if key=="4" then
                soundsNotes.C:play()
            if key=="5" then
                soundsNotes.C:play()
            if key=="6" then
                soundsNotes.C:play()
            if key=="7" then
                soundsNotes.C:play()
            end
        end
    end
end