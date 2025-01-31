from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy
from dotenv import load_dotenv
import os

load_dotenv()
database_url = os.getenv("DATABASE_URL")

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = database_url
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

static_html = {
    "prefix": "Projetos",
    "copyright": "© 2025 Copyright - IvnLS IFRS",
    "supdivisor": """
    <div>
        <div class="sup-divisor">
        <div class="red-block"></div>
        <div class="green-block"></div>
    </div>
    """,
    "texto": """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam accumsan lobortis tellus euismod accumsan. Fusce ac ligula ante. Etiam tempus elit enim, sit amet aliquet mauris porttitor in. Vestibulum pretium mauris vel ex pellentesque semper. Sed placerat sapien eget lacus lacinia accumsan. Praesent eu lobortis arcu. Nam aliquet ligula ut orci auctor interdum. Donec sed interdum purus. Proin suscipit scelerisque purus. Curabitur sed ornare risus. Pellentesque placerat, risus in ultricies gravida, orci tellus pretium nulla, quis rhoncus est mi at nisi. Mauris mollis aliquet est, vitae varius ante pharetra in. Duis nisi nisi, aliquet vel ante ac, bibendum cursus lacus. Fusce gravida quam eu arcu varius, sed pulvinar velit sollicitudin. Nunc sagittis turpis nisl, quis euismod felis vehicula et.

Donec purus eros, pellentesque vitae ex nec, mollis tincidunt massa. Sed venenatis accumsan lobortis. Vestibulum ut turpis sollicitudin sapien dignissim hendrerit. Fusce mattis imperdiet rutrum. Sed sed purus elit. Aenean turpis diam, molestie non rhoncus sed, lacinia at turpis. Aliquam metus massa, mollis eu libero non, cursus imperdiet risus.

Nam finibus, arcu vel posuere varius, urna elit convallis est, ac ultrices augue justo non augue. Donec ligula augue, viverra interdum gravida congue, porttitor at elit. Mauris sollicitudin aliquam tellus, a tempor justo. Donec vestibulum varius vehicula. Aliquam sem nunc, posuere viverra urna sed, feugiat efficitur ex. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec id urna sed turpis laoreet tristique. Duis congue nisi ac magna elementum, et finibus quam vehicula. Aliquam erat volutpat. Praesent interdum eros massa, ut tempus massa vulputate eu.

Phasellus vitae elementum sem. Maecenas mattis, felis sit amet rutrum aliquam, ex lectus fermentum mauris, nec elementum leo velit sit amet nisl. Donec luctus luctus tellus, ut rhoncus dolor faucibus at. Aliquam erat volutpat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed sit amet consectetur purus, in luctus magna. Sed tincidunt arcu ac cursus venenatis. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Mauris vulputate tempor eros a malesuada. Nunc posuere maximus scelerisque. Morbi velit urna, tincidunt quis ex id, convallis pulvinar mauris. Mauris mattis augue odio, sit amet auctor justo venenatis vel. Nam nec ullamcorper justo. Suspendisse faucibus vulputate nisi in luctus. In sit amet scelerisque nisi. Sed ac dapibus libero, at mollis dolor.

Praesent eget fringilla lectus. Donec consectetur tortor vel mi imperdiet, ut fermentum augue venenatis. Quisque in quam diam. In hac habitasse platea dictumst. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus auctor, ligula in accumsan sodales, velit ligula tristique urna, vitae fringilla erat velit cursus risus. Aenean mattis scelerisque quam at hendrerit. Vivamus sollicitudin magna felis, at tristique ante mollis quis. Donec finibus luctus porta. Maecenas lorem ex, consectetur pellentesque libero et, volutpat rutrum lacus. Fusce imperdiet augue enim, nec lacinia lorem scelerisque et.

Duis posuere erat et venenatis euismod. Suspendisse volutpat felis sit amet vulputate egestas. Aliquam sed lorem sapien. Integer neque mi, varius et lacus ut, viverra hendrerit tortor. Nunc tincidunt et risus quis luctus. In hac habitasse platea dictumst. Fusce volutpat, enim sit amet finibus pellentesque, nisl sapien rutrum orci, non semper turpis felis et justo. Nulla in sapien quam. Sed cursus odio ac orci viverra varius. Ut vehicula ligula nec lectus tempus porta. In vitae vehicula velit, egestas efficitur odio.

Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis dictum nisl sed sagittis dapibus. Sed quis enim non nibh tincidunt maximus vitae eget est. Phasellus nec libero aliquet, vehicula neque dapibus, vestibulum tellus. Aliquam erat volutpat. Ut ac laoreet diam, sed egestas leo. Sed sed turpis lobortis, varius enim quis, tincidunt lacus. Aenean sit amet mi suscipit, consequat purus eget, posuere purus. Nullam vel felis sit amet est malesuada ultrices. Ut finibus, purus a fringilla elementum, nulla ipsum dapibus massa, quis interdum risus dolor ac justo. Cras posuere, leo sed pharetra accumsan, sapien lacus porta sem, ut pulvinar quam leo eget nisl. Etiam eget lectus dictum, volutpat purus a, posuere diam. Donec leo dui, pretium iaculis metus ac, feugiat ullamcorper nisi. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec rhoncus justo lorem, eget laoreet urna pretium facilisis.

Praesent luctus venenatis mauris ac porta. Aliquam iaculis felis sed est sodales vestibulum. Curabitur eget interdum enim. Donec varius lectus eros, vehicula molestie massa consectetur id. Sed at sem metus. Donec in viverra elit. Sed auctor est sit amet tellus fringilla mollis nec malesuada magna. Quisque euismod feugiat justo eu mollis. Etiam eget dictum urna. Proin consectetur augue facilisis felis varius, vitae sagittis est mattis. Proin diam purus, tincidunt non pretium cursus, gravida vitae eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nulla id mi sed risus mattis cursus.

Nullam efficitur nec ligula at dictum. Maecenas quam lorem, luctus quis euismod at, consectetur nec ipsum. Ut porta placerat mauris vitae consequat. Phasellus fermentum felis arcu, quis luctus sem scelerisque suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc ac tortor ut mi varius pellentesque eget ut velit. Duis hendrerit congue dui sed faucibus. Curabitur fermentum enim tincidunt nulla accumsan ullamcorper. In bibendum varius justo a lacinia. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.

Curabitur eget dapibus mi, eget molestie nisl. Quisque euismod nec velit in congue. Morbi semper orci vel nulla porttitor ultrices. Duis id pulvinar ante. Aenean blandit mi erat, sit amet dignissim arcu fringilla nec. Etiam ex lectus, mollis vitae diam sit amet, consequat elementum odio. Vestibulum faucibus, odio vel facilisis faucibus, eros lacus gravida lectus, sit amet cursus nulla nisl non velit. Nullam et mauris porttitor, imperdiet magna sit amet, laoreet nunc. Vivamus vel dapibus metus, sed placerat ligula. Suspendisse potenti. Duis et porttitor felis. """
}

