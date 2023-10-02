<div class="Stars" style="--rating: {score};" aria-label="Rating of this product is 2.3 out of 5."></div>
<script lang="ts">
  export let score:number = 4.2;
</script>
<style>
    :root {
  --star-size: 30px;
  --star-color: #908181;
  --star-background: #fc0;
}

.Stars {
    padding-left: 20px;
  --percent: calc(var(--rating) / 5 * 100%);
  
  display: inline-block;
  font-size: var(--star-size);
  font-family: Times; 
  line-height: 1;
  
  &::before {
    content: '★★★★★';
    letter-spacing: 3px;
    background: linear-gradient(90deg, var(--star-background) var(--percent), var(--star-color) var(--percent));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
  }
}



body {
  background: transparent;
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
}

* {
  position: relative;
  box-sizing: border-box;
}
</style>