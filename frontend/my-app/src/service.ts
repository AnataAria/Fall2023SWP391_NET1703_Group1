export const apiBaseUrl : string = "http://localhost:9090/api/v1/"
export const BaseUrl : string = "http://localhost:3000/"
import Toastify from 'toastify-js';
import "toastify-js/src/toastify.css";

let headerRequest = {
  "Content-Type": "application/json",
  "Accept": "application/json"
}

const alarm = {
  background: "linear-gradient(to right, #eb4034, #d6261a)"
}
const ok = {
  background: "linear-gradient(to right, #00b09b, #96c93d)"
}

export function GetUserCookie() {
    const name = "USER";
    const cookies = document.cookie.split(";");
    for (let i = 0; i < cookies.length; i++) {
      const cookie = cookies[i].trim();
      const cookieParts = cookie.split("=");
      const cookieName = cookieParts[0];
      if (cookieName === name) {
        return cookieParts[1];
      }
    }
    return null; // Cookie not found
}

export function RemoveUserCookies(name:string) {
  const pastDate = new Date("Thu, 01 Jan 1970 00:00:00 UTC");
  document.cookie = `${name}=; expires=${pastDate.toUTCString()}; path=/;`;
}

export function ShowMessage(message: string , duration: number, notificationType:number){
  let styles;
  switch(notificationType){
    case 1:
      styles = alarm;
      break;
    case 2:
      styles = ok;
      break
    default:
      styles = ok;
  }
  Toastify({
    text: message,
    duration: duration,
    destination: "https://github.com/apvarun/toastify-js",
    newWindow: true,
    close: true,
    gravity: "bottom", // `top` or `bottom`
    position: "right", // `left`, `center` or `right`
    stopOnFocus: true, // Prevents dismissing of toast on hover
    style: styles,
    onClick: function(){} // Callback after click
  }).showToast();
}

export function CurrencyHandler(value:number){
  const formatter = new Intl.NumberFormat('vi-VN', {
    style: 'currency',
    currency: 'VND',
    
  });
  return formatter.format(value);
}
