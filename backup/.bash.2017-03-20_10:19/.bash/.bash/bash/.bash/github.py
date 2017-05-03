##################################### Method 1
import mechanize
import cookielib
from BeautifulSoup import BeautifulSoup
import html2text

# Browser
br = mechanize.Browser()

# Cookie Jar
cj = cookielib.LWPCookieJar()
br.set_cookiejar(cj)

# Browser options
br.set_handle_equiv(True)
br.set_handle_gzip(True)
br.set_handle_redirect(True)
br.set_handle_referer(True)
br.set_handle_robots(False)
br.set_handle_refresh(mechanize._http.HTTPRefreshProcessor(), max_time=1)

br.addheaders = [('User-agent', 'Chrome')]

# The site we will navigate into, handling it's session
# print(br.open("https://waffle.io/sky-uk/clickdata-ML-recommendations").read())
br.open("https://waffle.io/sky-uk/clickdata-ML-recommendations")


forms = br.forms()

for f in br.forms():
    print "start forms"
    print f
    print "end forms"

br.select_form(nr=0)

br.form['login'] = 'tgbanister@gmail.com'
br.form['password'] = 'gitGree7'

br.submit()

# print(br.read())

# print(br.open("https://waffle.io/sky-uk/clickdata-ML-recommendations").read())
