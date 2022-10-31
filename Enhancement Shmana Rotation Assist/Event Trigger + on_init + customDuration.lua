-- on init --

aura_env.spelltrigger = {
    
    -- Stormstrike
    [17364] = true,
    
    -- Flame Shock
    [49233] = true,
    [49232] = true,
    [25457] = true,
    [29228] = true,
    
    -- Earth Shock
    [49231] = true,
    [49230] = true,
    [25454] = true,
    [10414] = true,
    
    -- Fire Nova
    [61657] = true,
    [61649] = true,
    [25547] = true,
    [25546] = true,
    
    -- Lightning Bolt
    [49238] = true,
    [49237] = true,
    [25449] = true,
    [25448] = true,
    
    -- Chain Lightning
    [49271] = true,
    [49270] = true,
    [25442] = true,
    [25439] = true,
    
    -- Lava Lash
    [60103] = true,
    
    -- Magma Totem
    [58734] = true,
    [58731] = true,
    
    -- Totem Presets
    [66842] = true,
    [66843] = true,
    [66844] = true,
    [36936] = true,
    
    -- Lightning Shield
    [49281] = true,
    [49280] = true,
    [25472] = true,
    [25469] = true,
    
    -- Water Shield
    [47960] = true,
    [33736] = true,
    [24398] = true,
    
    -- Doggos
    [51533] = true,
    
    -- Shamanistic Rage
    [30823] = true,
    
}

aura_env.shocks = {
    
    ["Frost Shock"] = true,
    ["Flame Shock"] = true,
    ["Earth Shock"] = true,
    
}

aura_env.maelstromspenders = {
    
    ["Chain Lightning"] = true,
    ["Lightning Bolt"] = true,
    
}


-- Leftover from shadow priest version of it aura_env.ifknown = IsSpellKnown(14751)





-- Events under trigger

UNIT_SPELLCAST_CHANNEL_START,UNIT_SPELLCAST_START,UNIT_SPELLCAST_SENT,UNIT_SPELLCAST_SUCCEEDED,CLEU:SPELL_DAMAGE,UNIT_AURA

-- Events under trigger after some fixing up
UNIT_SPELLCAST_SUCCEEDED,UNIT_AURA


-- Timed dynamic duration code
function()
    local timestamp = GetTime()
    local gcd = (select(4, GetSpellInfo(34914))) / 1000
    if aura_env.spell == "" then
        return 1,timestamp+1
    else
        return gcd,timestamp+gcd
    end
    
end




-- Current Import String

