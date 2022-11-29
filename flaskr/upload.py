from flask import Blueprint, render_template
from flask_wtf import FlaskForm
from wtforms import FileField, SubmitField
from werkzeug.utils import secure_filename
import os
from wtforms.validators import InputRequired

bp = Blueprint('upload',__name__,url_prefix='/upload')

class UploadFIleForm(FlaskForm):
    file = FileField("File", validators=[InputRequired()])
    submit = SubmitField("Upload File")

@bp.route('/upload', methods=['GET', 'POST'])
def upload():
    form = UploadFIleForm()
    if form.validate_on_submit():
        file=form.file.data
        file.save(os.path.join(os.path.abspath(os.path.dirname(__file__)),'static/files',secure_filename(file.filename)))
        return "FIle has been uploaded."
    return render_template('blog/upload.html', form=form)