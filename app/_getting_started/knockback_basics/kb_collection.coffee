earth = new Backbone.Model({first_name: 'Planet', last_name: 'Earth'})
mars = new Backbone.Model({first_name: 'Planet', last_name: 'Mars'})
the_moon = new Backbone.Model({first_name: 'The', last_name: 'Moon'})

planets = new Backbone.Collection([earth, the_moon, mars])

view_model =
  planets: kb.collectionObservable(planets, {view_model: kb.ViewModel})

ko.applyBindings(view_model, $('#kb_collection')[0])