<script>
    var token = (window.location.href).split("ftpadbc=")[1];
    if(token != null || token != ""){
        localStorage.setItem("ftpadb-binga", token);
    }
</script>
<?php
    $TOKEN = explode("ftpadbc=",$_SERVER['REQUEST_URI'])[1];
    //echo $TOKEN;
?>
