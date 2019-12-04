counter1 = Counter.create({name: "Halo Reqs, Helms left", amount: 30, description: "Halo unlocks, common to rare only"})
counter2 = Counter.create({name: "Halo Reqs, Armors left", amount: 24, description: "Halo unlocks, common to rare only"})
counter3 = Counter.create({name: "Halo Reqs, Visors left", amount: 15, description: "Halo unlocks, common to rare only"})
counter4 = Counter.create({name: "Halo Reqs, Stances left", amount: 5, description: "Halo unlocks, common to rare only"})
counter5 = Counter.create({name: "Halo Reqs, Assassinations left", amount: 2, description: "Halo unlocks, common to rare only"})
counter6 = Counter.create({name: "Halo Reqs, Weapon Skins left", amount: 19, description: "Halo unlocks, common to rare only"})
counter7 = Counter.create({name: "Halo Reqs, Loadout Weapons left", amount: 22, description: "Halo unlocks, common to rare only"})
counter8 = Counter.create({name: "Halo Reqs, Emblems left", amount: 53, description: "Halo unlocks, common to rare only, but might not all be unlocked from boxes"})

tag1 = Tag.create({name: "Games"})
tag2 = Tag.create({name: "Video Games"})

countertag1 = CounterTag.create({counter_id: counter1.id, tag_id: tag1.id})
countertag2 = CounterTag.create({counter_id: counter1.id, tag_id: tag2.id})