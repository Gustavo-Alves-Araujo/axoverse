import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
    console.log("resetting form")
    this.element.reset()
  }
}
