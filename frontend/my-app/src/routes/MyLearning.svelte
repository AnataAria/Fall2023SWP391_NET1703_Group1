<script lang="ts">
  import Header from "./Header.svelte";

    var i = 0;
    let percent: number;
    percent = 90;
    // function move() {
    //     if (i == 0) {
    //         i = 1;
    //         var elem = document.getElementById("myBar");
    //         var percent = document.getElementById('percent');
    //         var width = 10;
    //         var id = setInterval(frame, 10);
    //         function frame() {
    //             if (width >= 100) {
    //                 clearInterval(id);
    //                 i = 0;
    //             } else {
    //                 width++;
    //                 elem.style.width = width + "%";
    //                 percent.innerHTML = width + "% complete";
    //             }
    //         }
    //     }
    // }
</script>
<Header></Header>
<head
    ><link
        href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap"
        rel="stylesheet"
    />
</head>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="v1_4">
        <div class="v1_5" />
        <span class="v1_10">All courses</span>
        <span class="v1_9">My Learning</span>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col">
            <div class="card" style="width: 18rem;">
                <a href="#" style="text-decoration: none;">
                    <img src="" class="card-img-top" alt="Card Img" />
                </a>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Name</p>
                    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    <div id="myProgress">
                        <div id="myBar" style=" width: {percent}%" />
                    </div>
                    <div id="percent" style="font-size: 14px; color: #6A6F73;">
                        {percent}% complete
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem;">
                <a href="#" style="text-decoration: none;">
                    <img src="" class="card-img-top" alt="Card Img" />
                </a>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Name</p>
                    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    <div id="myProgress">
                        <div id="myBar" style=" width: {percent}%" />
                    </div>
                    <div id="percent" style="font-size: 14px; color: #6A6F73;">
                        {percent}% complete
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="width: 18rem;">
                <a href="#" style="text-decoration: none;">
                    <img src="" class="card-img-top" alt="Card Img" />
                </a>
                <div class="card-body">
                    <h5 class="card-title">Card title</h5>
                    <p class="card-text">Name</p>
                    <!-- <a href="#" class="btn btn-primary">Go somewhere</a> -->
                    <div id="myProgress">
                        <div id="myBar" style=" width: {percent}%" />
                    </div>
                    <div id="percent" style="font-size: 14px; color: #6A6F73;">
                        {percent}% complete
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
    * {
        box-sizing: border-box;
    }
    body {
        font-size: 14px;
    }
    .v1_4 {
        width: 100%;
        /* height: 1024px; */
        background: rgba(255, 255, 255, 1);
        opacity: 1;
        position: relative;
        top: 0px;
        left: 0px;
        overflow: hidden;
    }
    .v1_5 {
        width: 100%;
        height: 188px;
        background: rgba(45, 47, 49, 1);
        opacity: 1;
        position: relative;
        top: 0px;
        left: 0px;
        overflow: hidden;
    }
    .v1_10 {
        width: 178px;
        color: rgba(255, 255, 255, 1);
        position: absolute;
        top: 158px;
        left: 277px;
        text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
        font-family: Black Han Sans;
        font-weight: Regular;
        font-size: 14px;
        opacity: 1;
        text-align: left;
    }
    .v1_9 {
        width: 464px;
        color: rgba(255, 255, 255, 1);
        position: absolute;
        top: 81px;
        left: 277px;
        font-family: Black Han Sans;
        font-weight: Regular;
        font-size: 40px;
        opacity: 1;
        text-align: left;
    }
    .name {
        color: #fff;
    }
    /* .card {
        margin-top: 80px;
        width: 464px;
        position: absolute;
        left: 277px;
        font-weight: Regular;
        opacity: 1;
        text-align: left;
    } */
    .card-title {
        font-weight: bold;
        color: #2d2f31;
        font-size: 20px;
    }
    .card-text {
        color: #6a6f73;
        font-size: 14px;
    }
    #myProgress {
        width: 100%;
        background-color: #d1d7dc;
    }

    #myBar {
        width: 0%;
        height: 5px;
        background-color: #5624d0;
        text-align: center; /* To center it horizontally (if you want) */
        line-height: 30px; /* To center it vertically */
        color: white;
    }
</style>
