import { Controller } from "@hotwired/stimulus"
import "../src/jquery"
import "jquery-ui-dist"
// jQuery,jQuery-UIを前提とする　ファイルをimport
import "../tag-it"

// Connects to data-controller="tag-form"
export default class extends Controller {
  connect() {
    const tagForm = this.element.querySelector('#tag_field');
    $(tagForm).tagit();
    $('ul.tagit').addClass('form-control w-auto');

    $(document).on('keyup', '.tagit', function() {
      const tag_input = $('.ui-widget-content.ui-autocomplete-input').val();
  
      $.ajax({
        type: 'GET',
        url: 'fetch_tag_suggestions',
        data: { tag_input: tag_input },
        dataType: 'json'
      })
      .done(function(data){
        if(tag_input.length) {
          const tag_list = data.map(function(val){
            return val.name
          });
          $(tagForm).tagit({
            availableTags: tag_list
          });
          $('.tagit-autocomplete.ui-widget-content').addClass('form-control');
        }
      });
    });
  }
}
