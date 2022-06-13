
/**Validar datos nuevo Cliente**/
var form = document.getElementById("nuevoCliente"),
    salida = document.getElementById("msgSalida");

form.addEventListener("submit", function(event){
    event.preventDefault();
    
    salida.innerHTML = "Tienes que completar los siguientes campos:";
  
    var bandera = true,
        elementos = this.elements,
        total = elementos.length;
  
    for (var i = 0; i < total; i++){
        if (!elementos[i].value.length){
            salida.innerHTML += "<br /> -  " + elementos[i].name;
            elementos[i].className = "falta";
            bandera = false;
        }
        else{
            elementos[i].className = null;
        }
    }
  
    if (bandera){
        this.submit();
    }
    else{
        salida.style.display = "block";
    }
}, false);