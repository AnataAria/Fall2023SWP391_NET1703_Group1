<script>
  import axios from "axios";
  import Snackbar from "@smui/snackbar";
  import IconButton from "@smui/icon-button";
  import Button from "@smui/button";
  async function register() {
    window.location.href = "/register";
  }
  let Email = "";
  let Password = "";
  let errMessage = "";
  let jwtToken = "";
  async function handleLogin() {
    if (!Email || !Password) {
      errMessage = "Email and password are required";
      return;
    }
    axios.defaults.withCredentials = true;
    try {
      await axios
        .post("http://localhost:9090/api/v1/auth/authentication", {
          email: Email,
          password: Password,
        })
        .then((response) => {
          if (response.status === 200) {
            jwtToken = response.data?.token;
            window.localStorage.setItem("jwtToken", jwtToken);
            console.log("jwtToken: " + jwtToken);
            window.location.href = "/";
          } else {
            errMessage = response.data?.message;
          }
        });
    } catch (e) {
      console.log(e);
    }
  }
</script>

<section
  class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');"
>
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Create an account</h2>

              <form>
                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example1cg">Email</label>
                  <input
                    bind:value={Email}
                    type="text"
                    id="form3Example1cg"
                    class="form-control form-control-lg"
                  />
                </div>
                <div class="form-outline mb-4">
                  <label class="form-label" for="form3Example4cg"
                    >Password</label
                  >
                  <input
                    bind:value={Password}
                    type="password"
                    id="form3Example4cg"
                    class="form-control form-control-lg"
                  />
                </div>

                <div class="d-flex justify-content-center">
                  <button
                    type="button"
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"
                    on:click={handleLogin}>Login</button
                  >
                </div>

                <p class="text-center text-muted mt-5 mb-0">
                  Have not have an account? <button
                    on:click={register}
                    class="fw-bold text-body"><u>Register here</u></button
                  >
                </p>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<style>
</style>
