# Start a cloudflare quick tunnel with the given port (default port 8080)
qt () {
    cloudflared tunnel --url http://localhost:${1:-8080}
}

