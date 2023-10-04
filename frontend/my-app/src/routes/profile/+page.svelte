<script lang="ts">
  import axios from "axios";
    import {GetCookie, apiBaseUrl} from "../../service";
  import { onMount } from "svelte";
    interface CustomerInterface{
        customerID: number,
        fullName: string,
        birthDate: Date,
        gender: number,
        email: string,
        joinDate: Date
    }
    let customerInfo:CustomerInterface = [];
    async function getCustomerInfo(){
        try{
            await axios.get(apiBaseUrl + 'customer',
            {
                headers: {
                    Authorization: `Bearer ${GetCookie("USER")}`,
                }
            }
            ).then((response) => {
                 if(response.status === 200){
                    console.log(response.data);
                    customerInfo = response.data;
                 }
            })
        }catch(e){}
    }
    onMount(() => {
        getCustomerInfo();
    })
</script>
<div class="bg-gray-100 mt-20">
    <div class="container mx-auto py-8">
        <div class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4">
            <div class="col-span-4 sm:col-span-3">
                <div class="bg-white shadow rounded-lg p-6">
                    <div class="flex flex-col items-center">
                        <img src="https://randomuser.me/api/portraits/men/94.jpg" class="w-32 h-32 bg-gray-300 rounded-full mb-4 shrink-0">

                        
                        <h1 class="text-xl font-bold">{customerInfo.fullName}</h1>
                        
                        <div class="mt-6 flex flex-wrap gap-4 justify-center">
                            <a href="#" class="bg-orange-500 text-white py-2 px-4 rounded">Edit Profile</a>
                            
                        </div>
                    </div>
                    <hr class="my-6 border-t border-gray-300">
                    <div class="flex flex-col">
                        <span class="text-gray-600 uppercase font-bold tracking-wider mb-2">Skills</span>
                        <ul>
                            <li class="mb-2">JavaScript</li>
                            <li class="mb-2">React</li>
                            <li class="mb-2">Node.js</li>
                            <li class="mb-2">HTML/CSS</li>
                            <li class="mb-2">Tailwind Css</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-span-4 sm:col-span-9">
                <div class="bg-white shadow rounded-lg p-6">
                    <div class="bg-white p-3 shadow-sm rounded-sm">
                        <div class="flex items-center space-x-2 font-semibold text-gray-900 leading-8">
                            <span class="text-green-500">
                                <svg class="h-5" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24"
                                    stroke="currentColor">
                                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                        d="M16 7a4 4 0 11-8 0 4 4 0 018 0zM12 14a7 7 0 00-7 7h14a7 7 0 00-7-7z" />
                                </svg>
                            </span>
                            <span class="tracking-wide">About</span>
                        </div>
                        <div class="text-gray-700">
                            <div class="grid md:grid-cols-2 text-sm">
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Full Name</div>
                                    <div class="px-4 py-2">{customerInfo.fullName}</div>
                                </div>
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Gender</div>
                                    <div class="px-4 py-2">{customerInfo.gender}</div>
                                </div>
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Customer ID</div>
                                    <div class="px-4 py-2">{customerInfo.customerID}</div>
                                </div>
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Join Date</div>
                                    <div class="px-4 py-2">{customerInfo.joinDate}</div>
                                </div>
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Email.</div>
                                    <div class="px-4 py-2">
                                        <a class="text-blue-800" href="mailto:jane@example.com">{customerInfo.email}</a>
                                    </div>
                                </div>
                                <div class="grid grid-cols-2">
                                    <div class="px-4 py-2 font-semibold">Birthday</div>
                                    <div class="px-4 py-2">{customerInfo.birthDate}</div>
                                </div>
                            </div>
                        </div>
                        
                        
                    </div>


                    <h2 class="text-xl font-bold mt-6 mb-4">Experience</h2>
                    
                </div>
            </div>
        </div>
    </div>
</div>