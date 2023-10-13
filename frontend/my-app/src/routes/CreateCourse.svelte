<script lang="ts">
    import {
        Button,
        Modal,
        Label,
        Input,
        Checkbox,
        Toast,
    } from "flowbite-svelte";
    import ToastShowMessage from "../templates/ToastShowMessage.svelte";
    import { slide } from "svelte/transition";
    import { CheckCircleSolid, CloseCircleSolid } from "flowbite-svelte-icons";
    import { quintOut } from "svelte/easing";
    import axios, { Axios, AxiosError, type AxiosResponse } from "axios";
    import { apiBaseUrl } from "../service";
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";

    let formModal = false;
    let Course = {
        course_name: "",
        description: "",
        duration: "",
        price: 0,
    };
    function CheckInput() {
        console.log(Course);
        if (Math.sign(Course.price) === -1 || Course.price === 0) {
            showErrMessage("Price cannot be less than or equal to 0");
        }
    }
    async function CreateCourse() {
        let res;
        res = await axios.post(apiBaseUrl, Course)
        .then((respone : AxiosResponse) => {
            if (respone.status === 200){
                showMessage(Course.course_name + " created successfully!")
            }
        })
        .catch ((error : AxiosError) => {
            showErrMessage("There are some errors, please try again!")
        });
    }

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
</script>

<div class="flex flex-col items-center justify-center">
    <Button on:click={() => (formModal = true)} color="red">New course</Button>
</div>
<Modal bind:open={formModal} size="xs" autoclose={false} class="w-full">
    <form on:submit={CheckInput}>
        <div class="relative z-0 w-full mb-6 group">
            <input
                type="text"
                name="course_title"
                id="course_title"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
                bind:value={Course.course_name}
            />
            <label
                for="course_title"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Course title</label
            >
        </div>
        <div class="relative z-0 w-full mb-6 group">
            <label
                for="description"
                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >Description</label
            >
            <textarea
                id="description"
                rows="4"
                class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Give some description about your course..."
                bind:value={Course.description}
            />
        </div>
        <div class="relative z-0 w-full mb-6 group">
            <input
                type="text"
                name="duration"
                id="duration"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
                bind:value={Course.duration}
            />
            <label
                for="duration"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Duration</label
            >
        </div>
        <div class="relative z-0 w-full mb-6 group">
            <input
                type="number"
                name="pricing"
                id="pricing"
                class="block py-2.5 px-0 w-full text-sm text-gray-900 bg-transparent border-0 border-b-2 border-gray-300 appearance-none dark:text-white dark:border-gray-600 dark:focus:border-blue-500 focus:outline-none focus:ring-0 focus:border-blue-600 peer"
                placeholder=" "
                required
                bind:value={Course.price}
            />
            <label
                for="pricing"
                class="peer-focus:font-medium absolute text-sm text-gray-500 dark:text-gray-400 duration-300 transform -translate-y-6 scale-75 top-3 -z-10 origin-[0] peer-focus:left-0 peer-focus:text-blue-600 peer-focus:dark:text-blue-500 peer-placeholder-shown:scale-100 peer-placeholder-shown:translate-y-0 peer-focus:scale-75 peer-focus:-translate-y-6"
                >Pricing</label
            >
        </div>
        <button
            type="submit"
            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm w-full sm:w-auto px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
            >Submit</button
        >
    </form>
    <div class="flex flex-col items-center justify-center">
        {#if errorMsg != ""}
            <div>
                <Toast
                    color="red"
                    dismissable={false}
                    bind:open
                    transition={slide}
                >
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
                    params={{ delay: 250, duration: 300, easing: quintOut }}
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
    </div>
</Modal>
