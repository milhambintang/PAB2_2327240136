importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-app-compat.js");
importScripts("https://www.gstatic.com/firebasejs/10.7.1/firebase-messaging-compat.js");

// Gunakan konfigurasi web dari firebase_options.dart Anda
firebase.initializeApp({
  apiKey: "AIzaSyBTrcpIp_npC1iaoqdOfJnY6NqfWRqrl9g",
  authDomain: "notes-8dd2c.firebaseapp.com",
  projectId: "notes-8dd2c",
  storageBucket: "notes-8dd2c.firebasestorage.app",
  messagingSenderId: "214380733427",
  appId: "1:1014103626721:web:f3b42914...",
});

const messaging = firebase.messaging();

messaging.onBackgroundMessage((payload) => {
  const notificationTitle = payload.notification.title;
  const notificationOptions = {
    body: payload.notification.body,
    icon: "/favicon.png",
  };
  return self.registration.showNotification(notificationTitle, notificationOptions);
});
