import './grid';

// скрытие формы и попапа при первой загрузке
window.onload = () => {
    const form = document.getElementsByClassName("order-form")[0];
    const popup = document.getElementsByClassName("popup-wrapper")[0];

    form.classList.add("hidden");
    popup.classList.add("hidden");

    let closePopupButton = popup.getElementsByClassName("close-button")[0].onclick = function(){
        popup.classList.add("hidden");    
    };

    let closeFormButton = form.getElementsByClassName("close-button")[0].onclick = function(){
        form.classList.add("hidden");    
    };

    let orderButtonPopup = popup.getElementsByClassName("button")[0].onclick = function(){
        popup.classList.add("hidden"); 
        form.classList.remove("hidden");   
    };

    let productCards = document.getElementsByClassName("content-section")[0].getElementsByClassName("product-card");
    
    for (let i = 0; i < productCards.length; i++) {
        productCards[i].onclick = function(){        
                popup.classList.remove("hidden");      
        }
    }

}
