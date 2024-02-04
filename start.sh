if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/MAHIBSTAR/MBStarFilter /MBStarFilter
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /MBStarFilter
fi
cd /MBStarFilter
pip3 install -U -r requirements.txt
echo "Bot Started...."
python3 bot.py