!WA:2!fVttVXXXvAAzdBmjyHnJTWUokoLNelXXAefNp4xgH7goKdTyefj9mdJKdHazpDxZ0TzpD1B31WpuGdqiYbdSl2d8qaYv(tGhZPaDBroSZsSN3d6NG(fK3R6V7U6rKqXouFWEQ(vV3REFxv9MjwBYbtQnP23(WZnuzwTzdDuP3W54T61ZLY)pVP9prZW12u5Ko0J571J5mqHVx9PT9FSf3yavZ5epWFWVS3)7fVb8ZfkwQ6mNTzgw8UR0CZonBztKGi79W57)PjQo0X0(w6CUT7NF)7FKsF20gS7V6GN09HhA7(BUF1fAG84(V8ak1EzxBQkVLc3GPF6rmhTh7OyF6J9F4CnQRcFOJcNQ3OhZIB)ER5y8mYxourdguH0PtdtMI2F8SHU09SOhsD07YvmPw8B2AWqtUrHgibU5OpSWlrqOwQSHwCQJHMUyoQMkUU7)c8raqtZdSyhzTFlXW3URRHvFtA32py5hT8MaoopcM39)(rnCnEgfr9LU6kASJEIN47TTlkrgvB6KsPZDO9nywDoXMo6hy)bQmMjGclCkRA4Q01KQPFoNPcljxaU39W)slftBDLB0fKD9m6xW(hlHkR4)qdlMf9cFawhMX)8B(b)eh2qUPHf1zRD6SX6B2SlQBwF1ZcvnTuzMmNF1nGFoxDOlNnaXT9FQ3qlvqbznvjcHua(hXOhrbulG88WPDh2Vp1fFpzPLifls46ulbu4pouq)z5nlQPln9lKGMYHJXnubHD4u8qILM43fGh8f8FLNG)wVXLbIX2hzyt33(9Iwf7yRbwrTatel(ZdaRPwFQ(PChdG0oU)x32X)XV9wpxyCO4YrfKUJqVVU27QE3t1qZrGlBmZ0Zp7L9PG80qTTo7OTSEHR4xR4J9trCm0YGV)lCh2vq5TDO9moUv7TBUXgGXD3H96HeW5bn3y712zdFPoQWSFuKupJih9FKkMtarO4c(3zIvWMkdON9idlnYAGDXfEuBpoAdw7shQIz7aOg1m4T6gA0rVvxVpD8NumGTitjwrLj4kSmjyfcpH4WqZJRnzQkMe0WNSe5lO8oWttf)v9v1G3mLl1eIdmv9YiqcUyDRESPQvFXk1lvQe5(KkZmZmjN3)(q6qeT)2Vj24UuyLRL3Bdu8C0bZr5OO3hdOWviytfzvQyPHc1PelV9SazuPqPVuFbseKHaog)M1COuYxSYQKn2AJu(qjiHq3VePsT5QwTsiijCTKbVVaUwkbSeUPu06kWxl0Nd)V7DpslpRn6X2gEodYKE9P8iaMk6XsXLgrdJcbldtcZj1GZKvyehaYmjELJuwtQikbwI9H7jSxVQynhreiLjpsbOj3HnG0MROEGlmEGRm60iu7yaAQtrcyEreoqIr3zZ17S3Y70A5uwcHpau4bSJidgQQhJmhrj9z8)TqOYQrgeaRRGJMQuILjK8GyGgxLj1NHOXs8YieIM0Lj7vMisMcWVdSAAaXYMky5uMyuMuC7nw(RA2QyPmObeaioel1iU)XufBMLeB)uAbbvZaqGcq2NJ)CCr4kkMQdnH8ceWVZa8hiSEKv0vmSiBy0xNBb5)tjmvX3QQv27bqk6W9FoiXq4eYfcVqHcNWGCftvmfzlMWnzQuZFjYCLYkN85na9rKMC3C4o0Dir4iKDeAK0CY4iKiY(DjZLVxwomfeHE8QhG3KzVIC4Sz5ipOJfVXNSLi)ILe5yKAufKMy3kpLizHNbEPjeIHKSw6(MSCNHPI9KwmjHDczesdMj)7uUrIVsIaAbr12KzDVqvczdwFd1RzqnrPpRSCB4PDwzLMnxT5QEWL0q0VqSD9lM4Pj1FYkAmtgVIquOIfLmhpd9K5btu0sA7qj(iT5qD2GuW4aArmLLeq2q5qfYgkU6sCG8Q6PY0ZEfChFKs)bWoDyC6G8ifehZedDb0H00KoaK4Uxfyx2sfKEmNReWTbFlJ8XRGbbZHwuimPz(R5X71Ni6Sov9au(dfRcrzGASXp6saTlu19GtYlnNkopngh3UYRv6TW)gfxbRFn(78t(TQOu(Pkcb3GWqxN0FXwBV6mFzCC)7AIpbt4MsQ6IdI57ep4Nnt8CMmk5cH08DXx4jZ1LAUYZ15ZxyLTHKfsRiNZqNRKoYI5SBsZ4Nkx(hrPmj7YnsEoCx8KEVEQQOWpP1x4Be6lpq80g4Zz1x5bHu9v8iEP0xjN7sKfKPV84luIeswuFjLZYpyyI4UJHi(QQfYVUKCyOxzDjjujyWjdhQx0547HactzsDDbwub2vEcS6hTcMghNLGfWDgJFadVSbThFQkLU6gdcoyt2HkPiHfmeAjG)2xnJpMrANZ7L71gqRu2ajN4sKAsmb84haTHeeK3s5O81)r0Fm43x5xlFLVuw56P6JPacZ0NsbycdHka83(cy8Xml3CEVufquvfjvajNO8yME8dG2qccRAPCu(kGXvvti(F17kqkR8kvaX1eRcL77mWWIkkoPfDau7owRCGOcvmy1lomUyTb6dLUgMgCdQ0CCcNx8aJsUpc)i5LKfMnVP4fzPuEE8HtBCE9rUW5qfpt4ssm5YzcEI8sY2pBoZiypusL)BZS9Ce6GNLgkTxoq8cQYqTGtGIjCUIZEBAyNGuh(uPpqUYKFRbAwKO8ay7ZHPs9y1VP01eDXZBeGUiv41gDXRj3hDPuVxBugfzZhHr6(RnUICs9XvKzX1gxP3uSpgJz38nVcdebkffFhzHamOHPy8Jm46gItZMa4JJhbAHefSxMCiePLyRy44MHnlLUmEiQfSdqTS1wJ7X8WPbEFChiawzoJhFhe5wsEcPxWUUlliE2k(LwK4yWsXMqer9mvhFvk5pTqirftxjHWvELnoYMyxRF)r2y1h89hrJLt87oIMxfjxF3m8sgwETonB99Ot3)QqAejDi46M8zsRt81Xrm51)865oMgxFN7uEDfsxZv(13D9FGmKmh5)bYoYCX)EKDYD7iIJiRIWLwrNQabCyexQyJPgCYrSHMAKUucDGn)KY4ONarf0yIQvevyK482JD(Z)ULYCzP7w)PO4axWHqw7Pb3BhoCYfL4yS9EPSZRpd6R90iPAEbfKXtVIOTzpzD5lSx)dwl52t6rDI2ziY7XC6XZhqLna3VcRxpsSOVPudljHBNvOgUsI0QbshzibEZDjZmDTRYDJidZgx)dZADVJswDOJdERa4EODjUSbuD2rbgPCCRMiudbhLXixKAxL6kusCP6JN7U63MISdJnEVw0q0qfRFrytfTUMEyhG0EyVEghFXEExbsNLB15fETwXQ(7b3()pvJFe1cfW(Khy)3T(Oq((7L3(ovkhs)7wj3E5b4HyWfSB(4nStHcfAHh9TBHr1oFf2GUkC8wKSFFuwLOxA2)0GUVXb2QHLf18Yq5j2Gk77joDTZ9ALkhEj6(TvdoT38LANamGHAG4E)t9vrUfeneg3rr9G9BGxLvxVRX6SHw(3g1nhT(BInv1xluqhc6y7j97WipaexiM99dvG(ZZtpfA24DZwvEQVaPG97RiqNpsEetJEdPD3vq76n6TEPb2eBwkM)AV2d7GZuSmgiwqZ1sCCkRn6HJUZZPkU02CWxRpx)DUm4yEeD8JJxWA3tryeTH2DAGBvxmXr6VZiJrF9OdgDNU9GTV7QNE4lIXFf)uv7BjHFvRgWW35c8SYC84WcD1P42j)YxOmeKDWyQp2qJR3yz4J2FAoDQOO55SDOQg4cwUasnKEsB4XAthjbph8cPAc6(h(HDDfnmzxJb2mhEJNXydM4uSFdBB8mAjP9ZhADgRF(akwCCmUFx)jD1vl7QR1riJ9L2tcMKbhLcyx0cQZFFh)wcCrPiRAwKDjiM1zoBzJcF3coFnyYA07KgB0CTo23n)(503tzpUUd1vhyItKRLRekdCue29UZnQFHgGzd)2Jw)43(pdb(XJehVD47DVcfKEtVyNyL4QMtFfh7wz(AZvhJQJbElNa2y75Wd26lwTwTKWkgRAQXQoB9zNp9ylwT6cYPtSnaeHZksOZmsOtkEF3kZuVsERNeNO)UZvzUmCjmw9fZqLzRpVKXMtovs2Fbrm)cswqzrBDjKVE9CeCY6PgeVZlr4nVeHxDjkUAlMZYkXPXV7CZuzMAYHm2ME8GD2fMVwA1eowf5ZVnvXbfFjXWm5Ou9UJOTbFjOsdFEBUfYSYWXQjzS08vT5wS2RuX2w3GAQfkAxqI4EbjI75LiUNlhX9JHysoji0SZV4CPrATAZNMB3TkOcZXEzvw)(mFH0SvMTwokW26kdGeFq4mvslL((bkQnZcvtpHVjEyhXvYMmGZUqPImxU)M7tXOjotJ0Vl(HcmgIg1it2qAFicEA6N(CwttNuDduwsva180ECgKFG0d7phVUJMy7yaLKr8tBGNupeioQBz6j6NDaDR7kky8H4hNQs95NTsPZ0y75vHZ(JgCZr)h62)S8Zxel589gxAUS5vodkBTN3xZGgB1PZwpskcQNpc66shaRVUvMg(ZINdfB3s0E9UF(nh9WlHp2fQQRVdBOL23(tTNKJynrt7pXzIXW)7SpvTcis)u1Q2)4Wbdt2nDu2oBsMx7ZGdyA7HFPf23(9IrQveDx)etmbKrw8fRiG2VWdOazqJL3PZw2)iXGjRqAK7l9OwyTl)E7FEEmHjTVI6j71ZKXC0T)xYUucxipxmSFzbJENZfxzgff9n2CRnBkzUr1r5Vu8Bb)jS)OS0jsIn6HoGUaFPVoiHC4dpxmw0xcHZ8rJf)fB3H0wXYLSPIJd7OldFHOW1plb2ghRevqQhkc(gNm6FYtgCiy)cBWnqVf77)YfBTtNMT2R16FXd6KWakKCFCEkc)A)IyAVQklLh8sQ76tYd2iFUEx2fwmuN9yE8Zf(Fe)sQCJN7)b1qtWx4psWkoaCQgumwfY2GfM5OhEg66iErrdn7pEtLJp2yWDCjnTG9KPkA0mYYUUqeyflU0kGRMQc4l65aXsH9KOWvUXl9eWRHdHAYUTxPvZMBk17VA(E)sl2VASI9HS0y0pQ(fP9eph3dKHOO1p62Teh38CJMR8BC6HqQD8SoQU8MR2vmU7NbV5wVXO)6PgwQITU26qfZH0jU9O)Njg9xBGF5pe7vTp19JU5P2omytw8tg9Zpn4Wt0Ro0q7IFtPn6p7Xl)KwhOoPBR6qeR6tE4)3t(Bp
