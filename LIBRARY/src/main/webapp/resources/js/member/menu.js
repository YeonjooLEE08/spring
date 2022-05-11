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
