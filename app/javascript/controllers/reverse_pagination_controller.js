import { Controller } from "@hotwired/stimulus";
import { get } from "@rails/request.js";

// The HTML code for the spinner.
const spinner = `
  <div class="col-span-12 container mx-auto h-24 mb-8" id="spinner">
    <div class="loader">Loading...</div>
  </div>`;

export default class extends Controller {
  static fetching = false; // debounce

  static values = {
    url: String,
    page: { type: Number, default: 1 },
  };

  static targets = ["posts", "noRecords"];

  initialize() {
    this.scroll = this.scroll.bind(this);

    this.element.scrollTop = this.element.scrollHeight - this.element.clientHeight;
  }

  connect() {
    this.element.addEventListener('wheel', this.scroll);
  }

  scroll(e) {
    const { wheelDelta, deltaY, scrollTop } = e;

    var delta;
        	if (event.wheelDelta){
            	delta = event.wheelDelta;
            }else{
            	delta = -1 *event.deltaY;
            }
        	if (delta < 0){
              // console.log('descendo')
            }else if (delta > 0){
              if(this.element.scrollTop == 0 ){

                if(!this.fetching){
                    this.#loadRecords();
                }

              }
            }

  }

  // Send a turbo-stream request to the controller.
  async #loadRecords() {
    const url = new URL(this.urlValue);
    url.searchParams.set("page", this.pageValue);

    this.fetching = true;

    await get(url.toString(), {
      responseKind: "turbo-stream",
    });

    setTimeout(() => {
      this.fetching = false;
    }, 500);

    this.pageValue += 1;
  }


}
