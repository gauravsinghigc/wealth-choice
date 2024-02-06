function goal1(e){
 window.location.replace("residential.php");
//  alert("residential.php");
}
function goal2(e){
    window.location.replace("commercial.php");
    // alert("commercial.php");
}
function goal3(e){
    window.location.replace("agriculture.php");
    // alert("agriculture.php");
    
}


let Residential = document.getElementById('Residential');
Residential.addEventListener('change', goal1)

let Commercial = document.getElementById('Commercial');
Commercial.addEventListener('change', goal2)

let Agriculture = document.getElementById('Agriculture');
Agriculture.addEventListener('change', goal3)

