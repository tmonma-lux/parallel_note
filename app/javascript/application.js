// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function revealAnswer(event) {
  event.target.classList.remove('mask-answer');
  event.target.textContent = this.text;
}

document.addEventListener('turbo:load', function () {
  const answerboxes = document.getElementsByClassName('mask-answer');
  for(let i = 0; i < answerboxes.length; i++) {
    answerboxes[i].addEventListener('click', {handleEvent: revealAnswer, text: answerboxes[i].dataset.answer});
  }
});


function addPhraseForm() {
  const phraseForms = document.querySelector('.phrase-forms');
  const form = createPhraseForm();
  phraseForms.appendChild(form);
}

function createPhraseForm() {
  var formWrapper = document.createElement('div');
  formWrapper.classList.add('row', 'mb-3');

  formWrapper.innerHTML = `
    <div class="col">
      <input class="form-control" type="text" name="note_form[phrases[][expression_en]]" id="note_form_phrases[][expression_en]">
    </div>
    <div class="col">
      <input class="form-control" type="text" name="note_form[phrases[][expression_ja]]" id="note_form_phrases[][expression_ja]">
    </div>
  `;

  return formWrapper;
}

document.addEventListener('turbo:load', function () {
  const button = document.getElementById('add-phrase-button');
  if (!button) { return false; }
  button.addEventListener('click', {handleEvent: addPhraseForm});
});
