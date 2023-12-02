<div id='MainLoader'>
    <div class="preloader flex-column justify-content-center align-items-center" id="loader">
        <img class="animation__shake" src="<?php echo MAIN_LOGO; ?>" alt="<?php echo APP_NAME; ?>" height="90" width="90">
    </div>
</div>
<script>
    window.onload = function() {
        document.getElementById("MainLoader").style.display = "none";
    }
</script>