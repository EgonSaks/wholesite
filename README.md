# Wholesite.sh

This Bash script utilizes the `wget` command to download a complete website along with its assets such as images, JavaScript files, CSS files, etc. The script organizes the downloaded content into a directory structure based on the domain of the specified URL.

## Prerequisites

- Ensure that the `wget` command is installed on your system. If not, you can install it using your system's package manager.

### Installing wget

#### For macOS using Homebrew

```bash
brew install wget
```

#### For Debian-based systems (e.g., Ubuntu)

```bash
sudo apt-get update
sudo apt-get install wget
```

## Usage

1. Clone or download the `wholesite.sh` script to your local machine.

2. Make the script executable

```bash
chmod +x wholesite.sh
```

3. Run the script by providing the URL of the website you want to download

```bash
./wholesite.sh http://example.com
```

   Replace `http://example.com` with the actual URL of the website you want to download.

4. The script will create a directory based on the domain and download the entire website along with its assets into that directory.

## Options

- `--recursive`: Download recursively.
- `--level 5`: Set the maximum recursion level to 5.
- `--no-clobber`: Skip downloading files that already exist.
- `--page-requisites`: Download page requisites, including inline images.
- `--adjust-extension`: Add suitable extensions to filenames.
- `--span-hosts`: Enable spanning across hosts when doing recursive retrieving.
- `--convert-links`: Convert links to make them suitable for local viewing.
- `--restrict-file-names=windows`: Modify filenames to be compatible with Windows.
- `--domains`: Specify the domain(s) to limit downloading to.
- `--no-parent`: Do not ascend to the parent directory when retrieving recursively.

## Purpose

- Archiving a website for offline viewing.
- Creating a local copy of a website for development or testing purposes.
