sudo apt update
sudo apt install davfs2 -y
mkdir -p ~/.davfs2/secrets
echo "twentyone" > ~/.davfs2/secrets/wp.hapuren.cn
echo "twentyone" >> ~/.davfs2/secrets/wp.hapuren.cn
sudo echo 'wp.hapuren.cn ~/.davfs2/secrets/wp.hapuren.cn' >> /etc/davfs2/secrets
sudo systemctl restart davfs2
mkdir sync
sudo mount -t davfs https://wp.hapuren.cn/dav /sync
cd sync
rsync rsync://rsync.mirrors.ustc.edu.cn/debian/* .
