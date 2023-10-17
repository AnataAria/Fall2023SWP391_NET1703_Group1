<script lang="ts">
  import axios from "axios";
  import { GetCookie, apiBaseUrl } from "../../../service";
  import { onMount } from "svelte";
  import headerImage from "$lib/assets/Header.jpg";
 
  interface Instructorinterface {
    email: string;
    password: string;
    fullName: string;
    specialization: string;
    phone: string;
  }
  let InstructorInfo: Instructorinterface = [];
  async function getInstructorInfo() {
    try {
      await axios
        .get(apiBaseUrl + "customer", {
          headers: {
            Authorization: `Bearer ${GetCookie("USER")}`,
          },
        })
        .then((response) => {
          if (response.status === 200) {
            console.log(response.data);
            InstructorInfo = response.data;
          }
        });
    } catch (e) {}
  }
  onMount(() => {
    getInstructorInfo();
  });
</script>

<link
  rel="stylesheet"
  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
/>
<div class="bg-gray-100 pt-20">
  <div class="container mx-auto py-8">
    <div class="grid grid-cols-4 sm:grid-cols-12 gap-6 px-4">
      <!--Left-->
      <div class="col-span-4 sm:col-span-3">
        <div class="bg-white shadow rounded-lg p-6">
          <div class="flex flex-col">
            <div class="items-center">
              <img
                class="mx-auto w-2/5 rounded-full"
                src="https://scontent.xx.fbcdn.net/v/t1.15752-9/384527701_207166732257295_191374629976122951_n.jpg?stp=dst-jpg_s206x206&_nc_cat=109&ccb=1-7&_nc_sid=aee45a&_nc_ohc=vAuht4IB9AgAX8LtnXT&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AdTaA-FOdDgEHBlJNHUe3qr7Kqe3pd6wM66h30NWjjGCUA&oe=65447FAE"
                alt=""
              />
            </div>

            <br />
            <div class="text-center">
              <h1 class="text-2xl font-bold mb-4">Contact</h1>

              <div class="text-lg text-gray-500 p-0.5">
                <i class="fa fa-envelope" />Email address
              </div>
              <div class="font-medium p-0.5">{InstructorInfo.email}</div>

              <div class="text-lg text-gray-500 p-0.5">
                <i class="fa fa-phone" />Phone number
              </div>
              <div class="font-medium p-0.5">{InstructorInfo.phone}</div>
            </div>
          </div>
          <hr class="my-6 border-t border-gray-300" />
        </div>
      </div>
      <!--Right-->
      <div class="col-span-4 sm:col-span-9">
        <div class="bg-white shadow rounded-lg p-6">
          <h1 class="text-2xl font-bold mb-4">General information</h1>
          <h2 class="text-xl font-medium mb-4">About Me</h2>
          <p class="text-gray-700">
            Tincidunt quam neque in cursus viverra orci, dapibus nec tristique.
            Nullam ut sit dolor consectetur urna, dui cras nec sed. Cursus risus
            congue arcu aenean posuere aliquam.
          </p>

          <br />
          <!--1-->
          <div class="grid grid-cols-2 gap-4">
            <div>
              <div>FullName</div>
              <div class="font-medium">{InstructorInfo.fullName}</div>
            </div>
            <div>
              <div>Join Date</div>
              <div class="font-medium">12-09-2021</div>
            </div>

            <div>
              <div>Specialization</div>
              <div class="font-medium">{InstructorInfo.specialization}</div>
            </div>

            <div>
              <div>Birthday</div>
              <div class="font-medium">01-12-2003</div>
            </div>
          </div>
          <hr class="my-6 border-t border-gray-300" />
          <!--2-->
          <div>
            <div class="grid grid-cols-5 gap-2">
              <div>
                <img
                  src={headerImage}
                  class="mr-3 h-6 lg:h-20"
                  alt="Ademy Logo"
                />
              </div>
              <!-- ... -->

              <h1
                class=" text-3xl subpixel-antialiased font-bold tracking-wider text-justify text-red-400 pt-4"
              >
                My Courses
              </h1>
              <!-- ... -->
              <div />
              <div />
              <div class="pt-3 pl-10">
                <a
                  href="#"
                  class="inline-flex items-center px-8 w-36 h-12 text-sm text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                >
                  Add Course</a
                >
              </div>
            </div>
          </div>
          <br />
          <div class="pr-7">
            <form>
              <label
                for="default-search"
                class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white"
                >Search</label
              >
              <div class="relative">
                <div
                  class="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none"
                >
                  <svg
                    class="w-4 h-4 text-gray-500 dark:text-gray-400"
                    aria-hidden="true"
                    xmlns="http://www.w3.org/2000/svg"
                    fill="none"
                    viewBox="0 0 20 20"
                  >
                    <path
                      stroke="currentColor"
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"
                    />
                  </svg>
                </div>
                <input
                  type="search"
                  id="default-search"
                  class="block w-full p-4 pl-10 text-sm text-gray-900 border border-gray-300 rounded-lg bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
                  placeholder="Search Mockups, Logos..."
                  required
                />
                <button
                  type="submit"
                  class="text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
                  >Search</button
                >
              </div>
            </form>
          </div>
          <div>
            <br>
            <!-- This is an example component -->
<div class=" mx-auto">

	<div class="flex flex-col pr-8">
    <div class="overflow-x-auto shadow-md sm:rounded-lg">
        <div class="inline-block min-w-full align-middle">
            <div class="overflow-hidden ">
                <table class="w-full divide-y divide-gray-200 table-fixed dark:divide-gray-700">
                    <thead class="bg-gray-100 dark:bg-gray-700">
                        <tr>
                          <th scope="col" class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                            Course ID
                        </th>
                            <th scope="col" class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                              Course Name
                            </th>
                            <th scope="col" class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                              Description
                            </th>
                            <th scope="col" class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                              Duration
                            </th>
                            <th scope="col" class="py-3 px-6 text-xs font-medium tracking-wider text-left text-gray-700 uppercase dark:text-gray-400">
                              Price
                          </th>
                            <th scope="col" class="p-4">
                                <span class="sr-only">Edit</span>
                            </th>
                        </tr>
                    </thead>
                    <tbody class="bg-white divide-y divide-gray-200 dark:bg-gray-800 dark:divide-gray-700">
                        <tr class="hover:bg-gray-100 dark:hover:bg-gray-700">
                           
                            <td class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ...">Apple Imac 27xxxxxxxxxxxxxxxxxxxx"</td>
                            <td class="py-4 px-6 text-sm font-medium text-gray-500 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ...">Desktop PC</td>
                            <td class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white overflow-ellipsis overflow-hidden ...">$1999</td>
                            <td class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white ">$1999</td>
                            <td class="py-4 px-6 text-sm font-medium text-gray-900 whitespace-nowrap dark:text-white">$1999</td>
                            <td class="py-4 px-6 text-sm font-medium text-right whitespace-nowrap pr-16">
                                <a href="#" class="text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
                            </td>
                        </tr>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

	
</div>

          </div>
        </div>

        <!-- -->
      </div>
    </div>
  </div>
</div>


