
var slide = 1;
showSlides(slide);

function plusSlides(n) {
  showSlides(slide += n);
}

function currentSlide(n) {
  showSlides(slide = n);
}
function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlide");
  var dots = document.getElementsByClassName("dott");
  if (n > slides.length) {slide = 1}    
  if (n < 1) {slide = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slide-1].style.display = "block";  
  dots[slide-1].className += " active";
}

