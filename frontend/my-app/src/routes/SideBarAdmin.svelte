<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
<!-- This is an example component -->
<div class="flex flex-row h-full w-full">
    <!-- Sidebar -->
        <nav class="bg-gray-900 w-full  justify-between flex flex-col ">
          <div class="mt-10 mb-10">
            <a href="#">
              <img src="https://randomuser.me/api/portraits/women/76.jpg" class="rounded-full w-10 h-10 mb-3 mx-auto"/>
              
              <p class="h-5 w-5 text-gray-300 mx-12 text-xs flex flex-row"><i class="fa-solid fa-clipboard-user mr-2 text-sm"></i>Staff</p>
            </a>        
            <div class="mt-10">
              <ul>
                <li class="mb-6">
                  <a href="#">
                    <span class = "flex flex-row  ">
                      <div class = "ml-3">
                      <svg
                        class="fill-current h-5 w-5 text-gray-300 hover:text-green-500 "
                        viewBox="0 0 24 24"
                        fill="none"
                        xmlns="http://www.w3.org/2000/svg"
                      >
                        <path
                          fill-rule="evenodd"
                          clip-rule="evenodd"
                          d="M14 3V3.28988C16.8915 4.15043 19 6.82898 19 10V17H20V19H4V17H5V10C5 6.82898 7.10851 4.15043 10 3.28988V3C10 1.89543 10.8954 1 12 1C13.1046 1 14 1.89543 14 3ZM7 17H17V10C17 7.23858 14.7614 5 12 5C9.23858 5 7 7.23858 7 10V17ZM14 21V20H10V21C10 22.1046 10.8954 23 12 23C13.1046 23 14 22.1046 14 21Z"
                          fill="currentColor"
                        />
                      </svg>
                      </div>
                      <div class = "ml-2">
                      <p class="h-5 w-5 text-gray-300 text-xs">Notification</p>
                      </div>
                    </span>
                  </a>
                </li>
                <li class="mb-6">
                  <a href="#" on:click={()=>{
                    window.location.href = "/staff/accountmanager";
                  }}>
                    <span  class = "flex flex-row  ">
                      <div class = "ml-3">
                      <svg
                        class="fill-current h-5 w-5 text-gray-300 hover:text-green-500"
                        viewBox="0 0 24 24"
                      >
                        <path
                          d="M12 4a4 4 0 014 4 4 4 0 01-4 4 4 4 0 01-4-4 4 4 0
                            014-4m0 10c4.42 0 8 1.79 8 4v2H4v-2c0-2.21 3.58-4
                            8-4z"
                        ></path>
                      </svg>
                      </div>
                      <div class = "ml-2">
                        <p class="h-5 w-5 text-gray-300 text-xs">Account Manager</p>
                      </div>
                    </span>
                  </a>
                </li>
                <li class="mb-6">
                  <a href="#" on:click={()=>{
                    window.location.href = "/staff/browsecourses";
                  }}>
                    <span class = "flex flex-row">
                      <div class = "ml-3">
                      <svg
                        class="fill-current h-5 w-5 text-gray-300 mx-auto hover:text-green-500"
                        viewBox="0 0 24 24"
                      >
                        <path
                          d="M12 13H7v5h5v2H5V10h2v1h5v2M8
                            4v2H4V4h4m2-2H2v6h8V2m10 9v2h-4v-2h4m2-2h-8v6h8V9m-2
                            9v2h-4v-2h4m2-2h-8v6h8v-6z"
                        ></path>
                      </svg>
                      </div>
                      <div class = "ml-2">
                        <p class="h-5 w-5 text-gray-300 text-xs">Browse courses</p>
                      </div>
                    </span>
                  </a>
                </li>
                <li class="mb-6">
                  <a href="#" on:click={()=>{
                    window.location.href = "/staff/revenuestatistics";
                  }}>
                    <span class = "flex flex-row">
                      <div class = "ml-3">
                        <i class="fa-solid fa-money-check-dollar text-gray-300"></i>
                      </div>
                      <div class = "ml-2">
                        <p class="h-5 w-5 text-gray-300 text-xs">Revenue statistics</p>
                      </div>
                    </span>
                  </a>
                </li>
                
              </ul>
            </div>
          </div>
          
        </nav>
    
      </div>