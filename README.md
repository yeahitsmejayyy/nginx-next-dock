# nginx-next-dock

## Welcome, Fearless Next.js Docker Pioneer!

You’ve cloned this Next.js + Nginx Docker combo. Thrilling, right? (We’ll pretend it is.)

### Quick Start (No Time for Drama)
1. Clone this repo: `git clone https://github.com/yeahitsmejayyy/nginx-next-dock`
2. Navigate: `cd nginx-next-dock`
3. Build it: `docker build -t nginx-next-dock .`
4. Run it: `docker run -d -p 80:80 --name nginx-next-container nginx-next-dock`
5. Behold: Open `http://localhost` (sudo might save you if port 80 sulks)

### What’s Inside?
- A basic Next.js app (Yes, I added shadcn-ui) in `app/`
- A `Dockerfile` leaner than a diet plan
- An `nginx.conf` to keep things orderly
- Static goodness served by Nginx

### Pro Tips (You’re Basically a Docker Wizard Now)
- Tweak your Next.js code in `app/` (yes, it’s customizable!)
- Rebuild with `docker build -t nginx-next-dock .` after code changes
- Stop it with: `docker stop nginx-next-container` and `docker rm nginx-next-container`
- If port 80 is taken, sigh, then try `8080` or wrestle with `sudo`

Sail the Docker seas with your Next.js treasure! (Or just serve a webpage without too much fuss.)