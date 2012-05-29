// Generated by CoffeeScript 1.3.3
var ViewModel, model, view_model;

model = new Backbone.Model({});

ViewModel = function(model) {
  this.name = kb.observable(model, {
    key: 'name',
    "default": '(no name)'
  });
  return this;
};

view_model = new ViewModel(model);

ko.applyBindings(view_model, $('#kboo_default')[0]);
