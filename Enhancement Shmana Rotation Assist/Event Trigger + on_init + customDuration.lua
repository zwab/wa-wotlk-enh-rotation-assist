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

!WA:2!fVttVXXXvkAISRXGiahTocBCKZwzsSchRruC(GFzSCt4qo0Is8lpZWiztiq2t31mDB1txD6Ug(Hc8ceICWhc2d8WcS5i)jWtb5uGUfGCycroVh0pb9lyFVQ)U7QhrU(lzlXUR(vV3REFxv94eRDRb3s7wAF5Jp3qLz1Mn0rLo5Lkd56mNTT5gml3cxOz4ABQCsh6X8IFGQZjB3RNlL)WFvV)(f3a(ZfkwQa47WmS4DxP5wDA2YMeBo73J5mqHVV9(CJbu)3MO6qht77OZ52UF0dEWrk9ztBWEWQdEA3hFOT7N9GQl0azPdE9ZPu7LDTPQ8wkadPBFhj4wTI)tnSyw0Z1OUk8HokCQEJEmlU97SMJXliFYqfnyqfsNonmzkA)3Nn0LUVf9qQJExUIj1IF7wdgAYnk0aP4Th9UfEncc1sLn0ItDm00fZr1uX19GxHpcaAA(Cl2rwh0sm8D76Ay13K2T9dxEZL3cWX5rW82)1nB4A8ckI6lD1v0yh9up553ZUOKfwTPtk2o3H2h0kDoXMoQG97QYyMakSWPSQHRsxtQM(5CMkSKCb4E7d)lTumT1vMSlim7z0VG9pwcvwX)Hr3mqzVoa()6B9UVVdBi30WI6S9UD2y9TA2f1uRV6zHkQwQmtMZJMe(Z5QdD5SbiIT)F6n0sfTFMQeHqka)Ly0JOa6eqyE40Ud73N6IFNS0sKIfjCDQLak8pouq5z5nlQPln9hKGMYHJXnubjD4u8qILM4NfGh8L6FQNu)o34Yazy7JmSPhy)orRIDT1atOwG9Hf)LbG1uRpv)uUJbqAh3)R764)4xENxkSmuC5O2r3rO0xx7TvV3PAOTiWLnMz65N9Y(uqEAO2wND02wVYv8Jv8X(PiogAzWpOb(VDrDb15mbU2sza9SnnS0iRbJ6lTrfL9Mrs7mIA0lsQ4nbeHIj4Vx4H591n0OTqJpTUcrGRDXD3A9o73ENMBSXkl3gEA3vwPzZvBUAzXhwE3wlFzOpbYUhaUIDh2RhkrCEyZn2zTD34uFbJBHgCy4UEuZF5Gt6Tcya8ZJQCAGi1rvxXYIAA)dqAKqkEWOkNVcBqxfozdw)wwawCl8kp0SQVW3()nLuYKPQysWfOlxzGnzjYht5DGxt89(QAWxMYLAcHGMQEzeO2IvGvp2u1QVyL6LkvI8asLzMzMSg6iKJXgVs5q6FVk5AWd8qm4G3YyvxOqHlcL8RRPp6Xh)t)OG1lzkH(RmbnPktCh21)Db0gAPfhFTjjcN3VziDiI2F7xeBCxky4PL3xd834yqnhLJI(EmGcxHGRCuWafln0MEkXYBF0yOuOevAiiseKHaoMWvR5qPKpELvjBS9gPuRjiHW1BjsLAZvTALqqsOGLbVVaUwkbSeUPu06kWyi0Oa)N7FFslpli6X2gEUbYKE9P8iaMk6XsXLgrdJcbldtcZj1GZKvyehaYmj(KJuwtQikbwI9Y9f2RxvSMJicKYKnvaAYDydiT5kQp3fgpWxgDAeQDVyXfjG5fr4ajgnmYxklHWhak8q2rKbdv1JrMJOK(m(VmeQSAKbbW6k4OPkLyzcjSjgOXvzs9ziASeFmcHOjDzY(LjIcya43fwnnGiYtfSCktmktkUZgl)PnBvSug0acaehILAe3)eQInZsITFkTGGQzaiqbi794phxeUIIP6qtiDmb87ma)bcRhzfDfdlYgg915wqnxPeMQ4xHiNEpasrhU)Zb5JdNqUq4fku4egKIEQIPiBXeUjtLA(lrMRuw5KpVbOpI0K7Ld3HUdYtQKMtghHer2VhzU89YYHPcY3KR6b4nz2RihoBwoYd6yXB8jBjY)(sICmsnQcstSxLNrKSWZaV0ecXqswlDFtwUZWuXEslMKWoHmcPbZK)nk3iXxjraTGOABXSUFOkbRkYq9AgutsDEEWL0q0V(398lM4zj1FYQvptgVIquOIfLmhpd9K5btu0sA7qj(iT5WEBaPGXZPfXuwsazdLdviBO4QlXbYRQNktp7vWDCtL(dGDxY40b5rkioMjg6cOdPPjDawx9vb2LTubPhZ5kbCBW3YiF8kyqWCOffctAM)AE8E9jIoRtvFok)HDMarzGIYXxDjG2fktFWj5LMtfNNgJJ7s8Ru6TW)pkUcw)A8V5N8BvXgsMQieCdcdDDs)fBT9MZ8LXX9R1eFcMWnLu1fheZ3jEWpBM45mzuYfcP57IVWtMRl1CLNRZNVWkBdjlKwroNHoxjDKfZzVKMXptU8pIszs2LBK8C4U4j9(QPQIc)KwFHFrOV8aXtBGpNvFLhes1xXJ4LsFLCUlrwqM(YJVqjsizr9Luol)GHjI7ogI4RQwi)6sYHHEJ1LKqLGbNmCOErNJVhcimLj11fyrflIscS6hTcMghNLGfWDgJVGHx2G2JpvLsxDJbbhSf7qLuKWcgcTeWF6RMXhZiTZ57Y9AdOvkBGKtCjsnjMaE8dG2qccYBPCu(6)i6pg87R8RLVYxkRC9u9XuaHz6tPamHHqfa(tFbm(yMLBoFxQciQQIKkGKtuEmtp(bqBibHvTuokFfW4QQje)V5DfiLvEJkG4AIvHY9DgyyrffN0IoaQDhRvoquHkgS6fhgxS2a9HsxdtdUbvAooHZlEGrj3hHFK8sYcZM3u8ISukpp(WPnoV(ix4COINjCjjMC5mbprEjz7NnNzeShkPY)Dy2EocDWZsdL2lhiEbvzOwWjqXeoxXzVnnStqQdFQ0hixzYV1anlsuEaS95WuPES6xu6AIU45ncqxKk8AJU41K7JUuQ3RnkJIS5JWiD)1gxroP(4kYS4AJR0Bk2hJXSB(I3GbIaLIIVJSqag0Wum(rgCDdXLjqa8XXJaTqIc2ltoeI0sSvmCCZWMLsxgpe1c2bOw2ARX9yE40aVpUdeaRmNXJVdICljpH0lyx3LfepBf)slsCmyPytiIOEMQJVkL8NwiKOIPRKq4kVYghztSR1V9iBS6d(2JOXYj(nhrZRIKRVBgEjdlVwNMT(w0P7)GGluYhsQwkMmkyWAL(61Dm5La9vZPmnU(g318)FIQR56)676gNT(UHVK5B)DpxjZ5)BFUk39RiodTkcFEfDQcerIrCPIDUAWjhXgAQr6sj0b28tkJJEce2qJjkNrucsIdKp2bu)FUuMBtDV6pdLk4coeYApl4I9WHtUOeNZT3hLDG(zqFTN5jChx6Bz80BiCC2JEx(c7RLtEBvApQt0ogrwowya8CduzdW9XW61JelQCkP)ssyYzfs)RKKSAGqrgsGVCpYmtx7QCNjYWSX1xQSU3rmRo0XbVTaCV1Uex2aQo7OaBtoUfueQHG)XyKlsnNsD1kjUS9XZDx9Bzr2H0gVfyU0HQy2oOlwg9lFvqpt0EyVEghFX(ExlsNLB151ANyPmWqnOntoq0GyChf1NFq402XHctRL4gvoBOL)vMC7rp(TWgU6Zfhh(H0rp2(w(DFKhaIBTX(bH9TI)88whHRbVRFPYZ87dKc2)afb68rYMmn6KsB7l7G2(ALxBGD3gSX7FTxFJ98ZuSmgiwpZ1sSN)1EjvXL2Mdk9(C9)5rpA0nVm4SienQJJxad3tr4e9N2nBG7NCTr9fqpsFKXOpF0n72d2JPRE6HRo0q7IpR0g9N94LFARNRkVn)Qg2OANgyoR)kLHGedye1NyOX1BSm865G0MQjE)3)9D8BgUfLkeudrP0gWRAQgWRXlySbty)(5aAGa9uSTdBB8cAjPyfBPPyynhAxpDZ)bMtTe9)N7hD7rp6s41UGzwFh2qlTV8FZ(NWXjZZTNlpl87N9bQvatOpqTQ9poZKuNUseFDlXxs0PItytYJqdyA7JTD5b2LYdeF3L956ouxDqhEYR8ib1SNOhsBS8UD22(Frmysv7iNx7HWqL7VZ(DIXFRiAfXjMyIjT)55rEtAFf1t2VNjJ5O)sbaFo4Yz07Kr)tNloakkQcAS12B10(NMhwSDOQgOn1K(ciVEG9tdeqVtSbflQl2ExOk(9BT(h)WoJEKdO5qismzFP7p8CXyrTv5z(03I)QD6qARy5s2sXXHDKh3FiWhqa9dsOPcyKlfJDeZr7jok2N(e)hSFVSk9ixRldjOWnEkzqhZc5hL9RrOkPCjcZcxJltSWNqcMICO6DrxG5Po7JDp7Kx6)cZBMV0)v1qdGx5psG0jy2uniIyfYoGfK5OhDg6bj(WR9yL1CGW94QUB7vA1S5wx0dhaI6PWvM0(dgNpAmtI7pU4izT)LgmPESGjDDPdGyyDRmn8Fl6CSN86pCB77LFBwNLmNgygm6pA)ZYFIVH1r98xhokISuUZnQxHrM3(mn2(EzZ0BaH853D0Jp(79NHkiW7CbB)G7F)cfK2kbyR(LOxgsFhA7vz(AZvhlpaZGxobSX2uRhS1xSATAjHvmw1uJvD26ZoF6XwSA1fKtNy7TmcNvKqNzKqNu8(EvMPEL8wpjUYO9MRYCz4syS6lMHkZwFEjJnNCQKSbwIy(fKSGYI26siF965i4K10wiENxIWBEjcV6suC1wmNLvIR7zV5MPYm1KdzSDs7b7SlmFT0QjCSkYNFBQIdk(sIHzYrP6DjKqvHyjR(82ClKzLHJvtYyP5RAZTyT3OITTUb1ulu0UGeX9cse3ZlrCpxoI7NazpDsqOzNFX5sJ0A1Mpn3UxvqfMJ9YQS(9z(cPzRmBTCuGT1vgafTcPYvjTu67hOO2mlun9e(I4HDe35FYao7b75G5Y9p3OumAIdnl93IFEtJHOrDkNnuYouCAA6N(G8ttNuTBwwsva180ECgK2G0dBamV6ci2ogW2Ji(veJxfeeioQDS6j(Lubq36UID)8y81PQuF(zRuA0F6GZclsRBJT70z7nD8RDQXgnxRJ08f1YpFrrdn7FYwkhFSXGFHlPPLoKdw0quKLDDbfPIfxAk3Ass5ElytxbxKfSHNwynOToclr8tKIJQsWX7NdTcsdd(3OCJQ31v8lkvxJb2mh(fPl(8CCFqgIuHV3DBjor05gvV8no9qiebU57QlV1QDfJ7(HWxUZng93o1Wsv87VqRdvmhsN4UJgnXO)wd8xoeXV2dWMAFVBFQTdd2Of)Kr)SlWl02XBhAf6QtrdIp5wUTQdLiu)wh(pE6)3d
