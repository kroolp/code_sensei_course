function welcome() {
  var name = document.getElementById('name').value;
  alert("Witaj " + name + "!");
}

window.addEventListener('load', function() {
  var press_button = document.getElementById('press');
  press_button.addEventListener('click', welcome);
});
