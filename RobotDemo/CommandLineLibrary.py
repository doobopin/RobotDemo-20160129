import socket
import subprocess
import sys

class CommandLineLibrary(object):
    """Test library for testing *Calculator* business logic.

    Interacts with the calculator directly using its ``push`` method.
    """

    def __init__(self):
        self._result = ''


    def test_command_line(self, command):
        hostProc = subprocess.Popen([r'C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe',command], shell=True, stdout=subprocess.PIPE)
        for service in hostProc.communicate()[0].splitlines()[1:]:
            print(service.strip())


if __name__ == "__main__":
    clLib = CommandLineLibrary()
    sys.exit(clLib.test_command_line('dir'))