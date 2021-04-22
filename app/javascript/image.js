document.addEventListener('DOMContentLoaded', function(){
  const imageBox1 = document.getElementById('image-box1');   // 画像を表示させる要素の取得
  const imageBox2 = document.getElementById('image-box2');
  const imageBox3 = document.getElementById('image-box3');

  const drinkImage = document.getElementById('ddfr_drink_image');   // イベント発火の要素を取得
  const foodImage = document.getElementById('ddfr_food_image');
  const restaurantImage = document.getElementById('ddfr_restaurant_image');

  drinkImage.addEventListener('change', (e) => {
    const file = e.target.files[0];                   // 画像情報の取得
    const blob = window.URL.createObjectURL(file);    // 画像表示用のURL取得

    const blobImage = document.createElement('img');  // img要素の作成
    blobImage.setAttribute('src', blob);              // 画像表示のURLを付与
    blobImage.width = 300;
    blobImage.height = 174;
    imageBox1.appendChild(blobImage);

    document.getElementById('input-btn1').innerHTML = "写真を変更する";
  });

  foodImage.addEventListener('change', (e) => {
    const file = e.target.files[0];                   // 画像情報の取得
    const blob = window.URL.createObjectURL(file);    // 画像表示用のURL取得

    const blobImage = document.createElement('img');  // img要素の作成
    blobImage.setAttribute('src', blob);              // 画像表示のURLを付与
    blobImage.width = 300;
    blobImage.height = 174;
    imageBox2.appendChild(blobImage);

    document.getElementById('input-btn2').innerHTML = "写真を変更する";
  });

  restaurantImage.addEventListener('change', (e) => {
    const file = e.target.files[0];                   // 画像情報の取得
    const blob = window.URL.createObjectURL(file);    // 画像表示用のURL取得

    const blobImage = document.createElement('img');  // img要素の作成
    blobImage.setAttribute('src', blob);              // 画像表示のURLを付与
    blobImage.width = 300;
    blobImage.height = 174;
    imageBox3.appendChild(blobImage);

    document.getElementById('input-btn3').innerHTML = "写真を変更する";
  });
});
