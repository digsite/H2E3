import os
import time
import subprocess

# Get the root folder as the current directory where the script is located
root_folder = os.path.dirname(os.path.abspath(__file__))

# Define paths based on the root folder
ghost_vehicle = os.path.join(root_folder, r'tags\objects\vehicles\ghost\ghost.vehicle')
ghost_lit_vehicle = os.path.join(root_folder, r'tags\objects\vehicles\ghost\ghost_lit.vehicle')
temp_nolight_ghost_vehicle = os.path.join(root_folder, r'tags\objects\vehicles\ghost\temp_nolight_ghost.vehicle')

# Renaming files
print("Renaming ghost.vehicle to temp_nolight_ghost.vehicle...")
os.rename(ghost_vehicle, temp_nolight_ghost_vehicle)
print("Renaming ghost_lit.vehicle to ghost.vehicle...")
os.rename(ghost_lit_vehicle, ghost_vehicle)

# Run tool.exe with the command
tool_exe = os.path.join(root_folder, 'tool.exe')
command = [tool_exe, 'build-cache-file', 'scenarios\\solo\\earthcity\\earthcity_e3\\earthcity_e3', 'compress']
print("Running tool.exe...")
subprocess.run(command)

# Do the same for PLAYGROUND scenario
tool_exe = os.path.join(root_folder, 'tool.exe')
command = [tool_exe, 'build-cache-file', 'scenarios\\solo\\earthcity\\earthcity_playground\\earthcity_playground', 'compress']
print("Running tool.exe... (PLAYGROUND)")
subprocess.run(command)

# Undo the renaming after tool.exe is done
print("Reverting file names...")
os.rename(ghost_vehicle, ghost_lit_vehicle)  # Renaming ghost.vehicle back to ghost_lit.vehicle
os.rename(temp_nolight_ghost_vehicle, ghost_vehicle)  # Renaming temp_nolight_ghost.vehicle back to ghost.vehicle

print("Done.")
