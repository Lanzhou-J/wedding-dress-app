 import '@stripe/stripe-js';

 const button = document.getElementById("stripe")
 button.addEventListener("click", (e) => {
  // making a GET request through javascript   
   fetch(`/payments/session`)
   .then((res) => res.json())
   .then((data) => {
     const stripe = Stripe(data.stripe_public_key);
     stripe.redirectToCheckout({
       sessionId: data.id
     })
   })
 })