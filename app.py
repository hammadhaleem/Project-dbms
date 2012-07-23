import web

def make_text(string):
    return string

urls = ('/', 'index')
render = web.template.render('templates/')

app = web.application(urls, globals())

my_form = web.form.Form(
                web.form.Textbox('', class_='textfield', id='textfield'),
                )

class tutorial:
    def GET(self):
        form = my_form()
        return render.tutorial(form, "Your text goes here.")
        
    def POST(self):
        form = my_form()
        form.validates()
        s = form.value['textfield']
        return make_text(s)

if __name__ == '__main__':
    app.run()
