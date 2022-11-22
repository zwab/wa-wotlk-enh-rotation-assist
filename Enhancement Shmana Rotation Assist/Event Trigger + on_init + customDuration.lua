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

!WA:2!fVttVXXXvkAHS2yWUa2koc7AlNuHoIlNOruC(GFfyMKzihAr5rK0ZmCLsiei7P7AMUm7PRERUg(HcCacro4dg5apSa5k)jWJ7Pf6wa8Hje5CoOFc6xW(QQ)U7Q5hRJ9s9b7P6x9EV69v9Ev9Mjw7odVJXDm(Qp7mIo1UdDethFB2rB2VVlM)1315bgexhlTJ7IpIVBFkBOgFxND5KH4Dno2wBirFxUjd7AsTmoMDS38E8VU)F98Bb)CUMTUjLTfLyZ7TsZn62STdkFm69PjQmIz5Cpto3X9x8OhDO2a6me6JwD4Z79zh44(BFuLfBiy29EZ(yStDxhSoVTgNqnp5qkZ4zmnNtEM)dNzGD14JyACSzJ(uBUZ7UgJ8s0NpsZagud1TBdlQMX)1PJCX7AJpaZm7X1SW2872E4iloPqdbbU743VWBeGGT1PJS5ygXWuohDlnx39ET4raqlR9TPhAVxB5Wt1ZLypWc3RZJR)06Ba44SiyEN)YtB4sEjwG6lCn1mOh(CpX3pWzsfYOQZKukDgdpGqT7ESdECHgVKshoXzCQoScCHHFNd(FARz5yQD7EGOQpzqbNpubsxX)Hg2uB85(aSomJ)1369)igDe3IyJzBUD3wRVrZEcvX6REAOMOTo1IYEYTHFotFKlNouGBN)C)r26G(WE6IieQa8pePpsd0cG47GzChnya2v8E0YlJMCse3eBlHs8dddQlBVzHTCXPFHc0ukCmorhKTHtXdj2gYFxaEWxo)B8KZ37wxOtb7wqz05qIdEpN3nAvSTJby00gSiS5VwBemkyIP)mIb3SrD4JNWzeGbyU)PPy(p(v37vslcnxUqRyYKk71nEh9hCIHWge41gZoZcZDXamivj6DmPhUP9RDL)AfFw5ebogzt479A3r9K0FlgUp5O2D2QzRwNkr6gAdXN(uITbAnqH5l8f6nNNgj8Zi5fEnkL2jGiuQb)7CpmVRjXa3wy9focxy3v5cgwZQtahnUo4V1Bu)(ILp7XnBT1AB3QN3eo6N(jbCgAA5QQesSklHcwLWtcerm8yClQUMfsqt0YOpfZ7cpnD8xnq3aEZ0UyliaW01kjasYkRB3NoD1AlvUwXIfrpcvE2zNn58(phHhjq7V7lJnUlgw8g592alfUwplmt7WO3hdOWviyDfzFQzBiKRtlxE7cbnXfdvak9kqrqgc4L4bTgdJrF6kRIATzRuEtjiHu9VmQC15RuPCiijCYubVVaUAkbScUPy06kWRl07t8Fp8HO2EgC4JCiEoeQKEdW8iaMo6XIXLgrdlec2eleLLAWzZkmIdaA2eVIPK1ukIsGLyF4Hs71RlwZrebsz0t1aAYz0HOoCn99DHXd8Mfons1UiunMnjcmVqshi5OBVX6D3T(2TRNYsi8bGcpMEiA4iDZyK5qmAaL)RcHkRgzyaSUsoA6IjwMW2iiIW4QeQ2SidAIxgHqHjDj0ULqYDrb43gwnnGigthSCkHiLqtUvR6)MMTNSyg0acaboKl1iU)zynhQTcB)uAbjvZaqGcq1NJ)CCr4kAw6JSGDiqGFhb8hq0(Ovm1i2OwKbMCByJ)uctDXB1nk59aifzC)Nd2CiCc5cHxOqPtyW(ftpzkYozc3KPtn)LrZxmRCYN3a0hrA0dYH7eUdjchjyhPgjnNCzesgz)bO5Z3llhMcIqF5QhG3uzVk4W5YYrEqhlEJpzlI(KLL7XO0OkyBIDk)cKIfEg4vUHqmKK1s33KLZgLk2tAXKc2jKrqnOw8Vt5gf(kjcOfevBdQ9ddvjOw0be9Byqnz6pRuVd802RSsZMR2Cvp4sAi6Nm2o(jt8IK6pvPpMzhVjHOqtoPI54zONCFWejTK2ouHpshoKXnifi7JNuSLLcqAPDGgQLMRPchiVSEkpZCxd3XNQnyiuIdLJhMhPG4ywIqxaDqnTWdbjU71b2626G0JYUwa3b8Ti5JxjdcMdTXqysR8xZxUxFIOZMy99fYFi7yikdKNT4JUiq7czEp8482Mtxmpdkxu4Y3QT3c)BuCfr(RXFN)MFRktyE6jHGBqyOBY2FXwBx9oFzCC)h6gFsMWnLu1vmOy)o5d(7MjFoZok5cHY97IVWtUxxQ5QEVoF(sKzBizHTvuZzcNRKoYY5StsZ4xOw(hrPmB2LBK8C4U4B69Ttvff(jT(s8gP(YdepTH45S6R8GqP(kEeVu6RKZDz0IQ0xE8LqIeswH(sjNLFWWeXDVeI4RQwm)8sYHHUY8ssOsebNimSx0541qaHPSWUUalQbfMNaR(rRGPXfZsYcIkJfFqeEPfUpF6YfV(gdsoyd6bAPiHnmKWsq8BF1S4Xms7CEVAV2aALYgi5exgvvHjGh)aOnKGG8wjhLV(pI(xc(9v(vZx5RKvUzQ(ykGWD6tPaSGHekaXV9fWIhZSCZ59kvarzvKubKCIQJz6XpaAdjiSQvYr5RaUSSAcX)vxvGsw5kvaX1eRcP7ZgsSXYKtAJhc5UlYvoqujumISxyuUCTb6dTEelcNGvUhN05vCGrjRJWpsErvHzZBkErwkMNhF40UmV(ix4COINjCrfMC5mbprErv1ZMZmcQHsP8FlQJNJqxXzPjK21deVGQmulWcumHZvE2BZavcIz8PtFGCLq)oIWSirGEO85W40ES6xw8gIU4zBeGUiT(ngDXZj3hDPuV3CommYMpcJ093yCf5K6JRiZIBmUsxuSpgJz38LxHbIeLYKVJSqagKyjh)qc3KipqBeGpU4iqlKiH9sOdGiTihncZndBwmDA8qulOcqJS5wlQX8GzaE)YoqarM5uE8kiYnL8esVGQUljjE2m(vMK4LGLjBcrenZKD81jL)0cHezmDTecx7v2Lr2evT(9hzJLFW3Fen2EIF3r08Yi5M7MjUKH6R1Tz7VtC6uBV9lLsJiPdsSUr)CL5jMreL8oDUoANByiHBk39)1Wex9c56hSinU(wgY4g6i)9S(8QCX))r2rLZ)3JStUfQip8SYsNDntSgekIICXYswjC0H0rwgOEyeEOd)4sIrpgIxyqL5XiZ9iXjXh7KP)9lN5Au3P2leIdXcoeYQVi4g9edNCrjpGBVxQ6K8ZG(QVisQMNdPkE6kIdN9m3vVW(2FKBjlCPpMfvZOG3JfZuCYb60HIkzO97JIfxoLAyzfC7Cs1W1sKwjq6OcjWBEaA2zQEDU1evyMCZpMR19oKz9rmM4(cevx7ICPdXM0ddms5IIqfqncCuUe5Is7QuxUsIRB)Y5UR)9SO6yAJ3ignK9BXtopSpJw3WmS)q6mQFFYrNVR3LJ0TE7UV2RPlw1V6CN)EQUcjQ5kGkOh68pSoSqDL)QBXNYLcP)dkNB)(a8qm4cQZpEt9uOqH2Idf3TW4kNTcDypnU4(LCEpHSkrN2S3jb9MddkcX2gBDrO8u0)k75joDDY9cNkfE96(9CJyAV1B8BfUaX9EN4RICli7rmottF)9AiUKREExW1PJS9VNQ7o(jVLOXR(cPc6aqh7Ch)UqYda5vL5uoubg03rEkQq7gVbbBkFrsbN3ttIqF08uQb(2k7bmh)hg38nerNTzRz9F41ezhEQMnzOCjnFB5rTS24wJN6vynxCho4TnGB(2xeCeqYwcI5fU29ebmYEtBQgIY4LtCm5Th)fJ3FS14P61hkT31m9WoFuoD(wal6CpfaOxj49tDU4K1yE88DphEuh3uQt3Z59dI3iM6QexruhdtN7Fz9ANddRteIc1Io9q62ZelQZ9ZFvarAAmaBEg4wInKnn2F8F(8yiyY7RFIODe7qEjUypxzBx2Jm0HY4kB(VAPA(pLCDTSCD7df0(ZDUdyggCWkGLqBiR)9ukRRetwZ87LWLofIa03RjoBSz3UB(0l0gXnPSnDeIz3ckXuT4y6lalAs)JB0Q5ADzAsdz35hBwObyfWNA8to6h8FdrYfN(T4IGF4dluq5L6kA6Qe3QC6BZyNYluD(AIW0IiPLsaBSe49GT2svQwnjSYXQKASkZvBUfsp2svQSOA6elB6iCwwbDMvbDsX77uE2ALZB9K4W73z(YZNHlHXQTugQmxTfum28QPsYwjiI5xuXcklARPG81QLJGtv7ZiW7ckeElOq4vtHIR6s5SSsCW77m)SLNTQAiJvfJhSZT4cvtRMeJvw987G1ycXxsmmBokvVRdAlgwK6GpVn)IzwzIXQQyS08v15xQ6vQy7ysWwgHI2fviUxuH4EbfI75ZrC)miGdlbHMBHLMpnsRwDH0C7ovavyo2lRshmG6lKMR8CvZrb2XuBiSpgeash1wBGFGIQZUyL0t4lJh2rE7Rjd4SdK7h1L7xPCkgnXbeK(DXRW(siAupl5a7IdrFtt)0hPAA6KQXFYsQccnpUpNcX2r9fTIJxlrJCyeihlKFiFXHYdbIJAmM(YEwhq36UYma)mXhNUCTfMRCXtnO76LYYEJTV74V205JZVh)JTJ6dZz)NC(2fOER)YHBbReF1YhF9CXdHLBVYZa)zjLZUA(ZEsIHZpEdTJoIm8F3f10gYNux2(mO6UUGXMMn)mi)82YM039xC3XTUa(ypirWbm6iBJV6N48t5csXVmz0PHGC691ld6W7RxX5dZmp9zIjgEx5B8uRRiBq)jMyIB78VPGAb7pFH33td)V)bt8ApmeSPFJ6B3DtNFOCWKDc)4AVXdHHP58h8rLFl2pHZplVfPfEGM(X723IszMVscGFwcJ)NotE1ByHQOXgBUrtfmFuQxoO8iXqQXUmzQoFq25hjXg3IbQgXlDUJ3ImU04hDMCSOVQdN6JgB(R3QlQJMTlAdngJE4fHVqM4BXeyluGOGvIsF1dfbFnwg)V4jxoamgGKv3Zx1g7lvZ5BUD3MT3T96F6J76tUeFfhMiXGb63igvM)PtX8eGkCc)X5bRFMP9VOhW9y2UupADU)hfFvxU9R8)GEOz5R9hjyjgaogsFMvgTfyyznU1Pcxh5loVpdIYcfFOX1U9B8KeRjgsiY71zL2nBUHYmORKodAvajkpmgqJNc25wereRUmHkzt4(80(DNjkhIit49dMQT8CFNF88LU1jhaPfikbPs9nwTNCC3Fo8M7DRXFZjeBDzDSTpqZAeEIPgpEIXFtdX3tezHRdWUFWDpXHrH6T4hp(JpjOOdZkJigN)Bl2AWChv)5T3x)oUTNBMkZm7Do4V98)3
