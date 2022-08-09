document.addEventListener("DOMContentLoaded", function() {
    
    let main_height = document.querySelector('main').offsetHeight;
    let window_height = window.innerHeight;

    if (main_height < window_height) {
        document.querySelector('html').style.overflow = "hidden";
    } else {
        document.querySelector('html').style.overflow = "auto";
    }
    
    window.addEventListener('resize', function(){
            let main_height = document.querySelector('main').offsetHeight;
            let window_height = window.innerHeight;
        
            if (main_height < window_height) {
                document.querySelector('html').style.overflow = "hidden";
            } else {
                document.querySelector('html').style.overflow = "auto";
            }
    });
});