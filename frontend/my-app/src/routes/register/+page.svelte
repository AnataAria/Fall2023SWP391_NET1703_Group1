<script lang="ts">
    import axios from "axios";
import { onMount } from "svelte";
axios.defaults.withCredentials = true;
import Toastify from "toastify-js";
import "toastify-js/src/toastify.css";
    import { ShowMessage, apiBaseUrl } from "../../service";
    const emailRegex = new RegExp(/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/);

let registerForm = {
  email: "",
  fullname: "",
  password: "",
  birthDate: "",
  gender: ""
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
    ShowMessage( "Full Name or Password, email cannot empty", 3000, 1, 1);
    status = false;
  }
  if (registerForm.password !== rePassword) {
    ShowMessage("Re-enter password must match with password", 3000, 1, 1);
    status = false;
  }
  if(!emailRegex.test(registerForm.email)){
    ShowMessage("Please enter a valid email", 3000, 1, 1);
    status = false;
  }
  if (!registerForm.birthDate || !registerForm.gender || !registerForm.password){
    ShowMessage("Required field are empty", 3000, 1, 1);
  }
  let res = null;
  if (status) {
    try {
      res = await axios
        .post(apiBaseUrl + "auth/register", registerForm)
        .then((response) => {
          if (response.status === 200) {
            ShowMessage("Register successfully!", 3000, 2, 1);
            window.location.href = "/";
          }
        });
    } catch (err) {
      console.log(err);
    }
  }
}
let questions = [
  {
    id: 0,
    text: `Male`,
  },
  {
    id: 1,
    text: `Female`,
  },
  {
    id: 2,
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

<section class="bg-gray-50 dark:bg-gray-900">
  <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">

      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                  Create and account
              </h1>
              <div class="space-y-4 md:space-y-5">
                  <div>
                      <label for="fullname" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Full Name <pc style="color: red;">*</pc></label>
                      <input type="text" name="fullname" id="fullname" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" bind:value={registerForm.fullname} required >
                  </div>
                  <div>
                      <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Your email <pc style="color: red;">*</pc></label>
                      <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="name@company.com" bind:value={registerForm.email} required>
                  </div>
                  <div>
                      <label for="Birthday" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Birthday <pc style="color: red;">*</pc></label>
                      <input type="date" name="Birthday" id="Birthday" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"  required bind:value={registerForm.birthDate}>
                  </div>
                  <div>
                      <label for="Gender" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Gender <pc style="color: red;">*</pc></label>
                      <select
                      class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                      bind:value={registerForm.gender}
                      on:change={() => {
                        console.log(registerForm.gender);
                      }}
                      id="gender"
                    >
                      {#each questions as question (question.id)}
                        <option value={question.id}>
                          {question.text}
                        </option>
                      {/each}
                    </select>
                  </div>
                  <div>
                      <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Password <pc style="color: red;">*</pc></label>
                      <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required bind:value={registerForm.password}>
                  </div>
                  <div>
                      <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">Confirm password <pc style="color: red;">*</pc></label>
                      <input type="confirm-password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required bind:value={rePassword}>
                  </div>
                  <div class="flex items-start">
                      <div class="flex items-center h-5">
                        <input id="terms" aria-describedby="terms" type="checkbox" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800" required>
                      </div>
                      <div class="ml-3 text-sm">
                        <label for="terms" class="font-light text-gray-500 dark:text-gray-300">I accept the <a class="font-medium text-primary-600 hover:underline dark:text-primary-500" href="#">Terms and Conditions</a></label>
                      </div>
                  </div>
                  <button on:click={handleRegister} type="submit" class="w-full text-white bg-primary-600 hover:bg-primary-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800">Create an account</button>
                  <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      Already have an account? <a href="/login" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Login here</a>
                  </p>
                </div>
          </div>
      </div>
  </div>
</section>