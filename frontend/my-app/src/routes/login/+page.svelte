<link href="/src/theme/style.sass" rel="stylesheet"/>
<script lang="ts">
  // import { USERNAME } from "$env/static/private";
  import axios from "axios";
  import { onMount } from "svelte";
  import {MDCSnackbar} from '@material/snackbar';
  axios.defaults.withCredentials = true;
  let registerForm = {
    email: "",
    fullname: "",
    password: "",
    birthDate: "",
    gender: ""
  };

  let loginForm = {
    email: "",
    password: ""
  }
  let rePassword = "";
  let errorMsg = "";
  let jwtToken = "";
  async function handleRegister() {
    if (!registerForm.email || !registerForm.password || !registerForm.birthDate) {
      errorMsg = "Full Name or Password, email cannot empty";
      return;
    }
    if (registerForm.password !== rePassword) {
      errorMsg = "Re-enter password must match with password";
      return;
    }

    let res = null;
    try {
      res = await axios.post("http://localhost:9090/api/v1/auth/register", registerForm)
      .then((response) => {
        if(response.status === 200) {
          window.location.href = "/";
        }
      });
    } catch (err) {
      console.log(err);
    }
  }

  async function handleLogin(){
    if(!loginForm.email || !loginForm.password){
      errorMsg = "Email or password cannot empty";
      return;
    }
    try{
      await axios.post("http://localhost:9090/api/v1/auth/authentication", loginForm)
      .then((response) => {
        if(response.status === 200){
          window.location.href = "/";
        }
      });
    }catch(err) {
    }
  }
  let questions = [
		{
			id: 1,
			text: `Male`
		},
		{
			id: 2,
			text: `Female`
		},
		{
			id: 3,
			text: `Others`
		}
	];

  function showMessage(message:string){
    document.getElementById(message)?.textContent = "";
  }
 
</script>

