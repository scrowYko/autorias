var hora = document.getElementById('horasR');
var minuto = document.getElementById('minutosR');
var segundo = document.getElementById('segundosR');

const relogio = setInterval(function time() {
  let dateToday = new Date();
  let hr = dateToday.getHours();
  let min = dateToday.getMinutes();
  let s = dateToday.getSeconds();

  if (hr < 10 ) hr = "0" + hr
  
  if (min < 10 ) min = "0" + min

  if (s < 10 ) s = "0" + s

  hora.innerText = hr;
  minuto.innerText = min;
  segundo.innerText = s;
},1000);
