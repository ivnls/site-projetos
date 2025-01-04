from flask import Flask, render_template
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://ivnls:12345678@localhost/projetossite'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

static_html = {
    "prefix": "Nome_do_projeto",
    "copyright": "© 2025 Copyright - Ivnls IFRS",
    "supdivisor": """
    <div>
        <div class="sup-divisor">
        <div class="red-block"></div>
        <div class="green-block"></div>
    </div>
    """
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
    return render_template('index.html', sufix="Home")

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
    app.run(host='0.0.0.0', port=5000)

