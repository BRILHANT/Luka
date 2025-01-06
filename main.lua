function love.load()
    love.graphics.setDefaultFilter("nearest","nearest")
    camera = require 'biblioteca/camera'
    cam = camera()
    width = love.graphics.getWidth()    -- x
    height = love.graphics.getHeight()  -- y

    phellipe = {}
    phellipe.x = width/2
    phellipe.y = height/2
    phellipe.speed = 5
    phellipe.sprite = love.graphics.newImage("imagens/Lyan/Lyan.png")

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
    -- andar
    if love.keyboard.isDown("d") then
        phellipe.x = phellipe.x + phellipe.speed
    elseif love.keyboard.isDown("a") then
        phellipe.x = phellipe.x - phellipe.speed
    elseif love.keyboard.isDown("w") then
        phellipe.y = phellipe.y - phellipe.speed
    elseif love.keyboard.isDown("s") then
        phellipe.y = phellipe.y + phellipe.speed
    end


end

function love.draw()
    love.graphics.draw(phellipe.sprite, phellipe.x, phellipe.y, 0, 5, 5)
end

function love.keypressed(key)

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