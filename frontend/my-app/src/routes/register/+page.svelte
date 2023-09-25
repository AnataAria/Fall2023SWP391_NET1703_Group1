<script>
  import axios from "axios";
  axios.defaults.withCredentials = true;
  async function Login() {
    window.location.href = "/login";
  }
  let Sex = "";
  let username = "";
  let password = "";
  let rePassword = "";
  let Birthday = "";
  let email = "";
  let errorMsg = "";
  let jwtToken = "";

  async function handleRegister() {
    if (!username || !password || !email) {
      errorMsg = "Username or Password, email cannot empty";
      return;
    }
    if (password !== rePassword) {
      errorMsg = "Re-enter password must match with password";
      return;
    }

    let res = null;
    try {
      res = await axios
        .post("http://localhost:9090/api/v1/auth/register", {
          email: email,
          fullname: username,
          password: password,
          birthDate: Birthday,
          gender: Sex,
        })
        .then((response) => {
          if (response.status === 200) {
            jwtToken = response.data?.token;
            console.log(jwtToken);
            // window.location.href = "/";
          } else {
            errorMsg = response.data?.message || "There is some error";
          }
        });
    } catch (err) {
      console.log(err);
    }

    // if (res?.data.code === 200) {
    //   jwtToken = res?.data.token;
    //   console.log(jwtToken);
    //   window.location.href = "/";
    // } else {
    //   errorMsg = res?.data?.message || "There's some error";
    // }
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
              <h2 class="text-uppercase text-center mb-4">Create an account</h2>

              <form>
                <label class="form-label" for="yourname">Your Name</label>
                <div class="form-outline mb-2">
                  <input
                    bind:value={username}
                    type="text"
                    id="yourname"
                    class="form-control form-control-lg"
                  />
                </div>

                <div class="form-outline mb-2">
                  <label class="form-label" for="email">Your Email</label>
                  <input
                    bind:value={email}
                    type="email"
                    id="email"
                    class="form-control form-control-lg"
                  />
                </div>

                <div class="form-outline mb-2">
                  <label class="form-label" for="birthday">Your Birthday</label>
                  <input
                    bind:value={Birthday}
                    type="date"
                    id="birthday"
                    class="form-control form-control-lg"
                  />
                </div>

                <div class="form-outline mb-3">
                  <label class="form-label" for="sex">Your Gender</label>
                  <label>
                    <input type="radio" bind:group={Sex} value={"1"} />
                    Boy
                  </label>

                  <label>
                    <input type="radio" bind:group={Sex} value={"2"} />
                    Girl
                  </label>

                  <label>
                    <input type="radio" bind:group={Sex} value={"3"} />
                    Unknown
                  </label>
                </div>

                <div class="form-outline mb-2">
                  <label class="form-label" for="password">Password</label>
                  <input
                    bind:value={password}
                    type="password"
                    id="password"
                    class="form-control form-control-lg"
                  />
                </div>
                <div class="form-outline mb-2">
                  <label class="form-label" for="repassword"
                    >Repeat your password</label
                  >
                  <input
                    bind:value={rePassword}
                    type="password"
                    id="repassword"
                    class="form-control form-control-lg"
                  />
                </div>

                <div class="form-check d-flex justify-content-center mb-5">
                  <input
                    class="form-check-input me-2"
                    type="checkbox"
                    value=""
                    id="form2Example3cg"
                  />
                  <label class="form-check-label" for="form2Example3g">
                    I agree all statements in <a href="#!" class="text-body"
                      ><u>Terms of service</u></a
                    >
                  </label>
                </div>

                <div class="d-flex justify-content-center">
                  <button
                    type="button"
                    on:click={handleRegister}
                    class="btn btn-success btn-block btn-lg gradient-custom-4 text-body"
                    >Register</button
                  >
                </div>

                <p class="text-center text-muted mt-5 mb-0">
                  Have already an account? <button
                    on:click={Login}
                    class="btn btn-success btn-block btn-sm text-body"
                    ><u>Login here</u></button
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
