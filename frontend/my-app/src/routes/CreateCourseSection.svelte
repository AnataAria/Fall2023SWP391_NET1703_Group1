<script lang="ts">
    import type { Section } from "$lib/types";
    import {
        Button,
        Checkbox,
        Input,
        Label,
        Modal,
        SpeedDialButton,
    } from "flowbite-svelte";
    import { SpeedDial } from "flowbite-svelte";
    import {
        DownloadSolid,
        FileCopySolid,
        PlusOutline,
        PlusSolid,
        PrintSolid,
        ShareNodesSolid,
    } from "flowbite-svelte-icons";
    import { GetCookie, apiBaseUrl } from "../service";
    import axios, { AxiosError, type AxiosResponse } from "axios";
    let formModal = false;
    let open = true;
    let counter = 6;
    let message = "";
    let errorMsg = "";

    let section: Section = {
        id: 1,
        sectionOrder: 1,
        title: "",
        courseID: 23
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
        let res;
        res = await axios
            .post(apiBaseUrl + "section", section, {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                },
            })
            .then((respone: AxiosResponse) => {
                if (respone.status === 200) {
                    formModal = false;
                    console.log("Success");
                }
            })
            .catch((error: AxiosError) => {
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
    function timeout():any {
        if (--counter > 0) return setTimeout(timeout, 1000);
        open = false;
    }
</script>

<SpeedDial
    color="red"
    outline
    defaultClass="absolute right-24 bottom-6"
    tooltip="none"
    textOutside
>
    <SpeedDialButton name="Add" on:click={() => (formModal = true)}>
        <PlusSolid class="w-5 h-5" />
    </SpeedDialButton>
    <SpeedDialButton name="Print">
        <PrintSolid class="w-5 h-5" />
    </SpeedDialButton>
    <SpeedDialButton name="Save">
        <DownloadSolid class="w-5 h-5" />
    </SpeedDialButton>
    <SpeedDialButton name="Copy">
        <FileCopySolid class="w-5 h-5" />
    </SpeedDialButton>
</SpeedDial>
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
        <Button type="submit" class="w-full1" color="red">Create</Button>
    </form>
</Modal>
