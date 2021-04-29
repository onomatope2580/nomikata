function reload () {
  const changeButton = document.getElementById('change-button');
  changeButton.addEventListener('click', () => {
    location.reload();
  });
};

window.addEventListener('load', reload);