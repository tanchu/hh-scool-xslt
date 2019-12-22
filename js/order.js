
document.addEventListener('click', function(e) {
  
  if (!e.target.classList.contains('product-card__order-button')) return;
 
  let card = e.target.parentNode.parentNode.outerHTML;

  let popupCard = document.querySelector('.popup-order__product');
  popupCard.innerHTML = '';
  popupCard.innerHTML = card;
  
})

