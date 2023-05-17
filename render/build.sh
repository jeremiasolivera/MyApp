set -o errexit

pip install -r requirements.txt

poetry install

python manage.py collectstatic --no-input
python manage.py migrate