function alarm () {

  const planAmountValue = document.getElementById('today-plan').value;
  const userWeightValue = document.getElementById('user-weight').value;
  const canDrive = document.getElementById('can-drive');

  const aboutSafetyHour = planAmountValue / (userWeightValue * 0.1);

  n = 1;
  const safetyHour = Math.floor( aboutSafetyHour * Math.pow( 10, n ) ) / Math.pow( 10, n );
  const hour = Math.floor(safetyHour);                               // 運転できるまでの時間
  const minutes = Math.floor(60 * (safetyHour % 1));                 // 運転できるまでの分
  canDrive.innerHTML = `運転できるのは${hour}時間${minutes}分後です`
  canDrive.style.color = "blue"

  const drivePlanHour = document.getElementById('drive-plan-hour');
  const drivePlanMinutes = document.getElementById('drive-plan-minutes');
  const finishTime = document.getElementById('finish-time');

  const clearButton = document.getElementById('clear-button');
  const setButton = document.getElementById('set-button');
  let timer;
  clearButton.checked = true;


  setButton.addEventListener('click', () => {
    clearButton.checked = false;

    const H = drivePlanHour.value;              // 運転する予定の時間
    const M = drivePlanMinutes.value;        // 運転する予定の分

    const finishHour = document.getElementById('finish-hour');           // 飲み会終了の時間の表示要素の取得
    const finishMinutes = document.getElementById('finish-minutes');     // 飲み会終了の分の表示要素の取得

    let finishH;   // 飲み会終了時間の定義
    let finishM;   // 飲み会終了分の定義

    // 飲み会終了時間の計算
    if (M >= minutes) {
      if (H >= hour){
        finishH = H - hour;
        finishM = M - minutes;
        finishHour.innerHTML = finishH;
        finishMinutes.innerHTML = finishM;
        doAlarm(finishH, finishM);
      } else {
        finishH = 24 + (H - hour);
        finishM = M - minutes;
        finishHour.innerHTML = finishH;
        finishMinutes.innerHTML = finishM;
        doAlarm(finishH, finishM);
      }
    } else {
      if ((H - 1) >= hour){
        finishH = (H - 1) - hour;
        finishM = 60 + (M - minutes);
        finishHour.innerHTML = finishH;
        finishMinutes.innerHTML = finishM;
        doAlarm(finishH, finishM);
      } else {
        finishH = 24 + ((H - 1) - hour);
        finishM = 60 + (M - minutes);
        finishHour.innerHTML = finishH;
        finishMinutes.innerHTML = finishM;
        doAlarm(finishH, finishM);
      }
    }
  });

  clearButton.addEventListener('click', () => {
    setButton.checked = false;
    clearTimeout(timer);
  });

  // 時間になったらアラームを発動させる関数
  function doAlarm(aHour, aMinutes) {
    const d = new Date();
    const dHour = d.getHours();             // 現在の時間を取得
    const dMinutes = d.getMinutes();        // 現在の分を取得
    const fMinutes = (aHour * 60) + aMinutes;    // 飲み会終了時間を分に直したもの
    const nowMinutes = (dHour * 60) + dMinutes;    // タイマーセット時の時刻を分に直したもの

    if (fMinutes >= nowMinutes) {
      const restTime = fMinutes - nowMinutes;   // 飲み会終了までの時間を分に直したもの
      // アラームを発動させる
      timer = setTimeout(startAlarm, (restTime * 60 * 1000));
    } else {
      const restTime = (fMinutes + 1440 ) - nowMinutes;
      timer = setTimeout(startAlarm, (restTime * 60 * 1000));
    }
  };

  // アラームリンクへ飛ぶ関数
  function startAlarm() {
    const toAlarm  = document.getElementById('to-alarm');
    toAlarm.click();
  };
  
};

window.addEventListener('load', alarm);