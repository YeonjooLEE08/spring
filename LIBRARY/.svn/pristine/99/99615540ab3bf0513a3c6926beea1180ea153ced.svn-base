//weather
const API_KEY = 'cb924ec88fc3b3793cca7c5fd2934935';
const weatherIconList = {
  '01': "fa-solid fa-sun"
  , '02': "fa-solid fa-cloud-sun"
  , '03': "fa-solid fa-cloud-meatball"
  , '04': "fa-solid fa-cloud"
  , '09': "fa-solid fa-cloud-showers-heavy"
  , 10: "fa-solid fa-cloud-rain"
  , 11: "fa-solid fa-cloud-bolt"
  , 13: "fa-regular fa-snowflake"
  , 50: "fa-solid fa-smog"
  };
 

function onGeoOk(position){
	const lat = position.coords.latitude;
	const lon = position.coords.longitude;
	const url = `https://api.openweathermap.org/data/2.5/weather?lat=${lat}&lon=${lon}&appid=${API_KEY}&units=metric`;
	const weather01 = document.querySelector('#weather span:first-child');
	const weatherIcon = document.querySelector('#weather span:nth-child(2)');
	const weather02 = document.querySelector('#weather span:last-child');
	fetch(url)
		.then((response) => response.json())
		.then(data => {
			const icon = data.weather[0].icon.substr(0, 2);
			if(data.name === 'Ulsan'){
				data.name = '울산';
			}
		 	weather01.innerText = `지금 ${data.name} 날씨는 ${data.weather[0].main}`;
		 	weatherIcon.innerHTML = `<i class="${weatherIconList[icon]}"></i>`;
		 	
		 	weather02.innerText = `/ ${data.main.temp}℃`;
		});
	
}

function onGeoError(){
	alert("사용자의 위치를 읽을 수 없습니다.");
}

navigator.geolocation.getCurrentPosition(onGeoOk, onGeoError);




var menuBtn = document.querySelector('.menu-btn');
var nav = document.querySelector('.toRead-nav');
var link = document.querySelector('.toRead-nav .nav-links');
menuBtn.addEventListener('click', () => {
    nav.classList.toggle('nav-open');
    link.classList.toggle('fade-in');
})




//to read list
const toReadForm = document.getElementById('toread-form');
const toReadInput = toReadForm.querySelector('input');
const toReadList = document.getElementById('toread-list');
const readDoneIcon = '🤍';
const readYetIcon = '💛';

const TODOS_KEY = 'todos';

let toReads = [];

function saveToDos(){
	localStorage.setItem(TODOS_KEY, JSON.stringify(toReads));
	
}


function deleteToRead(event){
	const li = event.target.parentElement;
	li.remove();
	toReads = toReads.filter((toRead) => toReads.id !== parseInt(li.id));
	saveToDos();
}

function notDoneToRead(event){
	let li = event.target.parentElement;
	li.firstChild.innerText = readYetIcon
	li.style.textDecoration = 'none';
	li.style.color = 'black';
	li.firstChild.addEventListener('click', doneToRead);
	saveToDos();
}
function doneToRead(event){
	let li = event.target.parentElement;
	li.style.textDecoration = 'line-through';
	li.style.color = '#d4d4d4';
	li.firstChild.innerText = readDoneIcon;
	li.firstChild.addEventListener('click', notDoneToRead);
	saveToDos();
}

function paintToRead(newToRead){
	const li = document.createElement('li');
	li.id = newToRead.id;
	const span = document.createElement('span');
	span.innerText = newToRead.text;
	const xBtn = document.createElement('span');
	xBtn.innerText = '❌';
	const chkBtn = document.createElement('span');
	chkBtn.innerText = readYetIcon;
	xBtn.addEventListener('click', deleteToRead);
	chkBtn.addEventListener('click', doneToRead);
	li.appendChild(chkBtn);
	li.appendChild(span);
	li.appendChild(xBtn);
	toReadList.appendChild(li);
}

function handleToReadSubmit(event){
	event.preventDefault();
	const newToRead = toReadInput.value;
	toReadInput.value = '';
	
	const newToReadObj = {
		text: newToRead,
		id: Date.now(),
	};
	
	toReads.push(newToReadObj);
	paintToRead(newToReadObj);
	saveToDos();
}

toReadForm.addEventListener('submit', handleToReadSubmit);


const savedToDos = localStorage.getItem(TODOS_KEY);

if(savedToDos !== null){
	const parsedToDos = JSON.parse(savedToDos);
	toDos = parsedToDos;
	parsedToDos.forEach(paintToRead)
}
