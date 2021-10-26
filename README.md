# Levend Behang

Levend Behang ("live wallpaper" translated loosely to Dutch) is a dynamic wallpaper tool for Linux.

Currently, it has only been tested with Ubuntu - I have no idea if it works on any other distro.

## Usage
### Installation
The zip files at [Releases](https://github.com/robinvandernoord/levend-behang/releases) should contain everything you need to install and run this tool.
Running the INSTALL.sh script will set up the required scripts (in /opt/dynwal), folders (~/.dynwal/), services (flowy.service at /etc/systemd/user/) and mime file type associations (image/heif).  
The latter means that after downloading a .heic wallpaper (e.g. from [Dynamic Wallpaper Club](https://dynamicwallpaper.club/gallery)), 
you can simply double click the downloaded file and your system should open a terminal, setting up the new wallpaper!  
Alternatively, you can run `/opt/dynwal/convert <file.heic>` to setup your dynamic wallpaper from the terminal.

### Building
Unlike the release zip, this source code does not contain the HEIC to JPG converter. 
To build this executable yourself, you will need npm with npx.
If you run the `build-heic-js` script, a binary standalone package of heic-cli will be created.

## Acknowledgements
This tool has been built on top of some other software:
- [Flowy](https://github.com/vineetred/flowy) to dynamically change the wallpaper
- [heic-cli](https://github.com/catdad-experiments/heic-cli) to convert .heic to .jpg
