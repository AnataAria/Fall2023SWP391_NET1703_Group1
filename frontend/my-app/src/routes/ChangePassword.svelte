<style>
    .mainDiv {
    display: flex;
    min-height: 100%;
    align-items: center;
    justify-content: center;
    background-color: #f9f9f9;
    font-family: 'Open Sans', sans-serif;
  }
 .cardStyle {
    width: 500px;
    border-color: white;
    background: #fff;
    padding: 36px 0;
    border-radius: 4px;
    margin: 30px 0;
    box-shadow: 0px 0 2px 0 rgba(0,0,0,0.25);
  }
#signupLogo {
  max-height: 100px;
  margin: auto;
  display: flex;
  flex-direction: column;
}
.formTitle{
  font-weight: 600;
  margin-top: 20px;
  color: #2F2D3B;
  text-align: center;
}
.inputLabel {
  font-size: 12px;
  color: #555;
  margin-bottom: 6px;
  margin-top: 24px;
}
  .inputDiv {
    width: 70%;
    display: flex;
    flex-direction: column;
    margin: auto;
  }
input {
  height: 40px;
  font-size: 16px;
  border-radius: 4px;
  border: none;
  border: solid 1px #ccc;
  padding: 0 11px;
}
input:disabled {
  cursor: not-allowed;
  border: solid 1px #eee;
}
.buttonWrapper {
  margin-top: 40px;
}
  .submitButton {
    width: 70%;
    height: 40px;
    margin: auto;
    display: block;
    color: #fff;
    background-color: #065492;
    border-color: #065492;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.12);
    box-shadow: 0 2px 0 rgba(0, 0, 0, 0.035);
    border-radius: 4px;
    font-size: 14px;
    cursor: pointer;
  }
.submitButton:disabled,
button[disabled] {
  border: 1px solid #cccccc;
  background-color: #cccccc;
  color: #666666;
}

#loader {
  position: absolute;
  z-index: 1;
  margin: -2px 0 0 10px;
  border: 4px solid #f3f3f3;
  border-radius: 50%;
  border-top: 4px solid #666666;
  width: 14px;
  height: 14px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@keyframes spin {
    0% { transform: rotate(0deg); }
    100% { transform: rotate(360deg); }
}
</style>
<script lang="ts">
    import axios, { Axios, AxiosError, type AxiosResponse } from "axios";
    import { apiBaseUrl } from "../service";
    let password:string
    let confirmPassword:string
    let message:string


    enableSubmitButton
    function validatePassword(){
        if (password != confirmPassword || password == null){
            message = "Passwords Don't Match"
        }
        else{
            message = ""
            changepassword();
        }
    }
    async function changepassword() {
      let res;
          res = await axios.put(apiBaseUrl + 'auth/changePassword',{
            params: {
              password
            },
            withCredentials: true,
          })
          .then ((response : AxiosResponse) => {
            if (response.status === 200){
              enableSubmitButton();
              window.location.href = '/'
              // enableSubmitButton();
            }
          })
          .catch((reason : AxiosError) =>{
            enableSubmitButton();
            if(reason.response?.status === 404){
              message = "Email not found!"
              // color = "red"
              // console.log(error)
            }
            else{
              message = "There's some error, please try again"
              // color = "red"
            }
          })
    }
    function disableSubmitButton() {
        (document.getElementById('submitButton') as HTMLButtonElement).disabled = true;
        (document.getElementById('loader') as HTMLElement).hidden = false;

    }
    function enableSubmitButton(){
        (document.getElementById('submitButton') as HTMLButtonElement).disabled = false;
        (document.getElementById('loader') as HTMLElement).hidden = true;
        
    }

</script>
<div class="mainDiv">
    <div class="cardStyle">
      <!-- <form name="signupForm" id="signupForm" method="post"> -->
        <!-- <input type="hidden" name="_method" value="put"> -->
        <img src="https://s3-us-west-2.amazonaws.com/shipsy-public-assets/shipsy/SHIPSY_LOGO_BIRD_BLUE.png" id="signupLogo"/>
        
        <h2 class="formTitle">
          Login to your account
        </h2>
        
      <div class="inputDiv">
        <label class="inputLabel" for="password">New Password</label>
        <input type="password" id="password" name="password" required bind:value={password}>
      </div>
        
      <div class="inputDiv">
        <label class="inputLabel" for="confirmPassword">Confirm Password</label>
        <input type="password" id="confirmPassword" name="confirmPassword" bind:value={confirmPassword}>
      </div>
      {#if message!=null}
        <div class="inputDiv">
        <b style="color: red;">{message}</b>
      </div>
      {/if}
      <div class="buttonWrapper">
        <button type="submit" id="submitButton" on:click={validatePassword} class="submitButton pure-button pure-button-primary">
          <span>Continue</span>
          <span hidden id="loader"></span>
        </button>
      </div>
        
    <!-- </form> -->
    </div>
  </div>