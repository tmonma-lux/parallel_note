import { Controller } from "@hotwired/stimulus"
import "../src/jquery"
import "../tag-it"
import "jquery-ui-dist";

// Connects to data-controller="tag-form"
export default class extends Controller {
  connect() {
    const tagForm = this.element.querySelector("#tag_field");
    $(tagForm).tagit();
    $("ul.tagit").addClass('form-control w-auto');
  }
}
