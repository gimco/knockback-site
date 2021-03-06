people = new Backbone.Collection([{first: 'Jeremy', last: 'Sanderson'}, {first: 'Steven', last: 'Ashkenas'}])
sort_attribute = ko.observable('first')

view_model =
  sort_attribute: sort_attribute
  sort_attributes: ko.observableArray(['first', 'last'])
  people: kb.collectionObservable(people, {sort_attribute: sort_attribute})

ko.applyBindings(view_model, $('#kbco_sorting')[0])