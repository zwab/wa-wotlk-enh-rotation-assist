-- on init --

aura_env.spelltrigger = {
    
    -- Stormstrike
    [17364] = true,
    
    -- Flame Shock
    [49232] = true,
    [25457] = true,
    [29228] = true,
    
    -- Earth Shock
    [49231] = true,
    [49230] = true,
    [25454] = true,
    [10414] = true,
    
    -- Fire Nova
    [61649] = true,
    [25547] = true,
    [25546] = true,
    
    -- Lightning Bolt
    [49238] = true,
    [49237] = true,
    [25449] = true,
    [25448] = true,
    
    -- Chain Lightning
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
    
    -- Lightning Shield
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

aura_env.firetotems = {
    
    ["Flametongue Totem"] = true,
    ["Magma Totem"] = true,
    ["Frost Resistance Totem"] = true,
    ["Searing Totem"] = true,
    ["Fire Elemental Totem"] = true,
    ["Fire Nova"] = true,
    
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

!WA:2!nR1sZTXXryrXYjUqfvLmJJQeBzNXWrkarusep4lNWYMaeuIs8LbaJKnlfGb7oa7AUyNT2DaFOuXvcRCWxYfEivLl(a)jWB5MlDlN8gMCoh4b)dq)cspZUyX(ywslzfxH2IC3z6P7E(6E6UNz2XwEI(tOoH6x8WJ1vOMnOdSviJFkEatJAVHftNA6K5evDhld8bnj7ZYEdf7d2OBxhc7(Fu3)5jxc(5eSPcq(MuDtwNQ1wVzT6wOqJPvxQDFmRLvlMEFI)BJvCGTH111ymlNp4U3DpCp6D0P3DP(pUZd31Y5tVBX5QWvP2pFhcXArhlIcRoguinRRlH3kf8FQIj1KCSkXbZgyJzeTkDPMmRRUST(trF8aSk0ig1Szfdkw9VE0ahsltYUeBTomSbXKDT69hyW0ZuHlXR5(MzEoNeIPcDGjJyRRQjgJIb2XP9z8hbcnm2XKUNz76IMVzhhDZEgKonU)IRT46apoEenV()yTko6pLWz9PoAyv6Ep2dpFnRSsMyLUtuy7yBspWQ08alIBgR3uHsnawyYhYs6o4ogevTJzufyk5a0967(v1XgwA4X7aGzx9EzSEBjsPQ)dUxzOXEfG8F6LFZ3XMoGzOBsS3yRMRUY616WTuRS0rbgQ6kudQ9dgh(5yLbomAFoJT(BDhyQW9FYLhHqzG)H07IWGnbaZDVJZGE9io8(rlSakBwetJykOI)JnbmEMEJIy4qI3He2mzqBmDfaPdgIhtmvf)nd8GpQ)jEO(1V0PdXWg7PBrABD1rZITSubxO6G)Hj7zdjRMApI2HmBDq02oF5nT9F8lU(ZeEgyhg36Ozlm6RO(6k36qvUViOLvM6oZo9P9iaEQR0qJU3gMN5i(tvFUFMZGoc5TPnPR((1BSzTvxTYatDwhUzHyFKGTRJ7toAnDtv0YqR(ap3MzT2iGpbQZxqjfPJqraIb)7q(uIl92EALJv2TwFLMTeQv1fBapTv1Q1QTuTLMu0XIBvFXtdwwWvZ2WQXod62Ldk23V2QBU8wREOp24KPcdAUJN(7pn4d6YN49ClE3UfoCiQAROHnnjgwVbxgraY2UfoUkTFhmdTkTxDtGlozoZJnl5J)w)NyOJbvbBG4lWCy4(wOfq3JWAcVgP)EkQqp5CigquOCLNKtudXmWSlnxPYZxOC(85r3fvyQPMkPVoNYZXnVWKbY)wfs1Nh0Hq0bVLWXotMmNeG8ROQ5(W9V27nC(IYjSFtI4gZjrd9YGN4uRRghoEPqI5MAQ4aXOF5XGa9bw7nA1l2uL75LtOmT4MU8bZFPXmqJOmjHc3CGepLSumLuc)YpsAscsjmDlBtiO7vDj0QBSAmZOmzxO0mflwiGKHMPq2tM9asuti)x3(2OQAeLD46HNFJUdc4y1LKHHkCsvuZr23s3ZbpYezuZ8PGPUbIAhRXPsovIRFjCifneIlHF52cNNiKgvr(nli8Hsi10KCC0B4ZXrT1WGoYSP9rGL2uLyZdcORaDnC9i3Xxyk9IJMfboDiXIarRbrVIzDdEaeY9P7H6pqrlK02JG6rzFyavXSq9iS(dPfw5QSJtU8rMBqExKo3Hzsu5PqQ0eGIhd5o6tIAnjsuhcq)wWSPcevn3WPZKi9jrz3C1f)KA1ZMpbBaaGZdXuDK2)ic2IAMvU5iKjri1eee2UKMDkoewfBOmWaYQcU0iDy9iI2fC5X6MOv17PXmHsNIbMk8EHOFEpaOOnZ)5HPvdgqQu4foteeyyM2CzJj2Srw8Kl24xant(K4KVUbSFKOr3kfTlXQOug9WG7NhoUerrxLWv0BIG0FigLhVa8OdmUHNmYCd5tPPtoJ4oku2OaAJgN36kNTJMy7jYDEa2mm6K)SmF6Ez8GDYshK0cLopoVaiP5Wk1OCHkvG6GQqny)prNErwyfps46uZBhy0EPIckP4op6IA59R7DB)kiI5iiRg9ePjZcHTYMvYy8kzkAI7ivQez9qKamdtFcfgdX7GAd5VksIcvl2)G0Iul8wvPm((v(ofHo4)hL1Jxgv4(8JFVKOU4CzHL9Wc0xKi4HMBxCWBPUEVYIDlucNyOQdVrEiBXd(bKfpNiOyQuinKD4jE0W1XgR8W1(6fV4WaXcbCLRzjImKYO)2eUwo0XGnDdlt13Heh)49iWpps8qh(ZjXV0Oqk(fsKXXVOJDb0CYWpp9IJabILJFs1SK4N8r)sJFlRBtGWD7IJHEMqtCWJ)xFKH)ycfmL(L74nuwXGTOduUxNN(aSnqGWSwQgLaYKo0xAaBv8Uy4xoAXamdOjoGX)RpGWFmH6Ls)sbSazfdWIoq5aMN(aSnqGWSwQgLaWKo0leWKxzfuBpSqFGHQ36DrkW900H6)PMeEfxdcj841n5fI4IlwkuHs(XxYNAfvCbekp1lE9urcF(DUUf0RGIPQbwiTxzA0RK0CJCa8mXsJtN8aE(CiVC4WRNVP2luy6MA5OvKW3F)L4FtdScbH9c42KYi9t1TVlqcJtX3oxF(zmXPMxH0QKUSCfYNYXsCU4YA4E9XEA23N4ISqfjtkLY08ZLonL7xnk7ZfUBlVmgVubhgLI7)pwigKcHFOBxWkVrPBo31DEPhErx2fkx23toxPBKcFoK5)wE6DPULr(1HytWgngEy9UFuWfq0a2BI((N0YBJGnxSEZNREaSdeDLHNMEBXvHXSXk70E451RbliQZpdq1Jgy6VdXR5(WlFt3YFJ7dCxW9Xx29EU33DZ2UfQufkPX9xFz3hnM7YTD3sZDH6yBIj2DE3pWTAB3TB7(HJ5(7e3a5Nj2O2Ue3hAnH)n04XDXoCTUvWb77luVQocGdVTQw4j8PS1BGfSYNbRrvjJl9AXSgETyp5568B)ZeB8B9UxTDocBQ3xGcZuxuMXYpJGDinyG(3JP9dH56voDy5kIBXW2HawqvNd50jU)URuPpw3CzxDb1UFM7oUgUxPtxDtDhT4nl92blg72bLF3OfdUDVId0vp5tZVAVP3FXhxFhLdhEPwAwVtkSFicy7FJIZlfPuceHugvkeJodpamEaUO8iDvMwLfHx7Or4hQYh3XrCd0D07BrTzhYV62g6pLKx6KNFNqHM8ParLJFbQG)DDXDO68bxZ9bNcV2bCG7zthyQ(f)CR3LXhml17T(OG(p6gkfaxSBOu06TtmiL7uyKEnHONi327ywO0euFQAl(vx32kFAK4VqSftZMa5Dmup4mprqm6kUh(klUvZnS(XIgJI3Uh8CpgQVprv0YFY6QH0VQIRZDSXgBCRFrAI3G0dRCqRUguQT2Zee8zWss9Uh4(do2MYaLNBcQS(gRxZ69sJlw2q6tUl14(aK33rWNmeGUAOgftQt2yRM1Q3Q(k37(nDFGny54uezW(O7p5yrBJUA6J8LVj7SnBIAGnDqRJTTP75P97c6rhdaXdBPgQiNkABpQT6JSXwh(i)hSERKg9rR0onqGIL65KrDipKFwYEhXQO4YiolwACAKj(ys40OLEDpPdO8e7w8VaHXp1)fQ3iFM)RkboaN53Yq0z4OjQquZcOnbpid3hCeFfKOJN7PklBdjs4Z6onQwVwT1pPlVbiYiMHh36gN3A0qUe3(8c3L0)xAyNYHJFTV)NTYx5S5F5pEPlDjRBL(3Oss(3XH0hIa2PWDG)BEBSixJZmUAzCnV2rQ0wE5K0QabVz309H7)AFdubdSfx(78ZFnJ0dpf2O6VpYP3gFVgBxy2sZu(jaD8u6tgH2q7MZJ2YZxSuXO0UDXPlp9SXBB(IfNtopdTFSr8Ckj8mMoTDHPkxin9msjXBptHzkpFcooD5zL02mY5y0JGFKIMKfLLiQYLtzYl7EO48DwjaqzjaDP5trDJCUlBpZufMQKCkdTrgpANEUzlfhQ5Tvq(4fJeTj41cvp6lTzMlHUYBRKK2kFrWDdnDIHAaWmNeGzwjaZmPampcYuyhLPZo)mXzAPsWAG4mfa7uSIlr71J6p5NUW0LsbQBOH7dfXbPTuq1X98xUvAQ5kgFa)HWlEfhRt0LTBdvLtDy(NIrmfnYzUeVVWN(X5i0e3bxC5h)EYIlNyxz15iQr7FpXCKppyuZEd8pdGesj8UWtGcceQoXbaCinrASObbBZvZuycpqsndsFy7jyJZJiX2yton5(YW2VPqKCux(1J5LPhzzRZ)qp8lXLFuP6Hotd9UIpDpGBR4i2P0d5VMRq5zNUqE3)EBR3p9mjxqgTYPNr7OGI56uzJMn3yTdhwcI7xA7xUvLvRTCtPmUu6moRUQ17UoE)917)lDq1m142doKIw0XZ8WKMLUOKS0ta7aC4z(c7JQoVS167XRQ8JLYJsj5rLNsP9hdS6C0NOD8Oct)Z)OtIxt6X8TqPlY9(w3SUyx9Z4wEYlD4UGFd)RFS4IRVuhr7o)kONRFj3V(qDtfX3fw9DXgdiJbn)AUFDf(3DN7)AmXxugSl736AhAztHTPXoW99pHFI52E7VlZeo1ldz9lpXU)7h)Fd

!WA:2!nRvsVXXX1Frr4yNbgb20ocj2YoLNeQmteLeNfU5ybhodhksjU5HdJKnTZWE6UMPlZE6Qr31Wf9h)nIjYbFjx4HaKl5a)iWl5QHULdgOnroNd8q(aOpb5vv3tVwnPLSIr0cz1v)QQEVFV1QQEKfhR)yAJP9vp4eIk1Ct6aBv8O2hSE3Uoy2sFTZg)5)4vUYvSp0VJFx3V9u45RCQIPQo1EdkXK1PEJ1A1OPfsJ4yzOCyl8bS2DP29vyTTAZi9X(pns5b2gwxxNXSCE)7CN9v6rVnHENf6)OopyplNp5oLNTgNl25P7IXwZ7yHvznvyeQ(r7tT1EOTI1rp0VXjAyhf2aBfgwVwxQjZ61w0M8y0hnqrd6ub1QvndQI2F54bo42M49W26Dykgyt21A2FGbJKRgFbUM7BK7PCsWMQ0bMmSnrtxmgvdfhNDoN3ei0Wyxt6(M70u09n64qm7zG7S5sZV68RbZXjH08k)JvR5qEmMp1N5OROr3)rEW3lzLxcgv52XrPtSX9iuZwhAHD)XwVPkLAatHjFilqCu6yG10pHrvbrYbO7v27RBQyyPRmAha76s6LZ6TLSk19BuZKAIp1NGLHr8ZU6B(o20bmdIj2E9TATYYR1Odx3S8chhOAAQsnO23Fu4pNOoWHr7ZNBR)A3bMQGcYSqrecLd(pI0fPaQfap372od61d7WFp6U3fLppIPJnfuX)Jng0FMEJcB4Gt(cjtZeb9XiQayhmeVjXut87CqdFG)J9a(RFLZgcJBUpXcVJ1RfkfBzPbwrnbtet2tgswdTEy9Jy2eyPTD(B3W2V5xD9NimouCyCfKUTqVVS2ROEZJ04MJaxwBYBpZuN1dd4jrDtD6(RBEUJ4x19N9J4ZXatcBNZDg0rSYByJ7soO5MB0yLvo1J5ARt0Wn5MgA(GoxFzTAiONcX5Upsr5yueGwW)bhPod62Llm2l1yLnwCRGLNXTalDMnwXytUuUMsF8XRsm1qlc2oh7mSp3f74nIdU27nK3qfes1eiUuobAOucT4JIO5X6guvfdexcr3fDpmRf0Qq0x1tvdEtbhSbelOq1j4ej4LLn7slm7KtwTyXIO7Gkn5KtMlWqiYeeWpGvqODKIPghhkiyM2MGmumaWKA9IcPmnHcqhiXJjRKGjLmFfdxnjUlcFLfTXy09QVaAL1xjHFJS1UuLPlxUuajd9eIyaWShGJ7LW)XTUfQUowDxoFiereXbbZy9fKHHQCsv1kGpWI4zQhtqc7MlcMede1orNtMwusYFPchi6iYSe9HBjmEIrACg5dURWgk1QM1kNe9g2ojQTQcWJmBAFeOPn1W2OvO9iQWRg6tYn8fQsEGwSDEey0HeobIE3ATLB1E(TAoFcTBqdyrwIUpQ)av9iR2(yupk7ddOkHgQhM1FiTomf1DDkumMSbjbqeUbZeOQtI0OPafVjKBOpbQ9eirsrG(TaPPgeNOWqXzcezcu(nwz(pUrZ8ftnnaaWNdHOgY9peRyrnZlxDerLiw1ueevVKLEkjewxXqDGbeFhmPreWFer7cM8ket0kKE6mtipEcWuL)wvTj8AaOOnZV9Wa8bditk8cNjccmmMFH8jw28XCEkKy83fnDX04KpVbtF4sJUzgCxkVOmgn4GCP44cyvizeNrVbcsLHyuE8cWIoq5gvyKzgYfPPslrCdfklmGw4488RC2om(iho)m5gpW0mm6KVuwmBRmEWozPdsRHYEoUOaizzWkvPCPmva7GQrny)xHNEwCSsgjCnQ5TcuApxrbf18uF(nHwBvVEJgl0ybp6IR59RaBB)kisyiiRAXuPjZdHTYNxYyeP(UB8e3XQujM)qSamdtFc1ebX7GY94pksIcfa2)WSIulSw1OmELZFVIqh8VWSE8YOI(o)43liQ0RqEWThCqFwIGhr2U8G3sn9EHf7wWeojqvhEN8q2Ig(bKfTtfumtkKgYoQGhpCDIXkpCTpFXlomyzHaUY5SurgYy0Fxcxlh6yWoab3uYU4K4h)nc8ZJep0H3on(LffsXVilzs8l(yVlAwz4NhFXrGGLLJFs5S04N8r)CJFlsSXq4U9usGEMqxCWJ)BFKH3mfdMX7LB4nCTsaBXhOCRop(bM2GfeKAPCukit6qFUbSvu2tb(HJEcaZa6Idy8F7di8MPyVmEVualyTsayXhOCaZJFGPnybbPwkhLcWKo0lfWKxzfuBp4OpWqZZFxKcCFDcu)p1eZR4AqKfpzDtEHiU8ILIuOKF8LIzwrfFbIKN6zVEQyHp)Ex3c6fqXunanK(lmo6fsAUqdapvS040XoNar1kFbKxoA41lwv7fkmBvTC0kw47F4s8VHHIkgP4fWTfLH7NPzFxGegNIVBM(8ZyItnVcPvWDzfkvmJJL4cXLvv61xXJZ(HexKfQiDsPmeZVqQyk3Ukm7ZLUBlVmgpxbhctX9)goIbPq4h62L45fMU5c978sp8S62fjx2pqgxzRKIEoKf)oE6DzULrOrnXPkV0Pb3RYYA6bhc(MW(tihCABVnd2A(MTo37KLxWprS1)kXHFhEcYqY3(wpxhJCLQZvk55iNwRN9nyuAIG1)MLY86maEicDdlrik0KlxUM8TC5KZT0j1P97OW47N2615yvSRtyNJgEbe2Q6kMMyJZcWt(jYVJhC6yL5gSNi48h9VAb(WU6t1oeyaI6q4ENJ8vro5e3jgZwrD3DQX3uFhVn0F8at)9LFn3LU6nCR(VDVV7N6UYvDV3iUn3XTuT6aN6(PnvSXMkUngXDRDCFGU7hCv35CFF3F7oUBVJBn36U)HC8lL6ZfA39adeRX8VHgVzxCUcw3mq77VOEk5aJqVdiO0NXrtRxxrmv(tWQun8OsVzml)gUF4tj8la0uX437D1A7ESIjPVajMUPO4UfbPB8NGvCWBYabQht)LpByrII7lX2bd(nAohXPrCfEJxRVcXumqxYl7(5U76A4oENUetIJEYUR9ykT)iwxxcBQwEiFo(PrED(XvpLxVTThFMZ6DKm2Y3ouiTgxcbvhEhKw2qogUSp6jGtztXnr68(xZ9(Nbp2b0(9SPdm1(QFH1ym(4JD)MJCSOp(poEC1sGMzC1YwVDqNbIYTlfilwOuV2Nv6t1AZVF3DSETilvDXfroYiJm6zE3b9W1(CpIWgDf3kDT53Q16wVHOtLbGHeapQpKOX0Rnp84t9wqYbynrNFP1Vkl(Wa3tr9W2DnOuBDRFEAPjqwEIO7phSBjDp09LoXMYa(NJZ1wB91AizSHQfFPX)clhX6TsVoHGM79Tb1b)L(QHyqXp9erFHxz7X(tJj78nAH2uX0bTMITnD)ZcEHWuTqSz7IyLqBrVPy49Z7(QEyWEGnuhJavxKVwGtxFRwnA2U5Y3BPwXSHcwU3nlfH)9JhY0BsEmUOvXSO3pywBMUngQwYq7qR3llAdT77EwhqyW2TPE8ZP(pYVs)rFI)dQbwHN73ZqjEi5yniOtj0gGfMH79pM79iErhDm)8C)OZJBu6(LNeAm(NE1ooIVeJoK(wuB2rHcRSpGaEUGiae4tL)ICX9HrPXbQKooqZ95S0hzngKay42THGPn5EM2(FdcZjnWAOJXzGWcgaRBXdr5KZ6Mz)PIKwPz77qvBLgl2Ywre)3zAx9C1GqOSB4U0b)OFcu9gS9E(Z8ZEoN0dogQa4)l2jxNCFwBxAMktx9Za64LZmrmAJStwpARox5kLJt72LNQ6uZKSV5kxEw5ZzK9IgoNLsmEEFtkzDsWNBxAYQLYI3JTfHTNU00vNl1mov1zK030YNX4xjriJoReMp90wvYYxTAgGKS7QJpVZibuQkrHuzUmeHyNn12tpzPjRiNYiB2ZJ2PMDMkjHFEFLKpEXirBaMZqf2(R20ZMIx59vrsFvVmvWM6eSHwaWmReGzgjaZ0zampeCSTJpPZm30jN0kvaFLKtka2zOfxG2Rh1x4NQ0uvYaQ3uxPpuYf4URIAQ0Z3TSYKZwo5a()J6Klo6R4U3Bd7CH6W8pPNemASZLk57IEcrxWIM6EktU(jVlXKRtIR17cwQWZ4iLmYLdg1S3a)Zjj1Qe9KksHcceQj2baCidDwtXMyfBoBMXKWdU0Wa3h2VbStRlGiXw9tlMCBzCxgfsLG6YVcrVYbqw2e(hdJFgg(XjtICUpKUIV1oy2w2rStUhWFSqPQZmvPIhRrB7T7HDCnVM7Fx)4GYc7uB9wTwFvRFz2zGct9zDRlkfPKYlKw3EKADV1fLxo981Xb3hK)oLUn835KMWUC6e25jAwV7AkhCaP)V2b1WuNRB5Qh08oEQAM0njujYMeoTRnyzb7XrHPm6t9kFBrEx86e7Sz9MnASMuPP8fGo5Vi69RkbS04ACSUuwSAuwm5(boHVXlIO6G36gnfNaZ0UvN4khThy)Y)Sjlp)Al0r0VZVbEZ1VI73CeXuvSr7M7Pymapc09l5(n14FTEUF7iInx3d78wx7ilBkS5o2HU5pA4NiOE5beTt)KIR0BQdM)rn3vDmNMvbnv1X27F(O)Zd