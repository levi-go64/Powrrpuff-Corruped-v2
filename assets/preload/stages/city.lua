function onCreate()
    setPropertyFromClass('GameOverSubstate','characterName','pibby')
    setPropertyFromClass('GameOverSubstate','deathSoundName','pibby_fucking_dies')

    makeLuaSprite('city','BG/city/city',-400,-200)
    makeAnimatedLuaSprite('pibbyglitch!!', 'BG/city/song 1 glitch',-335,-150)
    addAnimationByPrefix('pibbyglitch!!','glitch','song 1 glitch',24,true)
    
    addLuaSprite('city')
    addLuaSprite('pibbyglitch!!')
    playAnim('pibbyglitch!!','glitch')
end

function onCreatePost()
    setProperty('gf.alpha', 0)
end