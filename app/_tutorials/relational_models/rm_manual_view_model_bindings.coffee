bob = new Backbone.Model({name: 'Bob'})
fred = new Backbone.Model({name: 'Fred'})

house = new Backbone.Model({
  location: 'In the middle of our street'
  occupants: new Backbone.Collection([bob, fred])
})

bob.set({livesIn: house})
fred.set({livesIn: house})

view_model = kb.viewModel(house)

ko.applyBindings(view_model, $('#rm_manual')[0])