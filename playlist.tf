resource "spotify_playlist" "playlist" {
  name        = "Terraform managed"
  description = "Playlist is managed via terraform"
  public      = false

  tracks = flatten([
   data.spotify_track.grandfather_clocks.id,
    data.spotify_track.vertigo.id,
    data.spotify_track.worth.id,
    data.spotify_track.shook.id,
    data.spotify_track.neon_nebraska.id,
    data.spotify_track.days_go_slow.id,
    data.spotify_track.fuck_me_up.id,
    data.spotify_track.liar.id,
    data.spotify_track.recluse.id,
    data.spotify_track.from_liquid.id
    ])
}

data "spotify_track" "grandfather_clocks" {
  url = "https://open.spotify.com/track/5VKM9nypPJrkFlhfgRxJSj"
}
data "spotify_track" "vertigo" {
  url = "https://open.spotify.com/track/0YxPWzfiBQnDZYGZ0LmOjO?si=1763e12491834213"
}
data "spotify_track" "worth" {
  url = "https://open.spotify.com/track/21TXf4oUIt6A1dGmPDKyKf?si=37e51da5e4d64612"
}
data "spotify_track" "shook" {
  url = "https://open.spotify.com/track/11GBBSLfPpawLN0haheOPf?si=2dfa604fd86f4c49"
}
data "spotify_track" "neon_nebraska" {
  url = "https://open.spotify.com/track/17NEklpS8Q41gkKSwZSiFK?si=1138b2af3ad6441b"
}
data "spotify_track" "days_go_slow" {
  url = "https://open.spotify.com/track/12M2zGcPLk2zcXMF0hdpP9"
}
data "spotify_track" "fuck_me_up" {
  url = "https://open.spotify.com/track/12M2zGcPLk2zcXMF0hdpP9"
}
data "spotify_track" "liar" {
  url = "https://open.spotify.com/track/12M2zGcPLk2zcXMF0hdpP9"
}
data "spotify_track" "recluse" {
  url = "https://open.spotify.com/track/2EvTBKaHIFfpSrCH47VVA6"
}
data "spotify_track" "from_liquid" {
  url = "https://open.spotify.com/track/16dsDlCvbP2KjLEt3tZY1M"
}



