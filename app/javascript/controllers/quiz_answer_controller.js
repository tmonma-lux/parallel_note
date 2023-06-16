import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="quiz-answer"
export default class extends Controller {
  revealAnswer(event) {
    event.target.classList.remove('mask-answer');
    event.target.textContent = event.target.getAttribute('data-answer');
  }
}
