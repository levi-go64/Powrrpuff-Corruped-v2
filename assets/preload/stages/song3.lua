function onCreate()
    setPropertyFromClass('GameOverSubstate','characterName','blossom phone')
    setPropertyFromClass('GameOverSubstate','deathSoundName','blossom lose')

    makeLuaSprite('mayorside','BG/song3/bonus-song-1-mayor-side',-280,-100)
    scaleObject('mayorside',1.7,1.2)
    makeLuaSprite('blossomside', 'BG/song3/bonus-song-1-blossom-side',580,-100)
    scaleObject('blossomside',1.7,1.2)
    makeLuaSprite('tables', 'BG/song3/bonus-song-1-tables',-300, 700)
    scaleObject('tables',1.7,1.2)
    makeLuaSprite('divider', 'BG/song3/bonus-song-1-dividing-line',530,-200)
    scaleObject('divider', 1.7,1.2)

    addLuaSprite('blossomside')
    addLuaSprite('mayorside')
    addLuaSprite('tables',true)
    addLuaSprite('divider',true)
end

function onCreatePost()
    setProperty('gf.alpha', 0)
end