class Projetos(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100), nullable=False)
    descricao = db.Column(db.Text, nullable=False)
    data = db.Column(db.String(10), nullable=False)
    participantes = db.Column(db.Integer, nullable=False)

class Participantes(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100), nullable=False)
    cargo = db.Column(db.String(100), nullable=False)
    image_url = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(255), nullable=False)

class Coordenadores(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    nome = db.Column(db.String(100), nullable=False)
    cargo = db.Column(db.String(100), nullable=False)
    image_url = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(255), nullable=False)

class Publicacoes(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    titulo = db.Column(db.String(100), nullable=False)
    descricao = db.Column(db.Text, nullable=False)
    data = db.Column(db.String(10), nullable=False)
    texto = db.Column(db.Text, nullable=False)


@app.context_processor
def inject_globals():
    return {"static": static_html}

@app.route('/projetos')
def projetos():
    projetos = Projetos.query.order_by(Projetos.data.desc()).all()
    return render_template('projects.html', projetos=projetos, sufix="Projetos")

@app.route("/")
def index():
    return render_template('index.html', sufix="Home", texto="texto")

@app.route("/participantes")
def participantes():
    participantes = Participantes.query.all()
    coordenadores = Coordenadores.query.all()
    return render_template('participantes.html', participantes=participantes, coordenadores=coordenadores, sufix="Participantes")

@app.route("/publicacoes")
def publicacoes():
    publicacoes = Publicacoes.query.all()    
    return render_template('publicacoes.html', sufix="Publicações", publicacoes=publicacoes)

if __name__ == "__main__":
    app.run(host='0.0.0.0',
             port=5000,
             debug=True
             )

