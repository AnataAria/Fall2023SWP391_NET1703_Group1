<style>
  .form-gap {
    padding-top: 70px;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}

/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>

<script lang="ts">
    import axios, { AxiosError, type AxiosResponse } from "axios";
    import { apiBaseUrl } from "../../service";
    import { BarLoader, Circle, Circle2, Circle3, Jumper } from 'svelte-loading-spinners';
  let otpnum:number
  let message:string
  async function validateOtp() {
    disableSubmitButton();
    let res;
    res = await axios.get(apiBaseUrl +"auth/validateOtp", {
      params: {
        otpnum
      }
    })
    .then((response : AxiosResponse) =>{        
      enableSubmitButton();
      if (response.status === 200){
        window.location.href = '/changepassword'
      }
    })
    .catch((reason : AxiosError) => {
      enableSubmitButton();
      if (reason.response?.status === 401){
        message = "Invalid OTP, please try again"
      }
    })
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
                  <h2 class="text-center">OTP Sent</h2>
                  <p>Please check your (spam) inbox for the OTP.</p>
                  <div class="panel-body">
    
                    <form id="register-form" role="form" autocomplete="off" class="form">
    
                      <div class="form-group">
                        <div class="input-group">
                          <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                          <input id="otp" name="otp" placeholder="Enter OTP" class="form-control"  type="number" bind:value={otpnum}>
                        </div>
                      </div>
                      {#if message != null}
                      <div class="form-group">
                        <b style="color: red;">{message}</b>
                      </div>
                      {/if}
                      <div class="form-group">
                        <button name="recover-submit" id="submitButton" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit" on:click={validateOtp}>
                          <span style="margin: 0 auto; display: table;" id="loader" hidden><Circle size="30" color="#ffffff" unit="px" duration="1s"/></span>
                          <span id="resetpassword">Verify</span>
                        </button>
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