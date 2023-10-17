<script lang="ts">
  import axios from "axios";
  import {
    GetCookie,
    apiBaseUrl,
  } from "../../../service";
  import { onMount } from "svelte";
    import { GetCookie, apiBaseUrl } from "../../../service";

  interface Instructorinterface {
    email: string;
    password: string;
    fullName: string;
    specialization: string;
    phone: string;
    avatar: string;
  }
  let InstructorInfo: Instructorinterface = [];
  async function getInstructorInfo() {
    try {
      await axios
        .get(apiBaseUrl + "instructor", {
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
        </div>
      </div>
    </div>
  </div>
</div>