<div class="login-wrap">
  <div class="login-html">
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked /><label
      for="tab-1"
      class="tab">Sign In</label
    >
    <input id="tab-2" type="radio" name="tab" class="sign-up" /><label
      for="tab-2"
      class="tab">Sign Up</label
    >
    <div class="login-form">
      <div class="sign-in-htm">
        <div class="group">
          <label for="user" class="label">Email</label>
          <input id="user" type="text" class="input" bind:value={loginForm.email} on:focusout={}/>
          <p></p>
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="pass" type="password" class="input" data-type="password" bind:value={loginForm.password}/>
        </div>
        <div class="group">
          <input id="check" type="checkbox" class="check" checked />
          <label for="check"><span class="icon" /> Keep me Signed in</label>
        </div>
        <div class="group">
          <input type="button" class="button" value="Sign In" on:click={handleLogin}/>
        </div>
        <div class="hr" />
        <div class="foot-lnk" style="color: white;">
          <a href="/forgotpassword">Forgot Password?</a>
        </div>
      </div>
      <div class="sign-up-htm">
        <div class="group">
          <label for="user" class="label">Email</label>
          <input id="user" type="text" class="input" bind:value={registerForm.email}/>
        </div>
        <div class="group">
          <label for="pass" class="label">Password</label>
          <input id="pass" type="password" class="input" data-type="password" bind:value={registerForm.password}/>
        </div>
        <div class="group">
          <label for="pass" class="label">Repeat Password</label>
          <input id="pass" type="password" class="input" data-type="password" bind:value={rePassword}/>
        </div>
        <div class="group">
          <label for="pass" class="label">Full Name</label>
          <input id="pass" type="text" class="input" bind:value={registerForm.fullname}/>
        </div>
        <div class="group">
          <label for="pass" class="label">Birthday</label>
          <input id="pass" type="date" class="input" bind:value={registerForm.birthDate}/>
        </div>
        <div class="group" >
          <label for="pass" class="label">Gender</label>
          <select class="input" bind:value={registerForm.gender} on:change={() => {console.log(registerForm.gender)}} id="gender">
            {#each questions as question (question.id)}
			        <option value={question.id}>
				        {question.text}
			        </option>
		        {/each} 
          </select>
        </div>
        <div class="group">
          <input type="submit" class="button" value="Sign Up" on:click={handleRegister}/>
        </div>
        <div class="hr" />
      </div>
    </div>
  </div>
</div>
<aside class="mdc-snackbar" id="mdc-snackbar">
  <div class="mdc-snackbar__surface" role="status" aria-relevant="additions">
    <div class="mdc-snackbar__label" aria-atomic="false">
      Can't send photo. Retry in 5 seconds.
    </div>
    <div class="mdc-snackbar__actions" aria-atomic="true">
      <button type="button" class="mdc-button mdc-snackbar__action">
        <div class="mdc-button__ripple"></div>
        <span class="mdc-button__label">Retry</span>
      </button>
    </div>
  </div>
</aside>

<style>
  *,
  :after,
  :before {
    box-sizing: border-box;
  }
  .clearfix:after,
  .clearfix:before {
    content: "";
    display: table;
  }
  .clearfix:after {
    clear: both;
    display: block;
  }
  a {
    color: inherit;
    text-decoration: none;
  }

  .login-wrap {
    width: 100%;
    margin: auto;
    max-width: 525px;
    min-height: 670px;
    position: relative;
    background: url(https://raw.githubusercontent.com/khadkamhn/day-01-login-form/master/img/bg.jpg)
      no-repeat center;
    box-shadow: 0 12px 15px 0 rgba(0, 0, 0, 0.24),
      0 17px 50px 0 rgba(0, 0, 0, 0.19);
  }
  .login-html {
    width: 100%;
    height: 100%;
    position: absolute;
    padding: 90px 70px 50px 70px;
    background: rgba(40, 57, 101, 0.9);
  }
  .login-html .sign-in-htm,
  .login-html .sign-up-htm {
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    position: absolute;
    transform: rotateY(180deg);
    backface-visibility: hidden;
    transition: all 0.4s linear;
  }
  .login-html .sign-in,
  .login-html .sign-up,
  .login-form .group .check {
    display: none;
  }
  .login-html .tab,
  .login-form .group .label,
  .login-form .group .button {
    text-transform: uppercase;
  }
  .login-html .tab {
    font-size: 22px;
    margin-right: 15px;
    padding-bottom: 5px;
    margin: 0 15px 10px 0;
    display: inline-block;
    border-bottom: 2px solid transparent;
  }
  .login-html .sign-in:checked + .tab,
  .login-html .sign-up:checked + .tab {
    color: #fff;
    border-color: #1161ee;
  }
  .login-form {
    min-height: 345px;
    position: relative;
    perspective: 1000px;
    transform-style: preserve-3d;
  }
  .login-form .group {
    margin-bottom: 15px;
  }
  .login-form .group .label,
  .login-form .group .input,
  .login-form .group .button {
    width: 100%;
    color: #fff;
    display: block;
  }
  .login-form .group .input,
  .login-form .group .button {
    border: none;
    padding: 15px 20px;
    border-radius: 25px;
    background: rgba(255, 255, 255, 0.1);
  }
  .login-form .group input[data-type="password"] {
    text-security: circle;
    -webkit-text-security: circle;
  }
  .login-form .group .label {
    color: #aaa;
    font-size: 12px;
  }
  .login-form .group .button {
    background: #1161ee;
  }
  .login-form .group label .icon {
    width: 15px;
    height: 15px;
    border-radius: 2px;
    position: relative;
    display: inline-block;
    background: rgba(255, 255, 255, 0.1);
  }
  .login-form .group label .icon:before,
  .login-form .group label .icon:after {
    content: "";
    width: 10px;
    height: 2px;
    background: #fff;
    position: absolute;
    transition: all 0.2s ease-in-out 0s;
  }
  .login-form .group label .icon:before {
    left: 3px;
    width: 5px;
    bottom: 6px;
    transform: scale(0) rotate(0);
  }
  .login-form .group label .icon:after {
    top: 6px;
    right: 0;
    transform: scale(0) rotate(0);
  }
  .login-form .group .check:checked + label {
    color: #fff;
  }
  .login-form .group .check:checked + label .icon {
    background: #1161ee;
  }
  .login-form .group .check:checked + label .icon:before {
    transform: scale(1) rotate(45deg);
  }
  .login-form .group .check:checked + label .icon:after {
    transform: scale(1) rotate(-45deg);
  }
  .login-html
    .sign-in:checked
    + .tab
    + .sign-up
    + .tab
    + .login-form
    .sign-in-htm {
    transform: rotate(0);
  }
  .login-html .sign-up:checked + .tab + .login-form .sign-up-htm {
    transform: rotate(0);
  }

  .hr {
    height: 2px;
    margin: 60px 0 50px 0;
    background: rgba(255, 255, 255, 0.2);
  }
  .foot-lnk {
    text-align: center;
  }
</style>
