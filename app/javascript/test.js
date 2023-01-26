const { each } = require("jquery");

var minCount = 1;
var maxCount = 5;
var clickCount = 0

$(function(){
$('#demo-plus').on('click', function(){
  clickCount += 1
  var inputCount = $('#demo-area .unit').length;
  if (inputCount < maxCount){
    var element = $('#demo-area .unit:last-child').clone(true);
    $('#demo-area .unit').parent().append(element);
    inputImage = $('#demo-area .unit').find('#image_id_0')
    $(inputImage).each(function(i){
      $(this).attr('name', 'form_recipe_collection[recipes_attributes][' + (i+1) + '][image]')
    });
    inputTitle = $('#demo-area .unit').find('#title_id_0')
    $(inputTitle).each(function(i){
      $(this).attr('name', 'form_recipe_collection[recipes_attributes][' + (i+1) + '][title]')
    });
    inputTitle = $('#demo-area .unit').find('#form_recipe_collection_recipes_attributes_0_id')
    $(inputTitle).each(function(i){
      $(this).attr('name', 'form_recipe_collection[recipes_attributes][' + (i+1) + '][id]')
    });
  }
});
$('.demo-minus').on('click', function(){
  var inputCount = $('#demo-area .unit').length;
  if (inputCount > minCount){
    $(this).parents('.unit').remove();
  }
});
});