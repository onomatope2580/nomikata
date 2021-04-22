function comparison () {
  const resultValue = document.getElementById("result-value");
  const planValue = document.getElementById("plan-value");
  const judge = document.getElementById("judge")

  if (resultValue <= planValue) {
    judge.innerHTML = "目標を守れています。";
    judge.style.color = "chartreuse";
  } else {
    judge.innerHTML = "目標オーバーです、気をつけましょう！";
    judge.style.color = "red";
  }
}

window.addEventListener('load', comparison);