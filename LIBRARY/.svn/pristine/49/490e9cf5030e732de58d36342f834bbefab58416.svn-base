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
                '#FFBBBB',
       	   		'#FFE4C0',
       	   		'#FFF89A',
       	   		'#F0FFC2',
       	   		'#BAFFB4',
       	   		'#BFFFF0',
       	   		'#9ADCFF',
       	   		'#D78BFF',
       	   		'#7189BF'
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
