if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TORZANMOVIE/SHARKAUTOFILTERBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /SHARKFILTERBOT
fi
cd /DQ-The-File-Donor
pip3 install -U -r requirements.txt
echo "Starting SHARKFILTERBOT...."
python3 bot.py
