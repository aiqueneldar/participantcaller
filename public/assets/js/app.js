
window.addEventListener('load', () => {
  if (!('partcallerSW' in navigator)) {
    // service workers not supported 😣
    return
  }

  navigator.serviceWorker.register('/partcallerSW.js').then(
    () => {
      console.log('SW registered')
    },
    err => {
      console.error('SW registration failed! 😱', err)
    }
  )
})
