from subprocess import getoutput
import sys

try:
    action =  sys.argv[1]
except IndexError:
    print("Run the script with action")
    exit(1)

current_display= getoutput("i3-msg -t get_workspaces | jq '.[] | select(.focused == true).output'")
current_workspace=getoutput("i3-msg -t get_workspaces | jq '.[] | select(.focused == true).num'")
workspaces=getoutput(f"i3-msg -t get_workspaces | jq '.[] | select(.output == {current_display}).num'").split("\n")

def forward_switch():
    for index, workspace in enumerate(workspaces):
        if workspace == current_workspace and index != len(workspaces) -1:
            print(f"Switching to {workspaces[index+1]}")
            getoutput(f"i3-msg workspace {workspaces[index+1]}")
            break

        if index == len(workspaces) -1 :
            print(f"Switching to {workspace}")
            getoutput(f"i3-msg workspace {workspaces[0]}")
            break

def backward_switch():
    for index, workspace in enumerate(workspaces):
        if workspace == current_workspace and index != len(workspaces) -1:
            print(f"Switching to {workspaces[index-1]}")
            getoutput(f"i3-msg workspace {workspaces[index-1]}")
            break

        if index == len(workspaces) -1 :
            print(f"Switching to {workspaces[index-1]}")
            getoutput(f"i3-msg workspace {workspaces[index-1]}")
            break

def main():
    if action == "forward":
        forward_switch() 
    if action == "backward":
        backward_switch()

if __name__ == "__main__":
    main()


