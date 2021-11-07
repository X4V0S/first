#!/usr/bin/env python3
from email.mime.multipart import MIMEMultipart
from email.mime.text import MIMEText
import smtplib
import json
from getpass import getpass


user = input("\nIngrese su mail: ")
password = getpass()

subjv = input("\nIngrese el asunto: ")

data = {
    "user": user,  # elian.hernandezsnch@uanl.edu.mx
    "pass": password,
    "subj": subjv  # OLAAA
    }


# create and setup the parameters of the message
email_msg = MIMEMultipart()
email_msg["From"] = data["user"]
receipents = ["irvin.martinezgnzl@uanl.edu.mx"]
email_msg["To"] = ", ".join(receipents)
email_msg["Subject"] = data["subj"]

# add in the message body
message = input("Ingrese el mensaje: ")  # por favorzinho, por favorzinho, eu imploro
email_msg.attach(MIMEText(message, "plain"))

# create server
server = smtplib.SMTP("smtp.office365.com:587")
server.starttls()
# Login Credentials for sending the mail
server.login(data["user"], data["pass"])


# send the message via the server.
server.sendmail(email_msg["From"], receipents, email_msg.as_string())
server.quit()
print("successfully sent email to %s:" % (email_msg["To"]))
