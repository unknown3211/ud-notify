window.addEventListener('message', function(event) {
    let data = event.data;
    if (data.type === 'showNotification') {
        displayNotification(data.notificationType, data.text);
    }
});

function displayNotification(type, text) {
    let notification = document.getElementById('notification');
    let notificationText = document.getElementById('notification-text');
    
    ['error', 'success', 'warning', 'info'].forEach(function(notificationType) {
        notification.classList.remove(notificationType);
    });

    notification.classList.add(type);
    notificationText.textContent = text;
    
    notification.style.display = 'block';

    setTimeout(function() {
        notification.style.display = 'none';
    }, 5000);
}

