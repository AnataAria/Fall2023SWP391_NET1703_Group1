import { PUBLIC_API_BASE_URL_DEV, PUBLIC_API_BASE_URL_PROD, PUBLIC_API_BASE_URL_QA } from "$env/static/public";
let apiBaseUrl: string;
let BaseUrl: string;

if (process.env.NODE_ENV === 'production') {
  apiBaseUrl = PUBLIC_API_BASE_URL_PROD;
  BaseUrl = "http://http://anataarisa.hopto.org:3000/"
} else if (process.env.NODE_ENV === 'development') {
  apiBaseUrl = PUBLIC_API_BASE_URL_DEV;
  BaseUrl = "http://localhost:3000/"
} else if (process.env.NODE_ENV === 'testing') {
  apiBaseUrl = PUBLIC_API_BASE_URL_QA;
  BaseUrl = "http://http://anataarisa.hopto.org:3000/"
} else {
  apiBaseUrl = "http://localhost:9090/api/v1/";
  BaseUrl = "http://localhost:3000/"
}
console.log(process.env.NODE_ENV)
export { apiBaseUrl, BaseUrl };


export const apiCurrencyExchange: string = "https://api.exchangerate-api.com/v4/latest/USD"
import axios, { type AxiosResponse } from 'axios';
import Toastify from 'toastify-js';
import "toastify-js/src/toastify.css";
export const emailRegex = new RegExp(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/);
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
// function getUserCookie() {
//   const name = "USER";
//   const cookies = document.cookie.split(";");
//   for (let i = 0; i < cookies.length; i++) {
//     const cookie = cookies[i].trim();
//     const cookieParts = cookie.split("=");
//     const cookieName = cookieParts[0];
//     if (cookieName === name) {
//       return cookieParts[1];
//     }
//   }
//   return null; // Cookie not found
// }
export async function Logout() {
  const jwt = GetCookie("USER");
  if (jwt) {
    try {
      await axios.get(apiBaseUrl + 'auth/logout', {
        headers: {
          Authorization: `Bearer ${jwt}`,
        }
      }).then((response) => {
        if (response.status === 200) {
          RemoveUserCookies("USER");
          window.location.href = "/";
        }
      })
    } catch (error) {
      RemoveUserCookies("USER");
      window.location.href = "/";
    }
  }
}
export function GetCookie(name: string) {
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

export function RemoveUserCookies(name: string) {
  const pastDate = new Date("Thu, 01 Jan 1970 00:00:00 UTC");
  document.cookie = `${name}=; expires=${pastDate.toUTCString()}; path=/;`;
}

export function ShowMessage(message: string, duration: number, notificationType: number,  gravityCode: number) {
  let styles;
  let gravies:string;
  switch (notificationType) {
    case 1:
      styles = alarm;
      break;
    case 2:
      styles = ok;
      break
    default:
      styles = ok;
  }
  switch(gravityCode){
    case 1:
    gravies = "bottom"
    break;
    case 2:
    gravies = "top"
    break;
  }
  Toastify({
    text: message,
    duration: duration,
    destination: "https://github.com/apvarun/toastify-js",
    newWindow: true,
    close: true,
    gravity: { gravies }, // `top` or `bottom`
    position: "right", // `left`, `center` or `right`
    stopOnFocus: true, // Prevents dismissing of toast on hover
    style: styles,
    onClick: function () { } // Callback after click
  }).showToast();
}

export function CurrencyHandler(value: number) {
  const formatter = new Intl.NumberFormat('en-US', {
    style: 'currency',
    currency: 'USD',
  });
  return formatter.format(value);
}

export async function AuthorizationPage(roles:string[], unAuthPath:string, authPath:string){
  let jwtData = {
    email: "",
    roles: "",
    createDate: "",
    isActive: false
  }
  const token = GetCookie("USER");
  if(token != null) {
    let header = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": `Bearer ${token}`
    }
    try{
      await axios.get(apiBaseUrl + 'account', {
        headers:header
      }).then((response) => {
        if(response.status === 200){
          jwtData = response.data;
          console.log(jwtData);
          console.log(response.headers);
        }
      });
      roles.forEach(item => {
        const compare = item.localeCompare(jwtData.roles);
        if(compare === 0) window.location.href = authPath;
        
      })
      window.location.href = unAuthPath;
    }catch(e){
      return false;
    }
  }
}


export async function AuthenticatePage(roles: string) {
  let jwtData = {
    email: "",
    roles: "",
    createDate: "",
    isActive: false
  }


  const token = GetCookie("USER");
  if (token != null) {
    let header = {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "Authorization": `Bearer ${token}`
    }
    await axios.get(apiBaseUrl + 'account', {
      headers: header
    })
      .then((res) => {
        if (res.status === 200) {
          jwtData = res.data;
          console.log(jwtData);
        }
      });
    if (jwtData.roles !== roles) {
      window.location.href = "/";
    }
  }
}

export function IsLogin() {
  const token = GetCookie("USER");
  if (token != null) {
    return true;
  }
  return false;
}

export function DisableSubmitButton() {
  (document.getElementById('submitButton') as HTMLButtonElement).hidden = true;
  (document.getElementById('loader') as HTMLElement).hidden = false;

}
export function EnableSubmitButton() {
  (document.getElementById('submitButton') as HTMLButtonElement).hidden = false;
  (document.getElementById('loader') as HTMLElement).hidden = true;

}
export function hasUnicodeCharacters(input: string): boolean {
  for (let i = 0; i < input.length; i++) {
    if (input.charCodeAt(i) > 127) {
      return true;
    }
  }
  return false;
}

export async function CurrencyExchange(amount: number): Promise<number> {
  try {
    const response: AxiosResponse = await axios.get(apiCurrencyExchange);
    const VNDRate: number = response.data['rates']['VND'];
    const FromVNDToUSD: number = amount / VNDRate;

    console.log(`VND: ${VNDRate}, From VND to USD: ${FromVNDToUSD.toFixed(3)}`);

    return FromVNDToUSD.toFixed(3);
  } catch (error) {
    console.error('Error fetching currency exchange data:', error);
    throw error; // You can handle the error appropriately in your application.
  }
};

export async function VNDRate(): Promise<number> {
  try {
    const response: AxiosResponse = await axios.get(apiCurrencyExchange);
    const VNDRate: number = response.data['rates']['VND'];
    return VNDRate;
  } catch (error) {
    console.error('Error fetching currency exchange data:', error);
    throw error; // You can handle the error appropriately in your application.
  }
};

