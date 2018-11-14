/*****************************Validar correo***********************************************************/
//
$('.carousel').carousel({
  interval: 5000
})
function validar_correo(campo) {
    var RegExPattern = /^[a-zA-Z0-9\._-]+@[a-zA-Z0-9-]{2,}[.][a-zA-Z]{2,4}$/;
    if ((campo.value.match(RegExPattern)) && (campo.value!='')) {
   // document.getElementById('input_recuperacion_pass').innerHTML='';
    } else {
        alert('correo no valido');
      //  document.getElementById('e_correo').innerHTML='Ingrese un maximo de 6 caracteres entre letras y numeros';
        campo.focus();
    }
}
/****************************************************************************************************/

function pulsar(e) {
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla==8) return true;
    patron =/[a-zA-Z0-9]\d*/;
    te = String.fromCharCode(tecla);
    return patron.test(te);
}


function validarLetras(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==32) return false; // espacio
  if (tecla==8) return true;
    patron =/^([a-z\xc0-\xff]+)$/i;
  te = String.fromCharCode(tecla);
  return patron.test(te);
}

// function validarLetras(e) {
//   tecla = (document.all) ? e.keyCode : e.which;
//   if (tecla==32) return false; // espacio
//   if (tecla==8) return true;
//     patron =/^([a-z\xc0-\xff]+)$/i;
//   te = String.fromCharCode(tecla);
//   return patron.test(te);
// }

function validarNumeros(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==32) return false; // espacio
  if (tecla==8) return true;

    patron = /\d/;
    te = String.fromCharCode(tecla);
    return patron.test(te);
  }

//############# VALIDAR FECHA ############//
var patron_fecha = new Array(2,2,4);
function mascara_fechas(d,sep,pat,nums){
if(d.valant != d.value){
	val = d.value
	largo = val.length
	val = val.split(sep)
	val2 = ''
	for(r=0;r<val.length;r++){
		val2 += val[r]
	}
	if(nums){
		for(z=0;z<val2.length;z++){
			if(isNaN(val2.charAt(z))){
				letra = new RegExp(val2.charAt(z),"g")
				val2 = val2.replace(letra,"")
			}
		}
	}
	val = ''
	val3 = new Array()
	for(s=0; s<pat.length; s++){
		val3[s] = val2.substring(0,pat[s])
		val2 = val2.substr(pat[s])
	}
	for(q=0;q<val3.length; q++){
		if(q ==0){
			val = val3[q]
		}
		else{
			if(val3[q] != ""){
				val += sep + val3[q]
				}
		}
	}
	d.value = val
	d.valant = val
	}
};
//###### FIN VALIDAR FECHAS

//############# VALIDAR IDENTIDAD ############//
var patron_identidad = new Array(4,4,5);
function mascara_identidad(d,sep,pat,nums){
if(d.valant != d.value){
	val = d.value
	largo = val.length
	val = val.split(sep)
	val2 = ''
	for(r=0;r<val.length;r++){
		val2 += val[r]
	}
	if(nums){
		for(z=0;z<val2.length;z++){
			if(isNaN(val2.charAt(z))){
				letra = new RegExp(val2.charAt(z),"g")
				val2 = val2.replace(letra,"")
			}
		}
	}
	val = ''
	val3 = new Array()
	for(s=0; s<pat.length; s++){
		val3[s] = val2.substring(0,pat[s])
		val2 = val2.substr(pat[s])
	}
	for(q=0;q<val3.length; q++){
		if(q ==0){
			val = val3[q]
		}
		else{
			if(val3[q] != ""){
				val += sep + val3[q]
				}
		}
	}
	d.value = val
	d.valant = val
	}

};
//###### FIN VALIDAR IDENTIDAD

