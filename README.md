# Payment Service 

This service is written on `Python 3`, So need it to run this app.

CentOS 7 comes with `Python 2` by default. So we need `Python 3` to be installed.

1. Install Python 3

```
# yum install python36 gcc python3-devel -y
```

2. Create a user for running the application 

```
# useradd payment
```

3. Clone the repo.

**Clone Using GitClone**

Clone with following settings.

User - `payment`
Path: `/home/payment`

4. Install the dependencies

```
# cd /home/payment/payment 
# pip3 install -r requirements.txt
```

**Note: Above command may fail with permission denied, So run as root user**

5. Setup the service 

```
# mkdir -p /var/log/robo-shop/
# cp /home/payment/payment/payment.service /etc/systemd/system/payment.service
# systemctl daemon-reload
# systemctl enable payment 
# systemctl start payment
```
