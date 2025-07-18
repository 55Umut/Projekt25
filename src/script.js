function allowDrop(ev) {
  ev.preventDefault();
}

function drag(ev) {
  ev.dataTransfer.setData("text", ev.target.id);
}

function drop(ev) {
  ev.preventDefault();
  var data = ev.dataTransfer.getData("text");
  var node = document.getElementById(data);
  var img = node.querySelector(".content img").cloneNode(true);
  ev.target.appendChild(img);
}

var m = document.getElementById("burger-modal");

function modal() {
  m.style.display = "flex";
}

function modalclose() {
  m.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == m) {
    m.style.display = "none";
  }
}

var preview = document.getElementById("preview");
var color = "purple";
var icon_color_code = "BFBFFC";

function purple() {
  preview.setAttribute('class', 'purple');
  color = "purple";
  icon_color_code = "BFBFFC";
}

function grey() {
  preview.setAttribute('class', 'grey');
  color = "grey";
  icon_color_code = "DFDFDF";
}

function green() {
  preview.setAttribute('class', 'green');
  color = "green";
  icon_color_code = "CFF2A5";
}

function blue() {
  preview.setAttribute('class', 'blue');
  color = "blue";
  icon_color_code = "BFD3FC";
}

var id = 9;

$('.burger-form').on('submit', function() {
  var div = document.getElementById("div1");
  var ingredient = document.getElementById("ingredient").value;
  var image = document.getElementById("image").value;
  var d = new Date();
  var month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
  div.insertAdjacentHTML('beforeend', '<div class="burger-card" id="' + id + '" draggable="true" ondragstart="drag(event)"><div class="card"><div class="header"><h5 class="' + color + '">Burger</h5></div><div class="content"><h3>' + ingredient + '</h3><img src="' + image + '" alt="' + ingredient + '" width="100"></div><div class="footer"><div class="date"><img width="25" height="25" src="https://img.icons8.com/sf-black-filled/64/' + icon_color_code + '/calendar-plus.png" alt="calendar-plus"/><p>' + d.getDate() + ' ' + month[d.getMonth()] + ' ' + d.getUTCFullYear() + '</p></div></div></div></div>');
  id++;
  modalclose();
  return false;
});

var toggle = document.getElementById("toggle");
var bod = document.getElementById("bod");
var border = document.getElementById("border");
var container = document.getElementById("container");
var disclaimer = document.getElementById("disclaimer");
var heading = document.getElementsByTagName("h4");
var plus = document.getElementById("plus");
var card = document.getElementsByClassName("card");
var tasktitle = document.getElementsByTagName("h3");
var taskdesc = document.getElementsByTagName("p");
var burger_cards = document.getElementsByClassName("burger-card");
var modal_content = document.getElementsByClassName("burger-modal-content");
var modal_close_btn = document.getElementsByClassName("modal-close-btn");
var modal_submit_btn = document.getElementsByClassName("burger-button");
var modal_submit_btn_glow = document.getElementsByClassName("burger-glowing-button");
var flag = 0;

function togglel() {
  toggle.style.boxShadow = "5px 5px 500px rgb(255, 255, 0) inset, 0.5px 0.5px 50px yellow";
  toggle.style.border = "1px solid rgb(255, 255, 255)";
  toggle.style.backgroundColor = "orange";
}

function toggled() {
  toggle.style.boxShadow = "10px 10px 15px rgba(0, 0, 0, 0.312), -10px -10px 10px rgba(30, 30, 30, 0.696), 25px -1px 5px rgb(255, 255, 255) inset, -2px 5px 10px rgba(23, 23, 23, 0.986) inset";
  toggle.style.border = "1px solid rgba(28, 28, 28, 0)";
  toggle.style.backgroundColor = "rgb(23, 23, 23)";
}

