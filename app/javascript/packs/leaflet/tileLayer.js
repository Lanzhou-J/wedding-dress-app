
// import L from 'leaflet'

// export const tileLayer = async (center) => {
//   const view = {zoom: 11, lat: center[0], long: center[1]}
//   console.log(view)
//   const map = L.map('map').setView([view.lat, view.long], view.zoom)
//   L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
//       attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
//       maxZoom: 20,
//       id: 'mapbox/streets-v11',
//       tileSize: 512,
//       zoomOffset: -1,
//       accessToken: 'pk.eyJ1IjoibGFuYWpvam8iLCJhIjoiY2thZGFqamRsMDV4NTJ6bzF1aW9sMWQ4aSJ9.uSGUAdZyEPUosa9xxsvX6w'
//       }).addTo(map)
//   return map
// }

import L from 'leaflet'

export const tileLayer = async (center) => {
  const view = {zoom: 11, lat: center[0], long: center[1]}
  console.log(view)
  const map = L.map('map').setView([view.lat, view.long], view.zoom)
  L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
      attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
      maxZoom: 20,
      id: 'mapbox/streets-v11',
      tileSize: 512,
      zoomOffset: -1,
      accessToken: 'pk.eyJ1IjoibGFuYWpvam8iLCJhIjoiY2thZGFqamRsMDV4NTJ6bzF1aW9sMWQ4aSJ9.uSGUAdZyEPUosa9xxsvX6w'
  }).addTo(map)
  return map
}