chair = new Backbone.Model({name: 'chair', my_things: new Backbone.Collection()})
things = new Backbone.Collection([{name: 'leg1'}, {name: 'leg2'}, {name: 'leg3'}])

available_things = kb.collectionObservable(things)
view_model =
  available_things: available_things
  name: kb.observable(chair, 'name')
  my_things: kb.collectionObservable(chair.get('my_things'), available_things.shareOptions())

ko.applyBindings(view_model, $('#kbco_share_options')[0])