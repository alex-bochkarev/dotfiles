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

# Simple Zotero integration
# Bookmarklet source: https://www.zotero.org/download/bookmarklet
config.bind(',cz', ":jseval --url --quiet javascript:var%20d=document,s=d.createElement('script');s.src='https://www.zotero.org/bookmarklet/loader.js';(d.body?d.body:d.documentElement).appendChild(s);void(0);")

c.aliases.update({"ff" : "spawn firefox {url}"})
c.aliases.update({"chrom" : "spawn chromium {url}"})

c.editor.command = ['emacsclient', '-c', '{}']

# search engines
c.url.searchengines["g"] = "https://www.google.com/search?q={}"
c.url.searchengines["s"] = "https://scholar.google.com/scholar?hl=en&q={}"
c.url.searchengines["lib"] = "https://pascal-clemson.primo.exlibrisgroup.com/discovery/search?vid=01PASCAL_CLEM:CLEMSON&tab=Everything&search_scope=MyInst_and_CI&mode=basic&facet=&displayMode=full&bulkSize=10&highlight=true&dum=true&query=any,contains,{}"
c.url.searchengines["mu"] = "https://www.multitran.com/m.exe?s={}"
c.url.searchengines["wiki"] = "https://en.wikipedia.org/w/index.php?search={}"
c.url.searchengines["wh"] = "https://www.willhaben.at/iad/kaufen-und-verkaufen/marktplatz?keyword={}"
c.url.searchengines["map"] = "https://www.google.com/maps/search/{}"
c.url.searchengines["amz"] = "https://www.amazon.com/s?k={}"
c.url.searchengines["lg"] = "https://juliagraphs.org/LightGraphs.jl/latest/search/?q={}"
c.url.searchengines["r"] = "https://reddit.com/r/{}"
# TODO: add "src" to open page source for my website

c.url.start_pages = ["file:///home/bochkarev/sandbox/startpage/start.html"]
