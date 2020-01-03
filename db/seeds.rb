counter1 = Counter.create({name: "Halo Reqs left", amount: 30, description: "Halo unlocks, ultra rare to legendary"})
counter2 = Counter.create({name: "Dark Souls achievements left", amount: 24, description: "Gold trophies, got all silvers and bronzes"})

tag1 = Tag.create({name: "Games"})
tag2 = Tag.create({name: "Fun"})

countertag1 = CounterTag.create({counter_id: counter1.id, tag_id: tag1.id})
countertag2 = CounterTag.create({counter_id: counter1.id, tag_id: tag2.id})
countertag3 = CounterTag.create({counter_id: counter2.id, tag_id: tag1.id})
countertag4 = CounterTag.create({counter_id: counter2.id, tag_id: tag2.id})