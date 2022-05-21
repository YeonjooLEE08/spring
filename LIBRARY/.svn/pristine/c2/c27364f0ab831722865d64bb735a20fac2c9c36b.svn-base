/*취향분석*/
const myTop3Box = document.querySelector('.myTopThree-div');
const top1 = myTop3Box.querySelector('div:first-child > span');
const top2 = myTop3Box.querySelector('div:nth-child(2) > span');
const top3 = myTop3Box.querySelector('div:nth-child(3) > span');

const myFavor = document.querySelector('.bookPlaner-top-left > div:nth-child(2)');
const fav1 = myFavor.querySelector('span:first-child ');
const fav2 = myFavor.querySelector('span:nth-child(2)');
const fav3 = myFavor.querySelector('span:nth-child(3)');

const category = ['철학','종교','사회과학','순수과학','기술과학','예술','언어','문학','역사'];
const catecomment = [
					'#약간 소크라테스?플라톤?뭐그런느낌',
					'#신앙',
					'#인간과사회',
					'#과학',
					'#과학기술의시대',
					'#예술학도',
					'#Language',
					'#문학최고',
					'#역사를 잊은 민족에게 미래는 없다'
					];

					
for(let i = 0; i < category.length; i++){
	if(top1 && top1.innerText === category[i]){
		fav1.innerText = catecomment[i];
	}
	if(top2 && top2.innerText === category[i]){
		fav2.innerText = catecomment[i];
	}
	if(top3 && top3.innerText === category[i]){
		fav3.innerText = catecomment[i];
	}
}
/*차트*/
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

//console.log(labelList);

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

/*툴팁*/
const tooltip = document.querySelector('.tip');
const tooltext = document.querySelector('.tiptext');
function tooltipHandler(){
	tooltext.classList.toggle('hid');
}
tooltip.addEventListener("mouseenter", tooltipHandler);