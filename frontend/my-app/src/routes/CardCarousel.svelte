<script>

  import { Card, Button, Rating, Badge } from 'flowbite-svelte';

</script>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>css: buoi 4</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.0.7/dist/css/splide.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.0.7/dist/css/splide-core.min.css">
    <link rel="stylesheet" href="style.css">
</head>
<script>
  document.addEventListener( 'DOMContentLoaded', function() {
    var splide = new Splide( '.splide', {
        type   : 'loop',
        perPage: 3,
    }  );
     
    splide.mount();
  } );
</script>
<body>
    <h1 style="border: 1px solid red ;">HENTAIVN</h1>

    <!-- <div class="container">
        <div class="card-carousel">
            <div class="card_block">
                <div class="card_img"><img src="./Hinh-nen-ho-cute-14.jpg" alt=""></div>
                <div class="card_infor">
                    <p>Tilte: <span>hổ báo</span></p>
                    <p>fullname: <span>Hổ náo</span></p>
                    <p>Yob: <span>1999</span></p>
                    <p>Email: <span>hobungbu</span></p>
                </div>
                <div class="card_control">
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Detailed</a>
                    </div>
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="card_block">
                <div class="card_img"><img src="./295807796_1033431740708857_6651821635999302051_n.jpg" alt=""></div>
                <div class="card_infor">
                    <p>Tilte: <span>yang ho pig</span></p>
                    <p>fullname: <span>heo to</span></p>
                    <p>Yob: <span>1999</span></p>
                    <p>Email: <span>heo tập gym</span></p>
                </div>
                <div class="card_control">
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Detailed</a>
                    </div>
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="card_block">
                <div class="card_img"><img src="./download.jpg" alt=""></div>
                <div class="card_infor">
                    <p>Tilte: <span>anh rem hoi nho</span></p>
                    <p>fullname: <span>rem</span></p>
                    <p>Yob: <span>unknow</span></p>
                    <p>Email: <span>unknow</span></p>
                </div>
                <div class="card_control">
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Detailed</a>
                    </div>
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="card_block">
                <div class="card_img"><img src="./Hinh-anh-cute-chibi.jpg" alt=""></div>
                <div class="card_infor">
                    <p>Tilte: <span>ảnh hiện tại</span></p>
                    <p>fullname: <span>ý nghĩa</span></p>
                    <p>Yob: <span>1999</span></p>
                    <p>Email: <span>hoaroicuphat</span></p>
                </div>
                <div class="card_control">
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Detailed</a>
                    </div>
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Add to Cart</a>
                    </div>
                </div>
            </div>
            <div class="card_block">
                <div class="card_img"><img src="./9814f366771cb8117bb128544ce8f7c1.jpg" alt=""></div>
                <div class="card_infor">
                    <p>Tilte: <span>thỏ bảy màu</span></p>
                    <p>fullname: <span>thỏ bảy màu</span></p>
                    <p>Yob: <span>1999</span></p>
                    <p>Email: <span>hoaroicuphat</span></p>
                </div>
                <div class="card_control">
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Detailed</a>
                    </div>
                    <div class="card_control_block">
                        <a class="btn-card_control" href="#">Add to Cart</a>
                    </div>
                </div>
            </div>
        </div>
    </div> -->
    <div class="px-96 mt-64">
      <section class="splide mt-96" aria-label="Splide Basic HTML Example">
        <div class="splide__track">
              <ul class="splide__list">
                  <li class="splide__slide"> <div>
                    
                </div></li>
                <li class="splide__slide"> <div>
                  <Card padding="none" class="w-64 h-auto" href="">
                    <a href="/">
                      <img class="p-11 rounded-t-sm" src="https://static.miraheze.org/bluearchivewiki/0/0f/Arisu.png?version=8fe2ae44d97dabab9a4d147a3bbd158c" alt="product 1" />
                    </a>
                    <div class="px-5 pb-5">
                      <a href="/">
                        <h5 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white overflow-x-hidden"></h5>
                      </a>
                      <a href="/">
                        <h5 class="text-sm font-semibold tracking-tight text-gray-900 dark:text-white">By </h5>
                      </a>
                      <Rating rating={4} size={24} class="mt-2.5 mb-5">
                        <Badge slot="text" class="ml-3">4</Badge>
                      </Rating>
                      <div class="flex justify-between items-center">
                        <span class="text-3xl font-bold text-gray-900 dark:text-white"></span>
                        <Button >Add Cart</Button>
                      </div>
                    </div>
                  </Card>
              </div></li>
                <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                  <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                  <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                  <li class="splide__slide"> <div class="card_block">
                    <div class="card_img"><img src="./download.jpg" alt=""></div>
                    <div class="card_infor">
                        <p>Tilte: <span>anh rem hoi nho</span></p>
                        <p>fullname: <span>rem</span></p>
                        <p>Yob: <span>unknow</span></p>
                        <p>Email: <span>unknow</span></p>
                    </div>
                    <div class="card_control">
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Detailed</a>
                        </div>
                        <div class="card_control_block">
                            <a class="btn-card_control" href="#">Add to Cart</a>
                        </div>
                    </div>
                </div></li>
                <li class="splide__slide"> <div class="card_block">
                  </li>
              </ul>
        </div>
      </section>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/@splidejs/splide@4.0.7/dist/js/splide.min.js"></script>
    <script src="./style.js"></script>
</body>
</html>

<style>
  *{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}
/* html{
    font-size: 62.5%;
    font-family: sans-serif;
} */
body{
    font-size: 1.6rem;
}
.container{
    
    max-width: 1320px;
    margin: 0 auto;
    padding: 0 0.5rem;

}
.card_block{
border: 2px solid green;
    width: 25.6rem;
    margin: 0.3rem;
    padding: 0.3rem;
    background-color: #fafafa;
    transition: 0.3s;
    
}

.card_block:hover{
    box-shadow: 3px 3px  8px 1px #464545;
}
.card_img{
   
    height: 24.6rem;
    
    
}
.card_img img{
    display: block;
    width: 100%;
    height: 100%;
}
.card_infor p{
    font-size: 1.4rem;
    font-weight: 700;

}
.card_infor{
    padding: 0.5rem 0;
}
.card_infor p span{
    font-weight: 400;
}

.card_control{
    display: flex;
}
.card_block .card_control_block:first-child{
    border-right: 1px solid #eeee;
}
.card_block .card_control_block:last-child{
    border-left: 1px solid #eeee;
}
.card_control_block{
    width: 50%;
}
.btn-card_control{
    display: block;
    width: 100%;
    background-color: #069d83;
    color: #eeee;
    height: 3rem;
    transition: 0.3s;
    display: flex;
    justify-content: center;
    align-items: center;
    text-decoration: none;
}
.btn-card_control:hover{
    background-color: #00c9a7;
}
.card-carousel{
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
}
</style>