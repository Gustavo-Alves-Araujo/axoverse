import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    this.scrollToBottom();

    this.element.addEventListener('DOMNodeInserted', (event) => {
      const { target } = event;
      if(target instanceof HTMLElement) {
        if(target.classList.contains('not-pagination')) {
          this.scrollToBottom()
        }
      }
    })

  }

  scrollToBottom() {
    this.element.scrollTop = this.element.scrollHeight
  }
}
