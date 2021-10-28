rm -r venv
sleep 10
python3 -m venv venv
echo hello
source venv/bin/activate
echo activated
which pip3
pip3 install -r requirements.txt
mkdocs serve
deactivate
