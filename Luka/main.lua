local inicial


function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()
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
    background.um = love.graphics.newImage('caminho/para/background.png')
    background.dois = love.graphics.newImage('caminho/para/background.png')
    background.tres = love.graphics.newImage('caminho/para/background.png')
    ]]


    -- como deixar a imagem com qualidade normal -> NomeDaImagem:setFilter("nearest","nearest") <- 
    terFlauta = "true"
end

function love.update(dt)
end

function love.draw()
end

function love.keyboard(k)
    if k== "shift" and k== "1" and terFlauta == "true" then
        nota = "Do"
    end
end

function love.nota(nota)
    if nota == "Do" then
        --tocar nota dó na flauta
    end