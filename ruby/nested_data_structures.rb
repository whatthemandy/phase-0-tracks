mcdorman = {
  keith: {
    relation: "Big brother",
    family: {
      wife: "Rebecca",
      children: "Dakota"
    },
      pets: {
        dogs: ["Cooper", "Ziah"]
      }
  },

  michael: {
    relation: "Middle brother",
    family: {
      wife: "Julianne",
      children: "First bun still in the oven"
    },
      pets: []
  },

  alex: {
    relation: "Little brother",
    family: {
      wife: [],
      children: []
    },
      pets: {
        cats: ["Harley", "Zelda"],
        pokemon: "Charizard"
      }
  }
}

p mcdorman

p mcdorman[:keith][:relation]

p mcdorman[:michael][:family][:children]

p mcdorman[:alex][:pets][:cats][0]


