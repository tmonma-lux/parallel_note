// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

function changeText(event) {
  event.target.classList.remove('mask-answer');
  event.target.textContent = this.text;
}

document.addEventListener('turbo:load', function () {
  const answerboxes = document.getElementsByClassName('mask-answer');
  for(let i = 0; i < answerboxes.length; i++) {
    answerboxes[i].addEventListener('click', {handleEvent: changeText, text: answerboxes[i].dataset.answer});
  }
});
