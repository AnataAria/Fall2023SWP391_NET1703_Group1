<script lang="ts">
    import type {
        CourseContent,
        CourseContentCreate,
        Section,
        SectionCreate,
    } from "$lib/types";
    import {
        Button,
        Input,
        Label,
        Modal,
        Select,
        Spinner,
    } from "flowbite-svelte";
    import {
        DisableSubmitButton,
        EnableSubmitButton,
        GetCookie,
        apiBaseUrl,
    } from "../service";
    import axios, { AxiosError, type AxiosResponse } from "axios";
    import { onMount } from "svelte";
    let formModal = false;
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";
    export let id: number;
    let sectionList: Section[] = [];

    let modeSelect: string;
    let content: CourseContentCreate = {
        sectionID: 1,
        courseContent: {
            id: 1,
            description: "",
            createDate: new Date("2023-10-19"),
            title: "",
            videoLink: "",
        },
    };
    let section: SectionCreate = {
        courseID: id,
        sectionInfo: {
            id: 1,
            sectionOrder: 1,
            title: "",
        },
    };
    function CheckInput() {
        if (section.sectionInfo.title === "") {
            console.log("There are some errors");
        } else {
            console.log(section);
            CreateSection();
        }
    }
    async function CreateSection() {
        console.log(content);
        console.log(section);
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
                    // CreateCourseContent(response.data.id);
                    setTimeout(() => {
                        // window.location.href = "/";
                        var data = response.data;
                        sectionList.push(data);
                        EnableSubmitButton();
                        formModal = false;
                    }, 1500);
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
        DisableSubmitButton();
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
    async function getSectionList() {
        await axios
            .get(apiBaseUrl + `sections?id=${id}`, {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                },
            })
            .then((response: AxiosResponse) => {
                if (response.status === 200) {
                    setTimeout(() => {
                        sectionList = response.data;
                    }, 1500);
                }
            })
            .catch((error: AxiosError) => {
                console.log(error);
            });
    }
    onMount(() => {
        setTimeout(() => {
            getSectionList();
        }, 500);
    });
    function modeCreateHandle() {
        if (modeSelect == "1") {
            CreateSection();
        } else if (modeSelect == "2") {
            CreateCourseContent();
        }
    }

    function fetchValue() {
        if (sectionChoice) {
            content.sectionID = sectionChoice;
            selectionTitle =
                sectionList.find((item) => {
                    return item.id === sectionChoice;
                })?.title || "";
        }
    }
    let sectionChoice: number;
    let selectionTitle: string;
</script>

<Button
    class="border-none right-6 bottom-0 w-16 h-16"
    color="light"
    size="xs"
    on:click={() => (formModal = true)}
    ><svg
        xmlns="http://www.w3.org/2000/svg"
        fill="none"
        viewBox="0 0 24 24"
        stroke-width="1.5"
        stroke="currentColor"
        class="w-16 h-16"
    >
        <path
            stroke-linecap="round"
            stroke-linejoin="round"
            d="M12 9v6m3-3H9m12 0a9 9 0 11-18 0 9 9 0 0118 0z"
        />
    </svg>
</Button>
<Modal bind:open={formModal} size="xs" autoclose={false} class="w-full">
    <div class="flex flex-col space-y-6">
        <Select
            defaultClass="mb-4 text-xl font-bold text-gray-900 bg-none border-0 w-96"
            size="lg"
            bind:value={modeSelect}
        >
            <option selected value="1">Create New Section</option>
            <option value="2">Create New Content</option>
        </Select>
        {#if modeSelect != "1"}
            <Label class="space-y-2">
                <span>Choice Section</span>
                <Select on:change={fetchValue} bind:value={sectionChoice}>
                    {#each sectionList as sectionItem}
                        <option value={sectionItem.id}
                            >{sectionItem.title}</option
                        >
                    {/each}
                </Select>
                <Label class="space-y-2">
                    <span>Section ID</span>
                    <Input
                        type="number"
                        name="section_order"
                        required
                        readonly
                        bind:value={sectionChoice}
                    />
                </Label>
                <Label class="space-y-2">
                    <span>Title</span>
                    <Input
                        bind:value={selectionTitle}
                        type="text"
                        name="title"
                        required
                        readonly
                    />
                </Label>
            </Label>
        {:else}
            <Label class="space-y-2  w-96">
                <span>Title</span>
                <Input
                    bind:value={section.sectionInfo.title}
                    type="text"
                    name="title"
                    required
                />
            </Label>
        {/if}

        {#if modeSelect != "1"}
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
                    bind:value={content.courseContent.description}
                />
            </Label>
            <Label class="space-y-2">
                <span> Title of content</span>
                <Input
                    bind:value={content.courseContent.title}
                    type="text"
                    name="title"
                    required
                />
            </Label>
            <Label class="space-y-2">
                <span> Video link</span>
                <Input
                    bind:value={content.courseContent.videoLink}
                    type="url"
                    name="video_url"
                    required
                />
            </Label>
        {/if}
        <div id="submitButton">
            <Button
                type="submit"
                class="w-96"
                color="red"
                on:click={modeCreateHandle}>Create</Button
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
    </div>
</Modal>
