#!/usr/bin/env python3

"""
	Helper script that generates a merged `tag` folder using digsite and stock tags by the means of symbolic links.
	This allows you to install digsite earthcity without overwriting your stock install or duplicating files.

	Author: num0005
	License: CC0 1.0
"""

# This script is licensed under the terms of the CC0 1.0 license (https://creativecommons.org/publicdomain/zero/1.0/legalcode.en)
# Attribution therefore is not required but is welcome

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
# INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# OR FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.

# IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import os
import argparse
from pathlib import Path
import shutil

def get_script_path():
    # no agreed upon way to do this, see endless discussions on stackoverflow
    return os.path.dirname(os.path.realpath(__file__))

def build_tag_list(type: str, path: str):
    print(f"Building list of {type} tag files...", end="", flush=True)
    tag_files = [p.relative_to(path) for p in Path(path).rglob("*") if p.is_file()]
    print("done!", flush=True)
    return tag_files

def is_path_unused(path: str):
     # don't attempt to check for TOCTOU
     if not os.path.exists(path):
        return True
     with os.scandir(path) as it:
        if any(it):
             return False
     return True

def prompt(question: str, default: bool = False):
    print(question, end="")
    if default:
        print(" [Y/n]")
    else:
        print(" [y/N]")
    while True:
        answer = input().lower().strip()
        if answer in ("yes", "y"):
            return True
        elif answer in ("no", "n"):
            return False
        elif answer == "":
            return default
        else:
            print("Unable to parse reponse, please replay with 'yes' or 'no'")

def link(output_folder, target_folder, name):
    link_path = os.path.join(output_folder, name)
    target_path = os.path.join(target_folder, name)

    link_folder = os.path.dirname(link_path)
    os.makedirs(link_folder, exist_ok=True)
    os.symlink(target_path, link_path)


parser=argparse.ArgumentParser(description=__doc__)
parser.add_argument('stock_tag_dir', help='stock/base H2 tags directory')
parser.add_argument('-d', '--digsite_git_dir', help='digsite repo path, this is applied as an overlay over the stock directory. By default the directory the script is located in will be used.', default=get_script_path())
parser.add_argument('output_tag_dir', help='output H2 tags directory, this is where the symbolic links will go.')
args = parser.parse_args()

digsite_tag_path = os.path.join(args.digsite_git_dir, "tags")

print(f"Digsite tag path: {digsite_tag_path}")
print(f"Stock tag path: {args.stock_tag_dir}")
print(f"Output tag path: {args.output_tag_dir}")

stock_tag_files = build_tag_list("stock", args.stock_tag_dir)
digsite_tag_files = build_tag_list("Digsite", digsite_tag_path)

if not is_path_unused(args.output_tag_dir):
    clear_dir = prompt(f"Output directory \"{args.output_tag_dir}\" exists and is not empty, do you want to delete the existing directory? THIS ACTION CANNOT BE UNDO.", default=False)
    if not clear_dir:
        print("Unable to continue as output directory is already in use, please fix this and re-run the script.")
        exit(-2)
    else:
        print("Deleting existing output directory...", flush=True, end="")
        shutil.rmtree(args.output_tag_dir)
        print("done!", flush=True)

os.makedirs(args.output_tag_dir, exist_ok=True)
print("Generating system links to stock tags...", end="", flush=True)

for stock_tag in stock_tag_files:
    if not stock_tag in digsite_tag_files:
        link(args.output_tag_dir, args.stock_tag_dir, stock_tag)
        # make the system link read-only
        target_path = os.path.join(args.output_tag_dir, stock_tag)
        os.chmod(target_path, 0o444)

print("done!", flush=True)

print("Generating system links to digsite tags...", end="", flush=True)
for digsite_tag in digsite_tag_files:
    link(args.output_tag_dir, digsite_tag_path, digsite_tag)

print("done!", flush=True)

print("all done have a nice day!")
