### Starting Up the Jupyter Environment
1. Make sure you are in your class directory. `cd /<path>`. Mine is `/projects/okcoders/da_2019` but yours may be slightly different.
2. Start up your virtual environment. `source ve/bin/activate`. You should see your prompt change to reflect the running environment.
3. Start the notebook. `jupyter notebook`

A window should open on your browser with the running notebook. If not, there is a URL that will show in the startup logs of jupyter right there in your terminal.

### Shutting it down when done
When you are done with a session you will need to shut down your notebook and environment.
1. Shut down the notebook. There is a `Quit` button in the top right of the screen that usually will shut it down. If not, use `Ctl+C` in your terminal to halt the notebook process.
2. Type `deactivate` in the terminal to turn off your virtual environment--you should see the terminal prompt change back as it was before.

---

### Installing Python and other necessary tools

#### Mac
If you are uncomfortable with anything here, I am happy to help you in-class or before/after as time allows. The whole process should take maybe 10 minutes at most.
1. Open the terminal and make sure you are in the directory you intend to use for class.
2. Make sure you have homebrew installed. Installation instructions are [here](https://brew.sh) if you do not.
3. Check to see if you have Python 3 installed. Type `which python3` into the terminal prompt. If you get a file location back then you do, otherwise you do not. If you do not, then we will install python with homebrew by running the command `brew install python`. Once installed, check the version by running `python3 -V` (note: this is a capital "V"). Ideally this should `3.7.<anything>`, if not come talk to me and it is an easy update.
4. Use Python to make a virtual environment with the command `python3 -m venv ve`. [Here](https://docs.python.org/3/library/venv.html) is a great walkthrough if you need more detail.
5. Start up the virtual environment (see notes above).
6. Use pip (Python Package Installer) to install JupyterLab. `pip3 install jupyterlab`. [Here](https://jupyter.org/install) are some more complete instructions that may help you self-serve if you need additional assistance.

Once complete, you should be able to follow the startup instructions above.


#### Windows
The instructions for windows are nearly identical, but run at the command prompt. The key difference is that you will download Python directly like any other program instead of using a package manager. I am less personally familiar with this process in Windows so as there is any ambiguity, we would be better off getting the installation done live.

Below are some guides that do a better job explaining what to do far better than I will ever be able to. If you uncomfortable with any of this, we will absolutely have time in class to make sure you are up and running.
+ [Python Installation Walkthrough](https://realpython.com/installing-python/): Choose the Windows track, but for the most part it speaks for itself.
+ [JupyterLab Installation Walkthrough](https://jupyter.org/install): We will be using the pip version as the default and not the Anaconda distribution or anything referencing conda. If you already have Anaconda installed, then let's talk through any kinks in-person but I am sure it will be just fine.
