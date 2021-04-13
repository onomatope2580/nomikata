function amount () {
  const form = document.getElementById("form");
  form.addEventListener(('input'), () => {
    const boxes = document.getElementsByClassName("amount-box");

    // 入力された飲酒量の取り出し
    const box0 = boxes[0].value;
    const box1 = boxes[1].value;
    const box2 = boxes[2].value;
    const box3 = boxes[3].value;
    const box4 = boxes[4].value;
    const box5 = boxes[5].value;
    const box6 = boxes[6].value;
    const box7 = boxes[7].value;

    // それぞれのアルコール量(ml)の計算式
    const a = 350 * 0.05 * box0;
    const b = 180 * 0.15 * box1;
    const c = 100 * 0.25 * box2;
    const d = 500 * 0.05 * box3;
    const e = 120 * (0.13 * 10) * box4 /10;
    const f = 30 * (0.40 * 10) * box5 / 10;
    const g = (box6 / 100) * box7;
    
    const alcoholSumMl = a + b + c + d + e + f + g;  // アルコール量の合計(ml)
    const alcoholSumG = alcoholSumMl * 0.8;          // 純アルコール量の合計(g)

    // HTMLの代入、条件分岐値が０出ない時
    const sum = document.getElementById("sum");
    const sumBox = document.getElementById("sum-box");

    const n = 1;
    sum.innerHTML = Math.floor( alcoholSumG * Math.pow( 10, n ) ) / Math.pow( 10, n );
    sumBox.value = Math.floor( alcoholSumG * Math.pow( 10, n ) ) / Math.pow( 10, n );
    if (alcoholSumG == 0) {
      sum.innerHTML = "";
      sumBox.value = "";
    }

    

  });
};

window.addEventListener('load', amount);