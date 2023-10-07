<section class="bg-indigo-50 indigo:bg-indigo-900">
    <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">

        <div class="w-full bg-white rounded-lg shadow indigo:border md:mt-0 sm:max-w-md xl:p-0 indigo:bg-indigo-800 indigo:border-indigo-700">
            <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                <h1 class="text-xl font-bold leading-tight tracking-tight text-indigo-900 md:text-2xl indigo:text-white">
                    Create and account
                </h1>
                <form class="space-y-4 md:space-y-5" action="#">
                    <div>
                        <label for="fullname" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Full Name</label>
                        <input type="text" name="fullname" id="fullname" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500"  required="">
                    </div>
                    <div>
                        <label for="email" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Your email</label>
                        <input type="email" name="email" id="email" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500" placeholder="name@company.com" required="">
                    </div>
                    <div>
                        <label for="Birthday" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Birthday</label>
                        <input type="text" name="Birthday" id="Birthday" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500"  required="">
                    </div>
                    <div>
                        <label for="Gender" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Gender</label>
                        <input type="text" name="Gender" id="Gender" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500"  required="">
                    </div>
                    <div>
                        <label for="password" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Password</label>
                        <input type="password" name="password" id="password" placeholder="••••••••" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500" required="">
                    </div>
                    <div>
                        <label for="confirm-password" class="block mb-2 text-sm font-medium text-indigo-900 indigo:text-white">Confirm password</label>
                        <input type="confirm-password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-indigo-50 border border-indigo-300 text-indigo-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:placeholder-indigo-400 indigo:text-white indigo:focus:ring-blue-500 indigo:focus:border-blue-500" required="">
                    </div>
                    <div class="flex items-start">
                        <div class="flex items-center h-5">
                          <input id="terms" aria-describedby="terms" type="checkbox" class="w-4 h-4 border border-indigo-300 rounded bg-indigo-50 focus:ring-3 focus:ring-primary-300 indigo:bg-indigo-700 indigo:border-indigo-600 indigo:focus:ring-primary-600 indigo:ring-offset-indigo-800" required="">
                        </div>
                        <div class="ml-3 text-sm">
                          <label for="terms" class="font-light text-indigo-500 indigo:text-indigo-300">I accept the <a class="font-medium text-primary-600 hover:underline indigo:text-primary-500" href="#">Terms and Conditions</a></label>
                        </div>
                    </div>
                    <button type="submit" class="w-full text-white bg-red-600 hover:bg-red-700 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center ">Create an account</button>
                    <p class="text-sm font-light text-indigo-500 indigo:text-indigo-400">
                        Already have an account? <a href="#" class="font-medium text-primary-600 hover:underline indigo:text-primary-500">Login here</a>
                    </p>
                </form>
            </div>
        </div>
    </div>
  </section>