<style>
    .form-gap {
      padding-top: 70px;
  }
  </style>
  
  <script lang="ts">
      import axios, { AxiosError, type AxiosResponse } from "axios";
      import { BaseUrl, apiBaseUrl } from "../service";
      import { BarLoader, Circle, Circle2, Circle3, Jumper } from 'svelte-loading-spinners';
      import bcrypt from 'bcryptjs'
      let email:string;
      let message:string = "";
      let color: string;
      var SECRET_RESET = "Lbl9DyH6kb0XQ2nrhMSCk"

      async function generateOTP() {
        disableSubmitButton();
        let res;
        const token = generateToken(12);
            res = await axios.post('https://api.emailjs.com/api/v1.0/email/send',{
                service_id:'service_ah251jx',
                    template_id: 'template_lsgy5wj',
                    user_id:'7n0NeW1es2o8M2HFE',
                    accessToken: 'Lbl9DyH6kb0XQ2nrhMSCk',
                    template_params:{
                        email,
                        url:BaseUrl+"changepassword?email="+email +"&token="+ token
                    }
            })
            .then ((response : AxiosResponse) => {
              message = ""
              if (response.status === 200){
                enableSubmitButton();
                message = "Check your inbox!"
                color = "green"
                // window.location.href = '/otp'
                // enableSubmitButton();
              }
            })
            .catch((reason : AxiosError) =>{
              enableSubmitButton();
              if(reason.response?.status === 404){
                message = "Email not found!"
                color = "red"
                // console.log(error)
              }
              else{
                message = "There's some error, please try again"
                color = "red"
              }
            })
      }

      function generateToken(n: number) {
    var chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    var token = '';
    for(var i = 0; i < n; i++) {
        token += chars[Math.floor(Math.random() * chars.length)];
    }
    return token;
}
  
      function disableSubmitButton() {
          (document.getElementById('submitButton') as HTMLButtonElement).disabled = true;
          (document.getElementById('loader') as HTMLElement).hidden = false;
          (document.getElementById('resetpassword') as HTMLElement).hidden = true;
  
      }
      function enableSubmitButton(){
          (document.getElementById('submitButton') as HTMLButtonElement).disabled = false;
          (document.getElementById('loader') as HTMLElement).hidden = true;
          (document.getElementById('resetpassword') as HTMLElement).hidden = false;
      }
  </script>
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
  <div class="form-gap"></div>
  <div class="container">
      <div class="row">
          <div class="col-md-4 col-md-offset-4">
              <div class="panel panel-default">
                <div class="panel-body">
                  <div class="text-center">
                    <h3><i class="fa fa-lock fa-4x"></i></h3>
                    <h2 class="text-center">Forgot Password?</h2>
                    <p>You can reset your password here.</p>
                    <div class="panel-body">
      
                      <form id="register-form" role="form" autocomplete="off" class="form">
      
                        <div class="form-group">
                          <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                            <input id="email" name="email" placeholder="Email address" class="form-control"  type="email" bind:value={email}>
                          </div>
                        </div>
                        {#if message != null}
                        <div class="form-group">
                          <b style="color: {color};">{message}</b>
                        </div>
                        {/if}
                        <div class="form-group">
                          <button name="recover-submit" id="submitButton" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit" on:click={(event) => generateOTP()}>
                            <span style="margin: 0 auto; display: table;" id="loader" hidden><Circle size="30" color="#ffffff" unit="px" duration="1s"/></span>
                            <span id="resetpassword">Reset Password</span>
                          </button>
                        </div>
                        <div class="form-group">
                          <form action="/login">
                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Back To Login" type="submit">
                          </form>
                        </div>
                        <input type="hidden" class="hide" name="token" id="token" value=""> 
                      </form>
      
                    </div>
                  </div>
                </div>
              </div>
            </div>
      </div>
  </div>