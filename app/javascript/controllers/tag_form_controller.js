import { Controller } from "@hotwired/stimulus"
import "../src/jquery"
import "jquery-ui-dist";
import "../tag-it"

// Connects to data-controller="tag-form"
export default class extends Controller {
  connect() {
    const tagForm = this.element.querySelector("#tag_field");
    $(tagForm).tagit();
    $("ul.tagit").addClass('form-control w-auto');
  }
}