function roll() {
  if (flag == 0) {
    toggle.style.animation = "roll 1.5s forwards";
    container.style.boxShadow = "10px 10px 10px rgb(242, 241, 241), -4px -7px 15px rgb(242, 241, 241), 2px -5px 10px rgb(255, 255, 255) inset, -10px -1px 5px yellow inset";
    border.style.backgroundColor = "rgb(255, 255, 255)";
    border.style.boxShadow = "2px 5px 10px rgb(236, 235, 235) inset, -2px 0px 2px rgb(254, 254, 1) inset";
    bod.style.backgroundColor = "rgb(253, 253, 253)";
    disclaimer.style.color = "black";
    heading[0].style.color = "black";
    heading[1].style.color = "black";
    plus.src = "https://img.icons8.com/sf-black-filled/64/000000/plus.png";
    modal_content[0].style.backgroundColor = "white";
    modal_content[0].style.color = "black";
    modal_close_btn[0].style.backgroundImage = "url('https://img.icons8.com/external-creatype-glyph-colourcreatype/64/000000/external-close-essential-ui-v4-creatype-glyph-colourcreatype.png')";
    modal_submit_btn[0].style.backgroundColor = "white";
    modal_submit_btn[0].style.color = "black";
    modal_submit_btn_glow[0].style.background = "linear-gradient(var(--gradient-angle), rgb(255, 255, 255), rgb(0, 0, 0))";
    for (let i = 0; i < card.length; i++) {
      card[i].style.backgroundColor = "white";
    }
    for (let j = 0; j < tasktitle.length; j++) {
      tasktitle[j].style.color = "black";
    }
    for (let k = 0; k < taskdesc.length; k++) {
      taskdesc[k].style.color = "black";
    }
    for (let k = 0; k < burger_cards.length; k++) {
      burger_cards[k].style.background = "linear-gradient(var(--gradient-angle), white, rgb(191, 191, 252))";
    }
    setTimeout(togglel, 250);
    flag = 1;
  } else {
    toggle.style.animation = "rollback 1.5s forwards";
    container.style.boxShadow = "10px 10px 10px rgba(16, 16, 16, 0.667), 0px -8px 10px rgba(32, 32, 32, 0.453), -5px -5px 15px rgb(17, 17, 17) inset, 15px 15px 50px rgb(26, 26, 26) inset";
    border.style.backgroundColor = "rgb(23, 23, 23)";
    border.style.boxShadow = "5px 5px 10px rgb(23, 23, 23) inset, -4px -10px 10px rgb(25, 25, 25) inset";
    bod.style.backgroundColor = "rgb(18, 18, 18)";
    disclaimer.style.color = "white";
    heading[0].style.color = "white";
    heading[1].style.color = "white";
    plus.src = "https://img.icons8.com/sf-black-filled/64/FFFFFF/plus.png";
    modal_content[0].style.backgroundColor = "black";
    modal_content[0].style.color = "white";
    modal_close_btn[0].style.backgroundImage = "url('https://img.icons8.com/external-creatype-glyph-colourcreatype/64/ffffff/external-close-essential-ui-v4-creatype-glyph-colourcreatype.png')";
    modal_submit_btn[0].style.backgroundColor = "black";
    modal_submit_btn[0].style.color = "white";
    modal_submit_btn_glow[0].style.background = "linear-gradient(var(--gradient-angle), rgba(255, 255, 255), rgb(0, 0, 0, 0))";
    for (let i = 0; i < card.length; i++) {
      card[i].style.backgroundColor = "rgba(0, 0, 0, 0.852)";
    }
    for (let j = 0; j < tasktitle.length; j++) {
      tasktitle[j].style.color = "white";
    }
    for (let k = 0; k < taskdesc.length; k++) {
      taskdesc[k].style.color = "white";
    }
    for (let k = 0; k < burger_cards.length; k++) {
      burger_cards[k].style.background = "linear-gradient(var(--gradient-angle), black, rgb(191, 191, 252))";
    }
    setTimeout(toggled, 250);
    flag = 0;
  }
}