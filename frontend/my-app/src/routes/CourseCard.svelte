<script>
    import Star from "./Star.svelte";
    
</script>
<div class="course-card">
    <img class="thumbnail" src="https://edyoda.s3.amazonaws.com/media/blog-images/6.png" style="width: 230px; height: 130px;"/>
    <h3>LAMP Stack Vs MEAN </h3>
    <span class="author">Author</span>
    <p class="disc">
        In today’s dynamic world, rapid web application 
    </p>
   <Star />
   <button  style="border: none; background-color: white;"><svg xmlns="http://www.w3.org/2000/svg" style="margin-bottom: 10px;margin-left: 10px;"  width="25" height="25" fill="currentColor" class="bi bi-cart4" viewBox="0 0 16 16">
    <path d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z"/>
  </svg></button>
</div>

<style>
    
    .course-card
    {
        width: 230px;
        height: 300px;
        margin: 1%;
        
        vertical-align: top;
        display: inline-block;
        box-shadow: 2px 2px 4px #ccc;
        border-radius: 5px;
    }

    .thumbnail
    {
        width: 100%;
        border-top-right-radius: 5px;
        border-top-left-radius: 5px;

    }

    h3
    {
        padding: 10px 24px;
        color: #000;
        font-size: 18px;
        text-align: left;
        margin: 0;
        font-weight: 600;
    }

    .author
    {
        padding-top: 4px;
        padding-left: 24px;
        margin: 0;
        font-size: .9em;
        font-weight: 500;
        line-height: 2;
        color: #0096ff;
        text-align: left;
    }

    .date
    {
        
        padding-top: 4px;
        font-family: 'Roboto', sans-serif;
        font-size: 14px;
        font-weight: 300;
        font-style: normal;
        color: #000;
    }
    .disc
    {
        padding: 0 24px;
        opacity: .5;
        font-size: 14px;
        font-weight: 400;
        font-style: normal;
        font-stretch: normal;
        line-height: 1.43;
        letter-spacing: .35px;
        text-align: left;
        color: rgba(0,0,0.6);
        margins:4px 0;
    }

</style>