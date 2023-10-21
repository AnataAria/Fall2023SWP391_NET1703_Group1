<script lang="ts">
  // import { USERNAME } from "$env/static/private";
  import axios from "axios";
  import { onMount } from "svelte";
  axios.defaults.withCredentials = true;
  import Toastify from "toastify-js";
  import "toastify-js/src/toastify.css";
  import { apiBaseUrl } from "../../service";
  let registerForm = {
    email: "",
    fullname: "",
    password: "",
    birthDate: "",
    gender: ""
  };
  let loginForm = {
    email: "",
    password: "",
  };
  let rePassword = "";
  let errorMsg = "";
  let jwtToken = "";
  async function handleRegister() {
    let status = true;
    if (
      !registerForm.email ||
      !registerForm.password ||
      !registerForm.birthDate
    ) {
      errorMsg = "Full Name or Password, email cannot empty";
      status = false;
    }
    if (registerForm.password !== rePassword) {
      errorMsg = "Re-enter password must match with password";
      status = false;
    }
    let res = null;
    if (status) {
      try {
        res = await axios
          .post(apiBaseUrl + "auth/register", registerForm)
          .then((response) => {
            if (response.status === 200) {
              errorMsg = "Login successful";
              window.location.href = "/";
            }
          });
      } catch (err) {
        console.log(err);
      }
    }
    Toastify({
      text: errorMsg,
      duration: 3000,
      destination: "https://github.com/apvarun/toastify-js",
      newWindow: true,
      close: true,
      gravity: "bottom", // `top` or `bottom`
      position: "right", // `left`, `center` or `right`
      stopOnFocus: true, // Prevents dismissing of toast on hover
      style: {
        background: "linear-gradient(to right, #00b09b, #96c93d)",
      },
      onClick: function () {}, // Callback after click
    }).showToast();
  }
  async function handleLogin() {
    let status = true;
    if (!loginForm.email || !loginForm.password) {
      errorMsg = "Email or password cannot empty";
      status = false;
    }
    if (status) {
      try {
        await axios
          .post(apiBaseUrl + "auth/authentication", loginForm)
          .then((response) => {
            if (response.status === 200) {
              window.location.href = "/";
            }
          });
      } catch (err) {}
    }
    Toastify({
      text: errorMsg,
      duration: 3000,
      // destination: "https://github.com/apvarun/toastify-js",
      newWindow: true,
      close: true,
      gravity: "bottom", // `top` or `bottom`
      position: "right", // `left`, `center` or `right`
      stopOnFocus: true, // Prevents dismissing of toast on hover
      style: {
        background: "linear-gradient(to right, #00b09b, #96c93d)",
      },
      onClick: function () {}, // Callback after click
    }).showToast();
  }
  let questions = [
    {
      id: 1,
      text: `Male`,
    },
    {
      id: 2,
      text: `Female`,
    },
    {
      id: 3,
      text: `Others`,
    },
  ];
  // function showMessage(message:string){
  //   document.getElementById(message)?.textContent = "";
  // }
  function getUserCookie() {
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
  onMount(() => {
    kickBackToLandingPage();
  });
  function kickBackToLandingPage() {
    if (getUserCookie()) window.location.href = "/";
  }
</script>