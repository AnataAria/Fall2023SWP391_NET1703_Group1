<script lang="ts">
    import {
        Button,
        Checkbox,
        PaginationItem,
        Sidebar,
        SidebarDropdownWrapper,
        SidebarGroup,
        SidebarItem,
        SidebarWrapper,
    } from "flowbite-svelte";
    import Score from "./Score.svelte";
    import axios, { AxiosError, type AxiosResponse } from "axios";
    import { GetCookie, ShowMessage, apiBaseUrl } from "../service";
    import type {
        GetExamAllInfo,
        GradingExam,
        ReviewsPagination,
        ReviewsPaginationForGrading,
    } from "$lib/types";
    import { onMount } from "svelte";
    let getScore: string = "";
    let showEmptyMessage: boolean = false;
    let reviewPagination: ReviewsPaginationForGrading = {
        content: [],
        pageable: {
            pageNumber: 0,
            pageSize: 0,
            sort: {
                unsorted: false,
                sorted: false,
                empty: false,
            },
            offset: 0,
            unpaged: false,
            paged: false,
        },
        totalElements: 0,
        totalPages: 0,
        last: false,
        numberOfElements: 0,
        first: false,
        size: 0,
        number: 0,
        sort: {
            unsorted: false,
            sorted: false,
            empty: false,
        },
        empty: true,
    };
    let getAllExamInfo: GetExamAllInfo = {
        examInfo: {
            id: 0,
            score: "",
            artLink: "",
            examStatus: "",
            comment: "",
        },
        customerInfo: {
            customerID: 0,
            fullName: "",
            birthDate: new Date(),
            gender: 0,
            email: "",
            joinDate: new Date(),
        },
        courseContent: {
            id: 0,
            title: "",
            description: "",
            videoLink: "",
            createDate: new Date(),
            courseType: "",
        },
        course: {
            id: 0,
            name: "",
            price: 0,
            description: "",
            durations: "",
            instructorID: 0,
            instructorName: "",
        },
    };
    let gradeExam: GradingExam = {
        examID: 0,
        score: "",
        comment: ""
    }
    async function GetExamSubmission(page: number, maxPage: number) {
        try {
            await axios
                .get(
                    apiBaseUrl +
                        `exams/instructor?page=${page}&maxPage=${maxPage}`,
                    {
                        headers: {
                            Authorization: `Bearer ${GetCookie("USER")}`,
                        },
                    }
                )
                .then((response) => {
                    if (response.status === 200) {
                        reviewPagination = response.data;
                        if(reviewPagination.content.length == 0){
                            showEmptyMessage = true
                        }
                        console.log(reviewPagination);
                    }
                });
        } catch (error: any) {
            console.log(error);
        } finally {
            GetExamInfo();
        }
    }
    async function GetExamInfo() {
        let res;
        res = await axios
            .get<GetExamAllInfo>(
                apiBaseUrl +
                    `exams/detailinfo?examID=${reviewPagination.content[0].id}`
            )
            .then((response: AxiosResponse) => {
                getAllExamInfo = response.data;
                console.log(getAllExamInfo);
            })
            .catch((error: AxiosError) => {
                console.log(error);
            });
    }
    async function GradeExam() {
        let res;
        gradeExam.examID = reviewPagination.content[0].id;
        gradeExam.score = getScore;
        console.log(gradeExam)
        res = await axios
            .post(apiBaseUrl + "exam/mark", gradeExam, {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                },
            })
            .then((response: AxiosResponse) => {
                if (response.status === 200) {
                    ShowMessage("Graded Successfully", 3000, 2, 1);
                    window.location.reload();
                }
            })
            .catch((error: AxiosError) => {
                console.log(error);
            });
    }
    const previous = () => {
        GetExamSubmission(
            reviewPagination.pageable.pageNumber - 1,
            reviewPagination.pageable.pageSize
        );
    };
    const next = () => {
        GetExamSubmission(
            reviewPagination.pageable.pageNumber + 1,
            reviewPagination.pageable.pageSize
        );
    };
    onMount(() => {
        GetExamSubmission(0, 1);
    });
</script>
{#if showEmptyMessage}
    <div class="flex flex-col items-center justify-center mb-12">
        <p class="text-4xl dark:text-white">Nothing to grade... Grab yourself a cup of coffee</p>
        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-1/2 h-64">
            <path stroke-linecap="round" stroke-linejoin="round" d="M10.125 2.25h-4.5c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125v-9M10.125 2.25h.375a9 9 0 019 9v.375M10.125 2.25A3.375 3.375 0 0113.5 5.625v1.5c0 .621.504 1.125 1.125 1.125h1.5a3.375 3.375 0 013.375 3.375M9 15l2.25 2.25L15 12" />
          </svg>
          <Button href="/instructor" color="blue" pill>Back to Profile</Button>    
        </div>
{/if}


<div class="grid grid-cols-4 gap-4">
    <!-- Phần hiển thị bức vẽ chiếm 4/5 -->
    <div class="col-span-4 md:col-span-3">
        {#each reviewPagination.content as item}
            <img
                style="position: relative;"
                src={item.artLink}
                alt="Bức vẽ"
                class="h-auto max-w-full"
            />
        {/each}
    </div>
    <!-- Phần thông tin bức vẽ chiếm 1/5 -->
    <div class="col-span-4 md:col-span-1 bg-green-100">
        {#each reviewPagination.content as item}
            <div class="flex mt-6 ml-4">
                <div class="w-2/3">
                    <h1>
                        Student ID: {getAllExamInfo.customerInfo.customerID}
                    </h1>
                    <h1>
                        Student Name: {getAllExamInfo.customerInfo.fullName}
                    </h1>
                    <h1>Exam ID: {item.id}</h1>
                    <!-- <Button color="alternative" on:click={Show}>Alternative</Button> -->
                </div>

                <div class="w-1/3">
                    <div class="border-4 border-current w-24 h-24 text-center">
                        <Score bind:score={getScore} />
                    </div>
                </div>
            </div>
            <br />
            <h1
                class="py-4 px-6 text-2xl font-medium text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ..."
            >
                Course Name: {getAllExamInfo.course.name}
            </h1>
            <h1
                class="py-4 px-6 text-xl text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ..."
            >
                Course Content: {getAllExamInfo.courseContent.title}
            </h1>

            <label
                for="message"
                class="block mb-2 text-sm font-medium text-gray-900 dark:text-white"
                >Your comment</label
            >
            <textarea
            bind:value={gradeExam.comment}
                id="message"
                rows="4"
                class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                placeholder="Write your comment here..."
            />

            <div class="inline-flex rounded-md shadow-sm" role="group">
                <Button on:click={GradeExam} color="blue">Submit</Button>
                {#if reviewPagination.first !== true}
                    <PaginationItem large on:click={previous}
                        >Previous</PaginationItem
                    >
                {/if}
                {#if reviewPagination.last !== true}
                    <PaginationItem large on:click={next}>Next</PaginationItem>
                {/if}
            </div>
        {/each}
    </div>
</div>

<style>
    .pic {
        width: 1121px;
        height: 750px;
    }
</style>
