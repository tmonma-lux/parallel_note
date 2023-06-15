import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="phrase-form"
export default class extends Controller {
  static targets = ["formWrapper"];

  addRow() {
    const row = this._createRow();
    this.formWrapperTarget.appendChild(row);
  }

  _createRow() {
    var row = document.createElement('div');
    row.classList.add('row', 'mb-3');
  
    row.innerHTML = `
      <div class="col">
        <input class="form-control" type="text" name="note_form[phrases[][expression_en]]" id="note_form_phrases[][expression_en]">
      </div>
      <div class="col">
        <input class="form-control" type="text" name="note_form[phrases[][expression_ja]]" id="note_form_phrases[][expression_ja]">
      </div>
    `;
  
    return row;
  }
}
