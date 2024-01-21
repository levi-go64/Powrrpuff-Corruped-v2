function onCreate()
    setPropertyFromClass('GameOverSubstate','characterName','holycrabtheykilledbuttercup')
    setPropertyFromClass('GameOverSubstate','deathSoundName','buttercup fucking dies')
    addCharacterToList('bubbles flying', 'dad')
    addCharacterToList('buttercup flying', 'bf')

    --Roof shits
    makeLuaSprite('gradient','bg/roof/sky-gradient',-620,0)
    scaleObject('gradient',1.3,1)

    makeAnimatedLuaSprite('buildings','bg/roof/song 2 buildings',-400,-30)
    addAnimationByPrefix('buildings','glitch','buildings')
    playAnim('buildings','glitch')

    makeLuaSprite('rooftop','BG/roof/roof',-620,600)
    scaleObject('rooftop',1.5,1.1)

    makeAnimatedLuaSprite('pibby', 'characters/pibby roof', 1350,550) -- my dumb ass put pibby's roof sprites in the character folder but im too lazy to move em.
    addAnimationByPrefix('pibby','bop','pibby 2 idle')
    playAnim('pibby','bop')


    --Sky shits
    makeLuaSprite('cloudStream','bg/roof/cloud-stream',-620,0)
    setProperty('cloudStream.alpha', 0)
    makeLuaSprite('streamFG','bg/roof/stream-clouds',-620,0)
    setProperty('streamFG.alpha', 0)


    --For that one part
    makeLuaSprite('hudcovertop','bg/roof/hudcovertop',0,-800)
    setObjectCamera('hudcovertop','hud')
    makeLuaSprite('hudcoverbottom','bg/roof/hudcoverbottom',0,1000)
    setObjectCamera('hudcoverbottom','hud')

    --so many fucking CLOUDS man why did i decide to do this you better pay me extra willow
    makeLuaSprite('cloud0','bg/roof/cloud0',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud0',.5,.5)
    doTweenX('0tween','cloud0',1500,getRandomInt(10,30),linear) -- cloud 0
    makeLuaSprite('cloud1','bg/roof/cloud1',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud1',.3,.3)
    doTweenX('1tween','cloud1',1500,getRandomInt(10,30),linear) -- cloud 1
    makeLuaSprite('cloud2','bg/roof/cloud2',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud2',.5,.5)
    doTweenX('2tween','cloud2',1500,getRandomInt(10,30),linear) -- cloud 2
    makeLuaSprite('cloud3','bg/roof/cloud3',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud3',.3,.3)
    doTweenX('3tween','cloud3',1500,getRandomInt(10,30),linear) -- cloud 3
    makeLuaSprite('cloud4','bg/roof/cloud4',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud4',.5,.5)
    doTweenX('4tween','cloud4',1500,getRandomInt(10,30),linear) -- cloud 4
    makeLuaSprite('cloud5','bg/roof/cloud5',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud5',.3,.3)
    doTweenX('5tween','cloud5',1500,getRandomInt(10,30),linear) -- cloud 5
    makeLuaSprite('cloud6','bg/roof/cloud6',getRandomInt(-1300,-1800),getRandomInt(0,300))
    scaleObject('cloud6',.5,.5)
    doTweenX('6tween','cloud6',1500,getRandomInt(10,30),linear) -- cloud 6

    addLuaSprite('gradient')
    addLuaSprite('cloudStream')
    addLuaSprite('streamFG')
    addLuaSprite('cloud1')
    addLuaSprite('cloud3')
    addLuaSprite('cloud5')
    addLuaSprite('buildings')
    addLuaSprite('rooftop')
    addLuaSprite('pibby')
    addLuaSprite('cloud0')
    addLuaSprite('cloud2')
    addLuaSprite('cloud4')
    addLuaSprite('cloud6')
end

function onCreatePost()
    setProperty('gf.alpha', 0)
    addLuaSprite('hudcovertop',true)
    addLuaSprite('hudcoverbottom',true)
end

function onTweenCompleted(tag)
    if tag == "0tween" then
        setProperty('cloud0.x',getRandomInt(-1300,-1800))
        doTweenX('0tween','cloud0',1500,getRandomInt(10,30),linear)
    elseif tag == "1tween" then
        setProperty('cloud1.x',getRandomInt(-1300,-1800))
        doTweenX('1tween','cloud1',1500,getRandomInt(10,30),linear)
    elseif tag == "2tween" then
        setProperty('cloud2.x',getRandomInt(-1300,-1800))
        doTweenX('2tween','cloud2',1500,getRandomInt(10,30),linear)
    elseif tag == "3tween" then
        setProperty('cloud3.x',getRandomInt(-1300,-1800))
        doTweenX('3tween','cloud3',1500,getRandomInt(10,30),linear)
    elseif tag == "4tween" then
        setProperty('cloud4.x',getRandomInt(-1300,-1800))
        doTweenX('4tween','cloud4',1500,getRandomInt(10,30),linear)
    elseif tag == "5tween" then
        setProperty('cloud5.x',getRandomInt(-1300,-1800))
        doTweenX('5tween','cloud5',1500,getRandomInt(10,30),linear)
    elseif tag == "6tween" then
        setProperty('cloud6.x',getRandomInt(-1300,-1800))
        doTweenX('6tween','cloud6',1500,getRandomInt(10,30),linear)
    end
end

function onBeatHit()
    if curBeat == 279 then
        playAnim('dad','fly', true)
        playAnim('boyfriend','fly', true)
        playSound('ppg flying noise')
    end
    if curBeat == 280 then
        cameraFlash('game','FFFFFF',2)
        removeLuaSprite('buildings')
        removeLuaSprite('rooftop')
        removeLuaSprite('pibby')
        triggerEvent('Change Character', 'Dad', 'bubbles flying')
        triggerEvent('Change Character', 'Boyfriend', 'buttercup flying')
        setProperty('cloudStream.alpha', 1)
        setProperty('streamFG.alpha', 1)
    elseif curBeat == 407 then
        doTweenY('toptween', 'hudcovertop',-250,0.7,bounceIn)
        doTweenY('bottween', 'hudcoverbottom',450,0.7,bounceIn)
    elseif curBeat == 567 then
        doTweenY('toptween', 'hudcovertop',-800,1,bounceOut)
        doTweenY('bottween', 'hudcoverbottom',800,1,bounceOut)
    elseif curBeat == 640 then
        endSong()
    end
end