<script lang="ts">
    import type { CourseContent, Section } from "$lib/types";
    import {
        Button,
        Input,
        Label,
        Modal,
        Spinner,
    } from "flowbite-svelte";
    import { DisableSubmitButton, EnableSubmitButton, GetCookie, apiBaseUrl } from "../service";
    import axios, { AxiosError, type AxiosResponse } from "axios";
    let formModal = false;
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";
    export let id;

    let content: CourseContent = {
        id: 1,
        description: "",
        createDate: new Date("2023-10-19"),
        title: "",
        videoLink: "",
    };
    let section: Section = {
        id: 1,
        sectionOrder: 1,
        title: "",
        courseID: id,
    };
    function CheckInput() {
        if (section.title === "") {
            console.log("There are some errors");
        } else {
            console.log(section);
            CreateSection();
        }
    }
    async function CreateSection() {
        console.log(content)
        console.log(section)
        DisableSubmitButton();
        let res;
        res = await axios
            .post(apiBaseUrl + "section", section, {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                },
            })
            .then((response: AxiosResponse) => {
                if (response.status === 200) {
                    CreateCourseContent();
                    console.log("Success");
                }
            })
            .catch((error: AxiosError) => {
                EnableSubmitButton();
                showErrMessage("There are some errors, please try again!");
                console.log(error);
            });
    }
    async function CreateCourseContent() {
        let res;
        res = await axios
            .post(apiBaseUrl + "course-content", content, {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                },
            })
            .then((response: AxiosResponse) => {
                if (response.status === 200) {
                    setTimeout(() => {
                        // window.location.href = "/";
                        EnableSubmitButton();
                        formModal = false;
                    }, 1500);
                    console.log("Create course content success!");
                }
            })
            .catch((error: AxiosError) => {
                EnableSubmitButton();
                showErrMessage("There are some errors, please try again!");
                console.log(error);
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
    function timeout(): any {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
    }
</script>

<Button color="light" size="xs" on:click={() => (formModal = true)}>Add</Button>
<Modal bind:open={formModal} size="xs" autoclose={false} class="w-full">
    <form class="flex flex-col space-y-6" on:submit={CheckInput}>
        <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">
            Create a section
        </h3>
        <Label class="space-y-2">
            <span>Section Order</span>
            <Input
                bind:value={section.sectionOrder}
                type="number"
                name="section_order"
                required
            />
        </Label>
        <Label class="space-y-2">
            <span>Title</span>
            <Input
                bind:value={section.title}
                type="text"
                name="title"
                required
            />
        </Label>
        <hr class="my-6 border-t border-gray-300" />
        <h3 class="mb-4 text-xl font-medium text-gray-900 dark:text-white">
            Content
        </h3>
        <Label class="space-y-2">
            <span> Description </span>
            <textarea
                id="description"
                rows="4"
                class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Give some description..."
                bind:value={content.description}
            />
        </Label>
        <Label class="space-y-2">
            <span> Title of content</span>
            <Input
                bind:value={content.title}
                type="text"
                name="title"
                required
            />
        </Label>
        <Label class="space-y-2">
            <span> Video link</span>
            <Input
                bind:value={content.videoLink}
                type="url"
                name="video_url"
                required
            />
        </Label>
        <div id="submitButton">
            <Button type="submit" class="w-full" color="red">Create</Button>
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
    </form>
</Modal>
