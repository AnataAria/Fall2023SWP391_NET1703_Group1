<script lang="ts">
  // import { USERNAME } from "$env/static/private";
  import axios from "axios";
  import { onMount } from "svelte";
  axios.defaults.withCredentials = true;
  import Toastify from "toastify-js";
  import "toastify-js/src/toastify.css";
  import { DisableSubmitButton, EnableSubmitButton, ShowMessage, apiBaseUrl } from "../../service";
    import { Button, Spinner } from "flowbite-svelte";
    import ToastShowMessage from "../../templates/ToastShowMessage.svelte";
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
  }
  async function handleLogin() {
    let status = true;
    if (!loginForm.email || !loginForm.password) {
      ShowMessage("Email or password cannot empty", 3000, 1, 1);
      status = false;
    }
    if (status) {
      DisableSubmitButton();
      try {
        await axios
          .post(apiBaseUrl + "auth/authentication", loginForm)
          .then((response) => {
            if (response.status === 200) {
              EnableSubmitButton();
              window.location.href = "/";
              ShowMessage("Login successfully!", 3000, 2, 1);
            }
          });
      } catch (err) {
        EnableSubmitButton();
        if(err.response.status === 404){
          ShowMessage("Username or password is not correct!", 3000, 1, 1);
        }
        else{
          ShowMessage("Internal error, please try again!", 3000, 1, 1);
        }
      }
    }
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

<!-- <link href="/src/theme/style.sass" rel="stylesheet" /> -->
<div class="min-h-screen bg-gray-100 flex flex-col justify-center py-12 sm:px-6 lg:px-8">
  <div class="sm:mx-auto sm:w-full sm:max-w-md">
      <h2 class="mt-6 text-center text-3xl font-extrabold text-gray-900">
          Sign in to your account
      </h2>
  </div>
  <div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
      <div class="bg-white py-8 px-4 shadow sm:rounded-lg sm:px-10">
          <div class="space-y-6">
              <div>
                  <label for="email" class="block text-sm font-medium text-gray-700">
                      Email address
                  </label>
                  <div class="mt-1">
                      <input id="email" name="email" type="email" autocomplete="email" required
                          class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                          placeholder="Enter your email address"
                          bind:value={loginForm.email}>
                  </div>
              </div>
              <div>
                  <label for="password" class="block text-sm font-medium text-gray-700">
                      Password
                  </label>
                  <div class="mt-1">
                      <input id="password" name="password" type="password" autocomplete="current-password" required
                          class="appearance-none rounded-md relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 focus:outline-none focus:ring-indigo-500 focus:border-indigo-500 focus:z-10 sm:text-sm"
                          placeholder="Enter your password"
                          bind:value={loginForm.password}>
                  </div>
              </div>
              <div class="flex items-center justify-between">
                  <div class="flex items-center">
                      <input id="remember_me" name="remember_me" type="checkbox"
                          class="h-4 w-4 text-indigo-600 focus:ring-indigo-500 border-gray-300 rounded">
                      <label for="remember_me" class="ml-2 block text-sm text-gray-900">
                          Remember me
                      </label>
                  </div>
                  <div class="text-sm">
                      <a href="/forgotpassword" class="font-medium text-blue-600 hover:text-blue-500">
                          Forgot your password?
                      </a>
                  </div>
              </div>

              <div id="submitButton">
                  <button type="submit" on:click={handleLogin}
                      class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm font-medium rounded-md text-white bg-red-600 hover:bg-red-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-indigo-500">
                      Sign in
                  </button>
              </div>
              <div id="loader" hidden>
                <Button color="red" class='flex flex-wrap items-center gap-2 w-full'>
                  <Spinner class="mr-3" size="4" color="white" />
                  Loading ...
                </Button>
              </div>
            </div>
          <div class="mt-6">
              <div class="relative">
                  <div class="absolute inset-0 flex items-center">
                      <div class="w-full border-t border-gray-300"></div>
                  </div>
                  <div class="relative flex justify-center text-sm">
                      <span class="px-2 bg-gray-100 text-gray-500">
                          Or continue with
                      </span>
                  </div>
              </div>
              <div class="mt-6 grid grid-cols">
                  <div>
                      <a href="#"
                          class="w-full flex items-center justify-center px-8 py-3 border border-gray-300 rounded-md shadow-sm text-sm font-medium text-gray-700 bg-white hover:bg-gray-50">
                          <img class="h-5 w-5" src="https://www.svgrepo.com/show/380993/google-logo-search-new.svg  "
                              alt="">
                      </a>
                  </div>
              </div>
              <p class="mt-10 text-center text-sm text-gray-500">
                Not a member?
                <a href="/register" class="font-semibold leading-6 text-indigo-600 hover:text-indigo-500">Register</a>
              </p>
          </div>
      </div>
  </div>
</div>