//############# VALIDAR TELEFONOS ############//
var patron_telefono = new Array(4,4);
function mascara_telefonos(d,sep,pat,nums){
  var telefono =($('#telefono_postulante').val());

  if (telefono.length==11) {
      //alert('valgo nueve');

  }
if(d.valant != d.value){
	val = d.value
	largo = val.length
	val = val.split(sep)
	val2 = ''
	for(r=0;r<val.length;r++){
		val2 += val[r]
	}
	if(nums){
		for(z=0;z<val2.length;z++){
			if(isNaN(val2.charAt(z))){
				letra = new RegExp(val2.charAt(z),"g")
				val2 = val2.replace(letra,"")
			}
		}
	}
	val = ''
	val3 = new Array()
	for(s=0; s<pat.length; s++){
		val3[s] = val2.substring(0,pat[s])
		val2 = val2.substr(pat[s])
	}
	for(q=0;q<val3.length; q++){
		if(q ==0){
			val = val3[q]
		}
		else{
			if(val3[q] != ""){
				val += sep + val3[q]
				}
		}
	}
	d.value = val
	d.valant = val
	}
};
//###### FIN VALIDAR TELEFONOS

// ***********************************************************

var patron_identidad = new Array(4,4,5);
function valiindenti(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==32) return false; // espacio
  if (tecla==8) return true;

    patron = /\d/;
    te = String.fromCharCode(tecla);
    return patron.test(te);
  }



  function validarEspacio(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto
  patron =/[A-Za-z\s]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }

  function validarEspacioComa(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto

  patron =/[A-Za-z\s ,]/; // Solo acepta letras
  //patron =/[A-Za-z\s]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }

  function validarEspacioComaGuion(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto

  patron =/[A-Za-z\s , -]/; // Solo acepta letras
  //patron =/[A-Za-z\s]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }

  function validarEspacioNumero(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto
  patron =/[A-Za-z0-9\s]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }


  function validarNumePun(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto

  patron =/[0-9 .]/; // Solo acepta letras
  //patron =/[A-Za-z\s]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }

  function validarPlaca(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto
  patron =/[A-Za-z0-9-]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }

  function validarNumeroPunto(e) {
  tecla = (document.all) ? e.keyCode : e.which;
  if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
  // dejar la línea de patron que se necesite y borrar el resto
  patron =/[0-9.]/; // Solo acepta letras
  //patron = /\d/; // Solo acepta números
  //patron = /\w/; // Acepta números y letras
  //patron = /\D/; // No acepta números
  //
  te = String.fromCharCode(tecla);
  return patron.test(te);
  }


  // function formatNumber(num) {
  //    num += '';
  //    var splitStr = num.split(',');
  //    var splitLeft = splitStr[0];
  //    var splitRight = splitStr.length > 1 ? ',' + splitStr[1] : '';
  //    var regx = /(\d+)(\d{3})/;
  //    while (regx.test(splitLeft)) {
  //       splitLeft = splitLeft.replace(regx, '$1' + ',' + '$2');
  //    }
  //    return '$' + splitLeft + splitRight;
  // }




  // function format(input)
  // {
  // var num = input.value.replace(/\./g,'');
  // if(!isNaN(num)){
  // num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g,'$1.');
  // num = num.split('').reverse().join('').replace(/^[\.]/,'');
  // input.value = num;
  // }
  //
  // else{ alert('Solo se permiten numeros');
  // input.value = input.value.replace(/[^\d\.]*/g,'');
  // }
  // }




  // function number_format(amount, decimals) {
  //
  //     amount += ''; // por si pasan un numero en vez de un string
  //     amount = parseFloat(amount.replace(/[^0-9\.]/g, '')); // elimino cualquier cosa que no sea numero o punto
  //
  //     decimals = decimals || 0; // por si la variable no fue fue pasada
  //
  //     // si no es un numero o es igual a cero retorno el mismo cero
  //     if (isNaN(amount) || amount === 0)
  //         return parseFloat(0).toFixed(decimals);
  //
  //     // si es mayor o menor que cero retorno el valor formateado como numero
  //     amount = '' + amount.toFixed(decimals);
  //
  //     var amount_parts = amount.split('.'),
  //         regexp = /(\d+)(\d{3})/;
  //
  //     while (regexp.test(amount_parts[0]))
  //         amount_parts[0] = amount_parts[0].replace(regexp, '$1' + ',' + '$2');
  //
  //     return amount_parts.join('.');
  // }
