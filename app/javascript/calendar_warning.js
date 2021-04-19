function calendarWarning () {
  const today = new Date();                                        // 今日の日付を取得
  const thisYear = today.getFullYear();                            // 今年の年数を取得
  const monthDays = new Array(31,28,31,30,31,30,31,31,30,31,30,31);  // 月毎の日数を定義
  if (((thisYear%4)==0 && (thisYear%100)!=0) || (thisYear%400)==0){
    monthDays[1] = 29;
  }                                                                // 閏年対応
  const thisMonth = today.getMonth();                              // 今月の月を取得(本当はここに１を足す)
  const thisDays = monthDays[thisMonth];                                 // 今月の日数を取得

  const safetyAmount = document.getElementById("safety-amount").value;   // 適正量の取得

  for(i = 0; i < thisDays; i++ ) {                                 // 日数分の繰り返し処理定義
    const day = document.getElementById(`${i}${i}`);               // 表示を挿入したい要素とその前２日分の要素取得
    const dayBeforeOne = document.getElementById(`${i-1}${i-1}`);
    const dayBeforeTwo = document.getElementById(`${i-2}${i-2}`);

    // const planInput = document.getElementById(`${i}${i}${i}`);           // 表示したい日とその前２日分のinput要素の取得
    const planInputBeforeOne = document.getElementById(`${i-1}${i-1}${i-1}`);
    const planInputBeforeTwo = document.getElementById(`${i-2}${i-2}${i-2}`);

    if (dayBeforeTwo != null) {
      if (planInputBeforeOne != null && planInputBeforeOne.value != "#" && planInputBeforeOne.value >= safetyAmount*1.5) {
        day.innerHTML = "休肝日推奨！";
        dayBeforeOne.innerHTML = "";
        dayBeforeOne.innerHTML = "";
      } else if (planInputBeforeOne != null && planInputBeforeTwo != null && planInputBeforeOne.value != "#" && planInputBeforeTwo.value != "#") {
        day.innerHTML = "休肝日推奨！";
        dayBeforeOne.innerHTML = "";
        dayBeforeOne.innerHTML = "";
      }
    } else if (dayBeforeOne != null) {
      if (planInputBeforeOne != null && planInputBeforeOne.value != "#" && planInputBeforeOne.value >= safetyAmount*1.5) {
        day.innerHTML = "休肝日推奨！";
        dayBeforeOne.innerHTML = "";
        dayBeforeOne.innerHTML = "";
      }
    }
  };
};

window.addEventListener('load', calendarWarning);