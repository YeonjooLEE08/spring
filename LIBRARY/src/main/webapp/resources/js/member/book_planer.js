const ctx = document.getElementById('myChart').getContext('2d');
const bcl = document.querySelectorAll('.bookCategory');
const cnt = document.querySelectorAll('.cnt');

let labelList = [];
	for(let i = 0; i < cnt.length; i++){
		 labelList.push(bcl[i].value);
	}
let cntList =[];
	for(let i = 0; i < cnt.length; i++){
		cntList.push(cnt[i].value);
	}

console.log(labelList);

const myChart = new Chart(ctx, {
    type: 'doughnut',
    data: {
        labels: labelList
        ,
        datasets: [{
            data: cntList 
            ,
            backgroundColor: [
                '#F5F3CE',
       	   		'#FFFEBD',
       	   		'#FFF891',
       	   		'#FFE671',
       	   		'#FFF338',
       	   		'#FFD163',
       	   		'#DAFF2C',
       	   		'#C1FF18',
       	   		'#B5E61D'
       	   		
       	   		
       	   		
       	   		
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true
            }
        }
    }
});


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
