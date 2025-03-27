# load what we had via :set, :bind, etc.
config.load_autoconfig()

# some other parameters
c.content.autoplay = False
c.qt.workarounds.remove_service_workers = True

# Keybindings and commands
config.bind('<Ctrl-j>', 'completion-item-focus next', mode='command')
config.bind('<Ctrl-k>', 'completion-item-focus prev', mode='command')

# by convention, user commands start with a comma
config.bind(',cr', 'spawn --userscript org-protocol capture br')
config.bind(',cg', 'spawn --userscript org-protocol capture bg')

# mpv
# from https://qutebrowser.org/FAQ.html
config.bind(',m', 'spawn mpv {url}')
config.bind(',M', 'hint links spawn --detach mpv {hint-url}')

# some Emacs-isms: https://gitlab.com/jgkamat/qutemacs/blob/master/qutemacs.py
# and other convenience keys
config.bind('<alt-x>', 'cmd-set-text :')
config.bind('<ctrl-l>', 'cmd-set-text -s :open')
config.bind('<alt-l>', 'cmd-set-text -s :open -t')

config.bind('<ctrl-g>', 'mode-leave', mode="normal")

config.bind('<Alt-a>', 'tab-prev')
config.bind('<Alt-e>', 'tab-next')

config.bind('<ctrl-g>', 'mode-leave', mode="hint")
config.bind('<ctrl-g>', 'mode-leave', mode="caret")

config.bind('<ctrl-s>', 'cmd-set-text /', mode='normal')
config.bind('<ctrl-r>', 'cmd-set-text ?', mode='normal')
config.bind('<ctrl-g>', 'clear-keychain ;; search ;; fullscreen --leave',
            mode='normal')

config.bind('<Alt-h>', 'home')
config.bind('<ctrl-h>', 'help')

# Simple Zotero integration
# Bookmarklet source: https://www.zotero.org/download/bookmarklet
config.bind(',cz', ":spawn --userscript qute-zotero")

c.aliases.update({"ff" : "spawn librewolf {url}"})
c.aliases.update({"chrom" : "spawn chromium {url}"})

# aliases for userscripts
c.aliases.update({"qr" : "spawn --userscript qr"})

import os
home = os.environ.get('HOME')
c.editor.command = ["%s/.local/bin/emacsclient" % home, '-c', '{}']

config.bind(',ec', ':config-edit')
config.bind(',es', f"spawn {home}/.local/bin/emacsclient {home}/projects/startpage/start.html")

# search engines
c.url.searchengines["g"] = "https://www.google.com/search?q={}"
c.url.searchengines["s"] = "https://scholar.google.com/scholar?hl=en&q={}"
c.url.searchengines["mu"] = "https://www.multitran.com/m.exe?s={}"
c.url.searchengines["wiki"] = "https://en.wikipedia.org/w/index.php?search={}"
c.url.searchengines["wh"] = "https://www.willhaben.at/iad/kaufen-und-verkaufen/marktplatz?keyword={}"
c.url.searchengines["map"] = "https://www.google.com/maps/search/{}"
c.url.searchengines["amz"] = "https://www.amazon.de/s?k={}"
c.url.searchengines["lg"] = "https://juliagraphs.org/LightGraphs.jl/latest/search/?q={}"
c.url.searchengines["r"] = "https://reddit.com/r/{}"
c.url.searchengines["ve"] = "https://www.verbformen.com/conjugation/?w={}"

# "Open" menu map
# TODO: add "src" to open page source for my website

config.bind(',oh', "spawn --userscript find-humans")
config.bind(',oH', "spawn --userscript open-humans")

c.url.start_pages = ["file:///home/bochkare/projects/startpage/start.html"]

# Re: fprinting, https://wiki.archlinux.org/title/Qutebrowser#Minimize_fingerprinting

# I think this one caused "too old browser" problems
# c.content.headers.user_agent = "Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101 Firefox/68.0"
c.content.headers.accept_language = "en-US,en;q=0.5"
c.content.headers.custom = {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
c.content.canvas_reading = False
c.content.geolocation = False
