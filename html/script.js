window.addEventListener('message', function(event) {
    if (event.data.action === "notify") {
        createNotify(event.data.title, event.data.message);
    }
});

function createNotify(title, message) {
    const container = document.getElementById("notify-container");

    const notify = document.createElement("div");
    notify.classList.add("notify");

    notify.innerHTML = `
      <img src="img/logo.png" alt="logo">
      <div class="notify-content">
        <div class="notify-title">${title}</div>
        <div class="notify-message">${message}</div>
      </div>
    `;

    container.appendChild(notify);

    setTimeout(() => {
        notify.remove();
    }, 5000); // na 5 sec verwijderen
}