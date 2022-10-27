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

!WA:2!1QXsZTTXzlRXts5KdjkPAAtCs3Ww5swlzl(qVsJAQifLLSPEesQANOKkbcSKyJabWaSupCNEiA6HCiN0HotV0d6NGU0RD8TEiZGOPN7bDO)a8VG(TlEdSqwj2v2sCXIV979RDxoYkJnymLXu(MhDgr2qVTXqlz8OwhTzVE2y63oU1XUJw93377p)gWpNlPlRAyTLbrN2TEJn60OLjsHyBQjDCh8r0D7zynqIUR5UuYaS3tJuEOLM5TvPut7p6(3)qP(g3JyC)Lh8KUp6at7p)(LNVgJ87989XyZLSnXY0wsuIH6jhAyP8yljZtES3GZuW2s0HwsuSATEg6uZ3CflYtrF6qjfysjuNo10mKu(RNo0gVRo(aSLAxQKgwNoERbd1OKC1yeyCN3o3ZzGG1LngQtXwefv(AK1KST37s2qaqnT91nouFVw8PVtxBIEFnC32RU06lTbGJZcH51)xRxZM8umd1xyRkPyC4tCvF3YmVaDuL7fxlDMfUpXqVZXMyNFI57iByObOqNTKLj2sD1WkQNrnKbrYgG71p4F2ssZuvA0UGURhPFoZ3tavQ7nOMUHo(CpawdwXp7MVZ7BzmKQr0XwBUDNMRTrJUmBZAlFAGPPLSHMH1dhf(5m5H2uJbmCB(36nuxgmq6fkIqOCWVispKeywa95b3ZEy)(yB27rlUikFEevfRZHI9JfgSF6URcRzJt(cbOzYG5OezqzhSexKORW)mhmWtX)zUk(BFJl8vJTpKyI3Z8ndLITnvaVOwGlIo9z(G1qPpw9eQfbiTL9F)owEd)MB)mUZHKnLzGuT4291uED57EIcZDe4YAtFV5M5I(yqFsKBRAC4M6xAZ)OUh2pHHJH6e6ExApSlNYBzH7roQv7TA0Sj4C3DyVEmcyTAJMBTY2n906mdM56HA9uQCw8Jq1CmicuxWVNYLGnKgGpDDIUcAfWV4CxQTlL5dw6clSKwBFOCQ7)wvIcUfZZvPR7mhn(h6ZAOcCPAsetkNe5lLWigEikUCUMHSKgIHc0IOhGPDGrfI(Q(YkWBkyJ1GCbfQojdioNSMEpJcZp90vlwSi6(Ostp905cCeIGGa(b8cc9JK0vyQHcCMzxDqQkgOVe69IcHmaWRWtFflmg9G6lJAUzZeE9Xib3ATiQuLzlxUuaiXcgebVN6Osc1HaUPyOC5hDeXNGAnehpYH9NPMcvxflVpta5InIyJa6wFzr6vzgOYkfWhzsCD)lgvdfontXOt0qgwjMC60kOK8NqTsuSe9HP4ouXanoJ8XlY9Rsr1SOCsTN)4KAT1LaEKAzmab2eDfSfQPrFIm8k)WuwWa3bHL8fBLhboIiEGbF2T3yTo7U02TwkHptWaGiRACiAWqz1iu7qmQVb9tcGkHfQpMoWhwBQK8(2fkgt2GcdicZnCsu1PrkgPukUiK58pjA3jr8cLa8BdstnipvbFXzsezsu(TAU0N1Ov(IPqdOay4GlQHC)JXsMg65fBoIys4unfarTlzzNsQcRlPjpudY5dU0ice5Gm6bU8seDutsFvQouBpHYuM9wzLjDhaArlQ3y)K(blitiCtXXdx9RduiFcYMpwWtHeRFr0SftRN84na9HKgD3m4UurrzSAia5fQhxgldvaym6Dqq5ne1GLVa8OdmUrfgrUHmrAM0seZrXGgM2lCDUXv27eMQJPo)sXopaA8Zo5jLfZ2lJLStujI0wOSXXvLajlhwHgLxitfWoOAgA0)VWt)qcSsMjCdd9PcmA)OYcY7dQ(sTHrBxVEJgl3yzx4IB596kBhVUks4iiQdYuftZdPTYNxWA4L(wmEj2yDVelEiwcg)YNqVuq(oOfq2J8IOqtHdooRm1CVvfdkRB6xQm0b)pSQhR1QOVZl)9Y8onlKhc7Ha0FizWJiBV4K3cD9ELL7MZe2j0Q2SjzPS5d8siZhNkPyMqimLDubpE66eRvC6Ap(I1gxazHeUI5mwMH4nAYxZ1l)xiL4DyFx0S5EHzDYG7Iwo4LZurHDHcPfi7JtAVyVHBVCbX1AWgN2ELfecTxrizs7v81UiAEr2lx(IPrcilZEjKZy60yMl3Kiq4suU4QiINPA(SRyNbdDDQyhAsyjNiwyuhdkEq0MJH0uAyBBGfLGnngdREzRGLrzRIZcSnTXEGLEPjUhTqPIxFNbohSHXbsjiHomfZtG9PNzMnmL2oJ3loQ1Nwj8bIVWfrve4c4YpaAdiiOVfYrzB)dP)vGFpJFLSn(czLFyM(igGMshib)XwnHbqdMIzayF6PGzdtjUz8EHgGaALWaeFHIZz6YpaAdiii1c5OSnaH0)kWFQeLPmaczLxObiEBZuS1aIogDOQeLfWjBmG1k3qt0HeQkHFaoiD8ru2ziiQSwFVg2DBU1lNDrrjutaPBQJIzfs7cD0iCyVYLeeDghTUoLff4efhoxDN4eeTDBrdTKBRqSoEsPbyTd7l(zTPHi9qL1Mce3sDSY6VIAOruf2mzGgGVK6RygiAzA3iJaVcrkqXmwScOVehBIldeZz76ZeRl1FGKB5QxbmHVp81N(rQF8stD)iJRp1JK88LJ6xtHn65xw8L6KYIThr43A8ZuE1ZdUxL1uudoe82WErihD(UUB8RZsT6CP7jlVSxEEZ)tIZ(o8eKHCXdm)rDmYvQUqPKNJS4AiIVbJstgq)7wkZRZa4HiW5xXi6DwKlxUwSTxzNZP0z1ng0fQoa7D28Ty6QyxNWEN4FbewYqFA6yTlc0NSZOFpx1PTzMBMEYGZA07Mfyl7Mpx5yGbiY(Q79oXZezNJFNyulj593RgBd8DD38(Pd192d(4oREZ74u9)68qNVWP5nDQnItR9CkvRoWPo)29CAmIZ2758ivNVOLKfwxYzbNpY5JVPZo7587C(eN)yo2Ls9vCR7bGdI5yE3qJl25NHG5DdS(Ee11ih4k6EyaL(sM208TK4OYdbRBOGhv4nJz6nW5bpNWUaqDjT)G7vRT)Ps6KbCnXST416xbKUjEgwYg3MccrFQ6RDHFpi8BlXYgdrqk2NWGHFfEtuBGerNVqhYR58vo77O5mr3EeDITAYPR9udJbJyEBbSPCzF(CIZJ868tiFoRDolx(mN57lyTLVxOqAoHaaQ6FhKMwyzct2h9miOSf)MiT)OXDE4fWJDbRFFlJH6kFZVWCmkB9XUFZroLph7pNoHCjWYmHCzZ3lyYar5ELcKftuQx7Xkdmu2LD)U7z(MrivD(froYiJm6fU3bTpTV0fiSwp(TsxBPT7SP5BZNuAi4ibQh5htuOQ1wcE85UeKCewHp5xB(RYIp0W9LKpE3EAggwQM)80stGS8m(0Ff43s6DSZToZYGc8ptpxBJn3OHG1gAw8KgVlSCeZ3nnDcvAop0cmhSx6zgIPk(PNXNl8kBp1dn60l3QdQTKUnAdjllJdVi4fCx1cXW2vXkH(IUOW)(5DEdxDWbGpuxTatxKVTaNV52DA0A3wR9Gv7eZhkGCFqwgcV7hpKPBtEkUOzXSG3lz2Uuvlm03OMYXMFywWg6337IUGWGT21WLFo37r2v6p6Z8EqoWl8sVz8LyFWXkqsNsOTapmnNhEkl6H)IUQy2z3(Pxg3P05Rpl0z8V8gDT5Ffm6sgyAyrpjuyf9fiGvliIccIPYFvH4EQrH5bQKopqRdzS0NAoguaWF3CqY0wSitlVVdclimXAyGXfGWcoaBAYsrzNZ8Uz)vfjTrZYlGQwZgR0XsIN)3Ewh1C1GuO074S6r36BHnqWo7c2blp1u5Yj8qIHoa(tXoL6KNf1oLMRYSv)s22aHMAMmgSr2DGlSvxOCLkXHLpx5eZvEMQZmxY5wOC55ftNiBcieNLeqNPfqNe8(oLMUAPSKNyh9YoZwA2uCjmx1fsrLzQoNG5MvmvIFnfHm)8ceO0OTQaYxTAgkor3FhdVZjq5nNaLxvbgUklKHyf7yt2z2PlnDfXqgzxlUWoZ8ZvjPzInxjXR39452ccfG(09O2SZNIxzZvrWCjPuLzxOYl0u1wLG1ucuwZlqboVaf4CcuGZMHc8XqYdR4eAUfMnjsRuzUKC7oLbJsgEalB0VVHNsAMsZujdtsBvPbqBDqkfzulP(EH(vME(YjxWFoAIe(PHhpfYoW(KmSPEBzpbJg78es(UOB1)kiAQ79mj9tE3KjPtIRjmnPYXS84EudiroQh7Y6ClgJmTiStJXl)o7ScjrUqwsp(30naDRzZ3h1JypwOu15MPuXtvm21T399C0h35FOEAqtzDRTzNoBUU5Vm78)HfEmN6QkqjO4UWUMJ0P5uxvvX04RRnEai)DlDp4FliSCz50LlZtum)GnKo6iYGFTnQHoS9mz8a2DBUKTn41jPtf2IELiTOFEplW3b2HHevA0N7280kSPyDP1TD9wnASHqPP8vODYFvW71tGfrNzXXQczXQrzXKDJFgBBpeET539oT4Nc3SovN8gNCGKfH9LwS8sBSCx(82)g4n3(goF3jeDz(2CBDGK2q8iW03Y57QX(UY589JW3ABFS97o(jMwgWwROh7K)e)VGEQLhsuo)Zl2S)mhT0tATV8y2TQcwQQJDW)(j)V
