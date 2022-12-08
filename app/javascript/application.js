// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "controllers"
import "@hotwired/turbo-rails"



document.querySelector("#rangenumber").addEventListener("input", el => {
if (el.target.value > parseInt(el.target.getAttribute("max"))) {
el.target.value = el.target.getAttribute("max");
}

if (el.target.value <= parseInt(el.target.getAttribute("min"))) {
el.target.value = 1;
}
})


function refreshPage(){
    window.location.reload();
}
