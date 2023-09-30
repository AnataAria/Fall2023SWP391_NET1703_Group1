<script lang="ts">
    let input = "";
    function handleSearch(){
        window.location.href = "/search/" + input;
    }
</script>
<form class="form-wrapper cf" >
  <input type="text" placeholder="Lets search some course" required bind:value={input}>
  <button type="submit" on:click={handleSearch}>Search</button>
</form> 

<style>
  .cf:before, .cf:after{
    content:"";
    display:table;
}
 
.cf:after{
    clear:both;
}
 
.cf{
    zoom:1;
} 
/* Form wrapper styling */
.form-wrapper {
    width: 480px;
    padding: 15px;
    margin-right: 400px;
    background: #444;
    background: rgba(0,0,0,0);
    border: none;
    /* box-shadow: 0 1px 1px rgba(0,0,0,.4) inset, 0 1px 0 rgba(255,255,255,.2); */
}
 
/* Form text input */
 
.form-wrapper input {
    width: 330px;
    height: 40px;
    padding: 10px 5px;
    float: left;    
    font: bold 15px 'lucida sans', 'trebuchet MS', 'Tahoma';
    border: 0;
    background: #eee;
    border-radius: 3px 0 0 3px;      
}
 
.form-wrapper input:focus {
    outline: 0;
    background: #fff;
    box-shadow: 0 0 2px rgba(0,0,0,.8) inset;
}
 
.form-wrapper input::-webkit-input-placeholder {
   color: #999;
   font-weight: normal;
   font-style: italic;
}
 
.form-wrapper input:-moz-placeholder {
    color: #999;
    font-weight: normal;
    font-style: italic;
}
 
.form-wrapper input:-ms-input-placeholder {
    color: #999;
    font-weight: normal;
    font-style: italic;
}    
 
/* Form submit button */
.form-wrapper button {
    overflow: visible;
    position: relative;
    float: right;
    border: 0;
    padding: 0;
    cursor: pointer;
    height: 40px;
    width: 110px;
    font: bold 15px/40px 'lucida sans', 'trebuchet MS', 'Tahoma';
    color: #fff;
    text-transform: uppercase;
    background: red;
    border-radius: 0 3px 3px 0;      
    text-shadow: 0 -1px 0 rgba(0, 0 ,0, .3);
}   
   
.form-wrapper button:hover{     
    background: #1fbad6;
    opacity:.9
}   
   
.form-wrapper button:active,
.form-wrapper button:focus{   
    background: #1fbad6;
    outline: 0;   
}
 
.form-wrapper button:before { /* left arrow */
    content: '';
    position: absolute;
    border-width: 8px 8px 8px 0;
    border-style: solid solid solid none;
    border-color: transparent #1fbad6 transparent;
    top: 12px;
    left: -6px;
}
 
.form-wrapper button:hover:before{
    border-right-color: #1fbad6;
}
 
.form-wrapper button:focus:before,
.form-wrapper button:active:before{
        border-right-color: #1fbad6;
}      
 
.form-wrapper button::-moz-focus-inner { /* remove extra button spacing for Mozilla Firefox */
    border: 0;
    padding: 0;
}    
</style>