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

!WA:2!fVZsVXXXzkAcNymicWHXriXr2P2jXA5ynIIZd(YimjZqo0Is8LNz4kztiq2t31mDB1txDQUg(qb6WsSh8Hf7bEyb2CK)e4PGCkq3cqo0HypNd6uoRFb5RQ(D3vZhWYkYwIDx9x999vFVRQ(4yRmXWj0Mq7BE0PgQeRoKruv84NRmIPtOBAZmiwofotZWX2u5OU4dzf)ev6rB2VVdM9GFB))2z3a(ZzkwQa4BrmSy9wQ1gDB12gfBo72NqhQW21ExMXqS)BJvDe10(26mMTZND)7FGYaYugK7V8WN07r7B78v3V68n5S0EV(zySDdhBSkRTcWq623wcUvR4)utlIf(unSJcBevHH1B2NyXSF)vOgph9fJu0GbvqD720KOO9)EYih8Uw49Xu9EmftSf7wThoYKzuOjNI3Y9dk8AoiylvYilgMAOPlMJQPIJZEVI)iaOP5ZSihyTxBXW3PNJH1atCVopOX6n2aWXPrW8E)L1B6y8Cmh1N7OROro4jEYZ31UOKfwTPsk2oLIhaALUhzJDly)bQeIjGcl(uw2WrPNjwt)ugrfwsoaCV3()52kM26kJ3deM9nguW(NjHkl5)G7ndu2RcG)tENp4JOKrmtdlmDZT7U2QB0QhxtT6YNeQOARsmj0hoo8Ntvh5Wid5i2()R)ilvU9ZKLqiub4ViJ(ifqNacZ9NYz0Gbyh(3rlUiQyrethBjGI)hkguEwEZcB6Gt)bjOPC4ymdvqshofpKyPj(zb4bFP(x6j1V9nopqg25adB8E2VF0QyBBnWeQnyFyXEzayT0gG1pMrnastD(FUd1)XV52VuyzO4W4AhDQqPVQ27PE3J142Iax2C6PMBMZhGb5PHAhDYbBA9khXpwYh7hZXXild2En5)BpUUatpZJN2v3qd3MBoO5lR5Qj71JK1ze0CFiPc3eqekKG)cop9g1VpFnqFqR12ALTxRNqc4yxC7nwT7UD2Q1ARTuJoWtBV0sTATCRLll(qJTB348qxInugI37KWhpzDdln0kWY5yFbJtHMmGi98wj(lioOVtWYL)z3khhisPQ6kwwyt7FiNijKI75w50Lid7PWqRrg02cWItHx5HML9f(2)9uYjtIQIjIloDykdTrlI(CmRl8AIVpqvd(YKoytie0K1lZbQJyfy1NmzT6luPEPsLq3hvz6PNoRHohYlWgVs5q6F3k5AWd8qm4G3YyvxOqHZcf9RQP7(Odr)JG1lAsHcSmIBsvg5mQN)7cOn0sloEJjjcN3VBeEehT)(xeBChmy6PL3xd83y8GAuLdI(EmGcxHGRCuWaflnUv9KIL3UCJHsHsuPHGqrqgc4feUAfkgJ(8LwgT2MRLsTMGecNVfrvQnB1QvcbjHcwg8(c4APeWs4MsrRRaJHqJc()CV7HA7zbHp02WZnqM0BaMfbWKrpwkU0iAyUqWYWerOPgC6ScJ4aGMoXNOsznPIOeyj2l3tyVEvXAoIiqkJwxbOjJsgI6WuuFMdmEGVm3PrO29IfxebMxiHdKy0WqFPSecFaOWdihGgosvpgzoaJgqy)MqOYQrggaRJGJMSuILjKWgzWnUkJQpnsJK4JriKBsxgTBzKOaga(THvtti((KblNYiJYOIBTwJVSv7ILYGgqaWXHyPgX9pgRytSKy7NsliOAgacuaYEp(ZXfHlPyQoYeshJa)odWFar6JwsxXWcTMXaDMfuZvkHPk)RqKtVhaPiL5)Cq(4WjKleEHcfoHbPONSykYwmHBYKPM)IOzlLvo5ZBa6Jin6U5WDC3b5jvsZjxeHer2VlA289YYHPcY3KR6b4nz2RCoCMSCKh0XI34t2sOF1IICmsnQcstStLNIKSWZaV0ecXqswlDFtwgDuQypPftsyNqgb1KyY(oLBK4RKiGwquTniw3luLWRkYq9AgutsHEEWL0q0V(3D8lM4Pj1FYQvptgVIquOIfLmhpd9K5btu0sA7qj(iDyWEBaPGXZWf5PSKaYAk7RGwtXrxIdKxvpvMAMRG746kdgc7UKWWdZJuqCmtEOlGoOwM4H8cRVkW2WsfKEe6vc4oGVLr(4vWGG5qBmeM0m)18f71Ni6Sow9zC5puGpeLbkkN)Qdc0Uqz6dpkV0CQ85Pry8Dj(Tk9w4)hfxHx)A8V5N8BzX2BMSieCdcdDDs)fBTD5z(Y44(gnXNGjCsjvD4dYZ3jEWpBM45mzuYfcP57IVWtMRl1CLNRZNV4v2gswiTICoJ7CL0rwmNDsAg)u5Y)ikLjzxUrYZH7IN07BNQkk8tA9f)lc9LhiEAd(Zz1x5bHu9v8iEP0xjN7IO5LPV84lUejKSC9Luol)GHjI7EbeXxvnF(1LKddDP1LKqLWdozqXErNJVhcimLj2XbyrflKscS6hTcMgJplblW3zm)fE4L1W9ztwP0v3yqWbBq2xjfjSGH4wc8F6RM5pMrANZ3L71gqRu2ajN4IOAsmb84haTHeeK3s5O81)r0)cWVVYVw(kFPSY1t1htbeMPpLcWegIRa4)0xaZFmZYnNVlvbevvrsfqYjkpMPh)aOnKGWQwkhLVc4IQQje)x(UcKYkxQciUMyzOCF6qdlSO4K24HqT78ALdevCfdV6fkHjwBG(qPNHPbZalnhNW5LFGrj3hHFK8sYcZM3u8ISukpp(WPDrE9rUW5qfpt4ssm5YzcEI8sY2pBoZiypusL)BrS9Ce6YplnU0UrG4fuLHAbAGIjCUIZEBkyNGykBY0hixz0V3GBwKO8ay7ZHPs9y1xu6AIU45ncqxKk8AJU41K7JUuQ3RnkJIS5JWiD)1gxroP(4kYS4AJR0Bk2hJXSBEXLyGiqPO47ileGbnmfJFGbt3qCDciaFm(rGwirb7Lr7drAr2kguNmSzP0LXdrTGDaQLT2A(Em3FkG3VOdeGxzoHfFhe5wsEcPxWUUlliE2k(LwK4fGLITGiI6zQo(QuYFAHqIkMUscHR8k7IiBIDT(2JSXQp4ThrJLt87oIMxfjxF3m(Lm0yLUTA)21PJVsrFkQAP3SUEjVWNVDoGPX135UH)AHrY1qkDnx6xFpupo6FrSKmV3)LYqY8SFRYq5UpeXzJvr4lROJvGineKdwSJudg6aYitnupmcp0MDuz(OhbHd0iIYueLwK4G2do04Qpn4A44lVKSQ4uP9(OSJFpDqIDQ90iPvEE8zMu9NEzbpZEq5YqIH2BKZjBzCFmnA)DCwoMJmFx(QKH8DDq63hflgACzQNyldtodNjVAsYQbcfzib(YDrtpvTRYnCidZgxFPYQEhiS6ikLF2(8Dc7GCidX6KdcS4y8nmYHAey1FbYfPMtPUiKexn(fZDx97er2rQgVLvoNIvm7e0PjUp4vbD4qNr97BC4z76DjgDB0U7R1oYszOHAqtHSNODUyuf1NTx402IIHP1wC)hNmYY)coUL7JEhE7r91IdVEFS7JSNWVxH8aqChl23pSlt8NN36iCn4DzjvEQFxBuW(hQiqNpswNOHhxAtAzh0Kw)MxBW7fnyBY)hED51ZorXYyOy9mBBXo0x5LyfhChgO0hW0)(Up09MNhCYbI2QH6fWW5yoCIUj7Mn57(Bf3bcOD1DnC)A3B2RpSJqh90dxDKH2zFvP1gmZHnEs7NPkVP8Qg2wzhhyoR)kLrGedye1hBOX0B2aE9uqAJ1eV)F9dO(TU2csfcQHOuA7Yvnv7Y185eYWXS)OCanqGEmVjb7y8CCjPyL3asXWAo0UE6w1dmNAl6wpNp7wUp8C41EGz2akzKL238ZT)ygFYSC7qYtc)(jFIAfWe6tuRA)ZYmj1PQeXxti(sI(kCmBuEeAirBxEtsUNDP8aX3DzxMofdBQ3u7Ox5rcSzFrhF2SX2D30(hjgmPQ1L(ApegQC)pTF)y83sIghCSXgBC7FzEK3epqr9OD7Bsiu9xka4RbxoJ(h5(9ovCCryUkO5gBUrl7)T8WInfRAWTPg3xa51XQFzGa69JnOyrD2MBd1CVB7v)8h019HuqZXHiXK9LU)4tfJf1eKN4tFl2R2QlQJILdAdfkLCGh3VpWhqa99sOPcyKZfJDaHQ9yQI9Xp2)b7pmRspY168qckCJNug0XSq(Pz)AeQskxIWSW148el8XKGPihQ(N1dyEmDxEVUo(5(Vq8M5l9Fvn0a4v(JeiDcMnwdIiwbTfybz6(Wt4EqIp8ApwzfkeUNVQ71zP2TATXz95dar9uykJB)jxKpAmtI7DrXrYA)lnys9ybt65GhcXW6vzk4)wGEON86)(w23n)MIolzooWmW9py)lYFIxY6OE(RdQIilLZSU9l4AERt0i76LntVjeYNDh3hD47(NGki43qcVzbU39kuq6f)ZBmVeDEq6B8ANkZvB268Yd4zWlNa2yBb1d26luTwTKWkgRAQXQot9zMl9yluT68YPtSDhgHZksOZ0sOtkEFNktxVsERNexWZoZwz2mCjmw9fYqLzQpNKXMvovs2Ujrm)8swqzrBDjKVE9CeCYAXkoENtIWBojcV6suC1wiNLvIlNzNzNUY01KdzSne7b7mZpxT0Qj(yvKp)oyfkx8LedtNJs17kdHQc5LS6ZBZoFMvgFSAsglnFvB2fQDPk2o6gytTqr78se3ZlrCpNeX9S5iUFmK9KMGqZm3cZMgP1QnxAUDNQGkmh7LLjdgq8fsZuzMA5Oa7ORmekAfsLRIARmWpqrTPNVA6j8I4HDe3qFYao7a75G4W8p5NumAIJ4k93IFIrxarJ6RnBOKDO4000p9XUNMoPAoSSKQaxZJ7ZiqAduFE7A5vxaYMAaBpc5xrm)IBGaXrnpvFXVsja6w1rS7NhXFDYk1NBMkLC)J7DsyrA9AUz3UBUo1V2PMR1ALUsZxul)8ffn0S)4nuo8qJH)7oOww6qoyr7lHA44aksflM0uU1KKYDcytxbx7eSHN28AqBFaVeXVqkoQkbhFuo0kinm4FZLBy9EoIFTM6zm0MqzNLU4Zt57dYqKk8dVtBXzAoRB9Y3449Hqe8nFxTXgl3tmUZNcF523W9VESHLQ432G27Ryocp2DCDhZ9V2K)RYH4xsbytTF4To2MsGnAXoY9xCg)6NPE7qRqpDm3G4lMWPDDOeH6tS)))t(Nd
