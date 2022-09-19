import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Create your bookmark now!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
