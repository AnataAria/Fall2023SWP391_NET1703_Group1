<script lang="ts">
    import {
        Button,
        Modal,
        Label,
        Input,
        Checkbox,
        GradientButton,
        ButtonGroup,
        InputAddon,
        ToolbarButton,
        TabItem,
        Tabs,
        Spinner,
    } from "flowbite-svelte";
    import { EyeOutline, EyeSlashOutline } from "flowbite-svelte-icons";
    let formModal = false;
    let showPassword = false;
    import axios, { AxiosError, type AxiosResponse } from "axios";
    import { onMount } from "svelte";
    axios.defaults.withCredentials = true;
    import {
        DisableSubmitButton,
        EnableSubmitButton,
        ShowMessage,
        apiBaseUrl,
        emailRegex,
        hasUnicodeCharacters,
    } from "../service";
    import { Toast } from "flowbite-svelte";
    import { CheckCircleSolid, CloseCircleSolid } from "flowbite-svelte-icons";
    import { quintOut } from "svelte/easing";
    import { slide } from "svelte/transition";

    let show = false;
    let open = true;
    let counter = 6;
    let message = "";
    let termChecked: boolean = false;
    function showMessage(value: string) {
        message = "";
        errorMsg = "";
        open = true;
        counter = 6;
        timeout();
        message = value;
    }
    function showErrMessage(value: string) {
        message = "";
        errorMsg = "";
        open = true;
        counter = 6;
        timeout();
        errorMsg = value;
    }
    function timeout() {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
    }
    let registerForm = {
        email: "",
        fullName: "",
        password: "",
        specialization: "",
        phone: 1,
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
            !registerForm.specialization || 
            !registerForm.phone ||
            !registerForm.fullName ||
            !termChecked
        ) {
            showErrMessage("Required field cannot be empty");
            status = false;
        }
        if (registerForm.password !== rePassword) {
            showErrMessage("Re-enter password must match with password");
            status = false;
        }
        if(!emailRegex.test(registerForm.email)){
            showErrMessage("Email is not in correct format");
            status = false;
        }
        if(!isPhoneNumberValid(registerForm.phone)){
            showErrMessage("Phone number is not in correct format");
            status = false;
        }
        if(hasUnicodeCharacters(registerForm.fullName)){
            ShowMessage("Please enter non-unicode fullname", 3000, 1, 1);
            status = false;
        }
        let res = null;
        if (status) {
            DisableSubmitButton();
            res = await axios
                .post(apiBaseUrl + "auth/instructor/register", registerForm)
                .then((response: AxiosResponse) => {
                    EnableSubmitButton();
                    if (response.status === 200) {
                        showMessage("Login successful");
                        window.location.href = "/instructor";
                    }
                })
                .catch((error: AxiosError) => {
                    EnableSubmitButton();
                    console.log(error.response?.status);
                    showErrMessage("There are some errors! Please try again");
                });
        }
    }

    async function handleLogin() {
        let status = true;
        if (!loginForm.email || !loginForm.password) {
            showErrMessage("Email or password cannot empty");
            status = false;
        }
        if (status) {
            DisableSubmitButton();
            await axios
                .post(apiBaseUrl + "auth/authentication", loginForm)
                .then((response: AxiosResponse) => {
                    EnableSubmitButton();
                    if (response.status === 200) {
                        showMessage("Login Successs!");
                        window.location.href = "/instructor";
                    }
                })
                .catch((error: AxiosError) => {
                    EnableSubmitButton();
                    if (error.response?.status === 404) {
                        showErrMessage("Email not found");
                    } else {
                        showErrMessage(
                            "There are some errors! Please try again"
                        );
                    }
                    console.log(showErrMessage);
                });
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

    function isPhoneNumberValid(inputElement: any): boolean {
    // Regular expression for a basic phone number pattern (adjust as needed)
    const phoneNumberPattern = /^\d{10}$/;

    // Get the value from the input field
    const phoneNumber = inputElement;

    // Check if the value matches the phone number pattern
    return phoneNumberPattern.test(phoneNumber);
    }

    onMount(() => {
        kickBackToLandingPage();
    });
    function kickBackToLandingPage() {
        if (getUserCookie()) window.location.href = "/";
    }
</script>

<GradientButton on:click={() => (formModal = true)} color="red" shadow
    >Get started
    <svg
        class="ml-2 -mr-1 w-5 h-5"
        fill="currentColor"
        viewBox="0 0 20 20"
        xmlns="http://www.w3.org/2000/svg"
        ><path
            fill-rule="evenodd"
            d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z"
            clip-rule="evenodd"
        /></svg
    >
</GradientButton>

<Modal bind:open={formModal} size="xs" autoclose={false} class="w-full">
    <Tabs style="pill">
        <TabItem login title="Login">
            <div class="flex flex-col space-y-6">
                <h3
                    class="mb-4 text-xl font-medium text-gray-900 dark:text-white"
                >
                    Sign in to our platform
                </h3>
                <Label class="space-y-2">
                    <span>Email</span>
                    <Input
                        type="email"
                        name="email"
                        placeholder="name@company.com"
                        required
                        bind:value={loginForm.email}
                    />
                </Label>
                <Label class="space-y-2">
                    <Label for="show-password" class="mb-2">Your password</Label
                    >
                    <Input
                        id="show-password"
                        type={showPassword ? "text" : "password"}
                        placeholder="Your password here"
                        size="lg"
                        required
                        bind:value={loginForm.password}
                    >
                        <button
                            slot="left"
                            on:click={() => (showPassword = !showPassword)}
                            class="pointer-events-auto"
                        >
                            {#if showPassword}
                                <EyeOutline class="w-6 h-6" />
                            {:else}
                                <EyeSlashOutline class="w-6 h-6" />
                            {/if}
                        </button>
                    </Input>
                </Label>
                <div class="flex items-start">
                    <Checkbox color="red">Remember me</Checkbox>
                    <a
                        href="/forgotpassword"
                        class="ml-auto text-sm text-primary-700 hover:underline dark:text-primary-500"
                    >
                        Lost password?
                    </a>
                </div>
                <div id="submitButton">
                    <Button on:click={handleLogin} type="submit" class="w-full" color="red"
                        >Login to your account</Button
                    >
                </div>
                <div id="loader" hidden>
                    <Button
                        color="red"
                        class="flex flex-wrap items-center gap-2 w-full"
                    >
                        <Spinner class="mr-3" size="4" color="white" />
                        Loading ...
                    </Button>
                </div>
                <!-- <div
                    class="text-sm font-medium text-gray-500 dark:text-gray-300"
                >
                    Not registered?
                    <a
                        href="/"
                        class="text-primary-700 hover:underline dark:text-primary-500"
                    >
                        Create account
                    </a>
                </div> -->
            </div>
        </TabItem>
        <TabItem open title="Sign Up">
            <div class="space-y-4 md:space-y-5">
                <h3
                    class="mb-4 text-xl font-medium text-gray-900 dark:text-white"
                >
                    Sign up to join our platform
                </h3>
                <span>For Instructor</span>
                <div>
                    <label
                        for="fullname"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Full Name <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="text"
                        name="fullname"
                        id="fullname"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        bind:value={registerForm.fullName}
                        required
                    />
                </div>
                <div>
                    <label
                        for="email"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Your email <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="email"
                        name="email"
                        id="email"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        placeholder="name@company.com"
                        bind:value={registerForm.email}
                        required
                    />
                </div>
                <div>
                    <label
                        for="specialization"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Specialization <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="text"
                        name="specialization"
                        id="specialization"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        bind:value={registerForm.specialization}
                        required
                    />
                </div>
                <div>
                    <label
                        for="phone"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Phone Number <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="tel"
                        name="phone"
                        id="phone"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        bind:value={registerForm.phone}
                        required
                    />
                </div>
                <div>
                    <label
                        for="password"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Password <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="password"
                        name="password"
                        id="password"
                        placeholder="••••••••"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        required
                        bind:value={registerForm.password}
                    />
                </div>
                <div>
                    <label
                        for="confirm-password"
                        class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                        >Confirm password <pc style="color: red;">*</pc></label
                    >
                    <input
                        type="password"
                        name="confirm-password"
                        id="confirm-password"
                        placeholder="••••••••"
                        class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                        required
                        bind:value={rePassword}
                    />
                </div>
                <div class="flex items-start">
                    <div class="flex items-center h-5">
                        <input
                            id="terms"
                            aria-describedby="terms"
                            type="checkbox"
                            class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-primary-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-primary-600 dark:ring-offset-gray-800"
                            required
                            bind:checked={termChecked}
                        />
                    </div>
                    <div class="ml-3 text-sm">
                        <label
                            for="terms"
                            class="font-light text-gray-500 dark:text-gray-300"
                            >I accept the <a
                                class="font-medium text-primary-600 hover:underline dark:text-primary-500"
                                href="#">Terms and Conditions</a
                            ></label
                        >
                    </div>
                </div>
                <button
                    on:click={handleRegister}
                    type="submit"
                    id="submitButton"
                    class="w-full text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-primary-600 dark:hover:bg-primary-700 dark:focus:ring-primary-800"
                    >Create an account</button
                >
                <div id="loader" hidden>
                    <Button
                        color="red"
                        class="flex flex-wrap items-center gap-2 w-full"
                    >
                        <Spinner class="mr-3" size="4" color="white" />
                        Loading ...
                    </Button>
                </div>
                <!-- <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                    Already have an account? <a href="/login" class="font-medium text-primary-600 hover:underline dark:text-primary-500">Login here</a>
                </p> -->
            </div>
        </TabItem>
    </Tabs>
    {#if errorMsg != ""}
        <div>
            <Toast color="red" dismissable={false} bind:open transition={slide}>
                <svelte:fragment slot="icon">
                    <CloseCircleSolid class="w-5 h-5" />
                    <span class="sr-only">Error icon</span>
                </svelte:fragment>
                {errorMsg}
            </Toast>
        </div>
    {/if}
    {#if message != ""}
        <div>
            <Toast
                color="green"
                transition={slide}
                params={{
                    delay: 250,
                    duration: 300,
                    easing: quintOut,
                }}
                dismissable={false}
                bind:open
            >
                <svelte:fragment slot="icon">
                    <CheckCircleSolid class="w-5 h-5" />
                    <span class="sr-only">Check icon</span>
                </svelte:fragment>
                {message}.
            </Toast>
        </div>
    {/if}
</Modal>
