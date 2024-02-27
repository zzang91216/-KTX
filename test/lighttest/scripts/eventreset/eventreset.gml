// 이벤트를 전부 리셋해주는 디버그기능
function eventreset(){
	for (i = 0; i < global.eventcount; i++;){
		global.eventindex[i] = true
	}
}