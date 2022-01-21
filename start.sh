if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/FHKL-Bots432/JockerX.git /JockerX
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /JockerX
fi
cd /JockerX
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
