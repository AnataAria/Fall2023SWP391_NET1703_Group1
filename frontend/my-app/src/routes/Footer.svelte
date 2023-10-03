<!-- <link rel="stylesheet" href="/src/lib/style.css" /> -->
<script>
  import {
    Footer,
    FooterCopyright,
    FooterLinkGroup,
    FooterLink,
    FooterBrand,
    FooterIcon,
  } from "flowbite-svelte";
  import {
    FacebookSolid,
    GithubSolid,
    DiscordSolid,
    TwitterSolid,
  } from "flowbite-svelte-icons";
  // import Dribble from "../../utils/icons/Dribble.svelte";
</script>

<Footer footerType="socialmedia">
  <div class="md:flex md:justify-between">
    <div class="mb-6 md:mb-0">
      <FooterBrand
        href="/"
        src="/src/lib/assets/Header.jpg"
        alt="Ademy"
        imgClass="mr-3 h-6 lg:h-20"
      />
    </div>
    <div class="grid grid-cols-2 gap-8 sm:gap-6 sm:grid-cols-3">
      <div>
        <h2
          class="mb-6 text-sm font-semibold text-gray-900 uppercase dark:text-white"
        >
          Resources
        </h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="/">Flowbite</FooterLink>
          <FooterLink liClass="mb-4" href="/">Tailwind CSS</FooterLink>
        </FooterLinkGroup>
      </div>
      <div>
        <h2
          class="mb-6 text-sm font-semibold uppercase text-gray-900 dark:text-white"
        >
          Follow us
        </h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="https://github.com/AnataAria/Fall2023SWP391_NET1703_Group1">GitHub</FooterLink>
          <FooterLink liClass="mb-4" href="/">Discord</FooterLink>
        </FooterLinkGroup>
      </div>
      <div>
        <h2
          class="mb-6 text-sm font-semibold uppercase text-gray-900 dark:text-white"
        >
          Legal
        </h2>
        <FooterLinkGroup>
          <FooterLink liClass="mb-4" href="/">Privacy Policy</FooterLink>
          <FooterLink liClass="mb-4" href="/">Terms & Conditions</FooterLink>
        </FooterLinkGroup>
      </div>
    </div>
  </div>
  <hr class="my-6 border-gray-200 sm:mx-auto dark:border-gray-700 lg:my-8" />
  <div class="sm:flex sm:items-center sm:justify-between">
    <FooterCopyright href="/" by="Ademy™" />
    <div class="flex mt-4 space-x-6 sm:justify-center sm:mt-0">
      <FooterIcon href="/">
        <FacebookSolid
          class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white"
        />
      </FooterIcon>
      <FooterIcon href="/">
        <DiscordSolid
          class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white"
        />
      </FooterIcon>
      <FooterIcon href="/">
        <TwitterSolid
          class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white"
        />
      </FooterIcon>
      <FooterIcon href="https://github.com/AnataAria/Fall2023SWP391_NET1703_Group1">
        <GithubSolid
          class="w-4 h-4 text-gray-500 dark:text-gray-500 hover:text-gray-900 dark:hover:text-white"
        />
      </FooterIcon>
      <!-- <FooterIcon href="/"> -->
        <!-- <Dribble /> -->
      <!-- </FooterIcon> -->
    </div>
  </div>
</Footer>
