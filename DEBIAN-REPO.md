# Creating an APT Repository for HUH

This guide shows how to make `huh` installable via `apt install huh`.

## Option 1: Using GitHub Releases (Recommended)

### Step 1: Build the .deb Package

On a Linux system:
```bash
chmod +x build-deb.sh
./build-deb.sh
```

This creates: `huh_1.0_all.deb`

### Step 2: Upload to GitHub Releases

1. Go to https://github.com/Wellz26/enhanced-ls/releases
2. Click "Create a new release"
3. Tag version: `v1.0`
4. Release title: `huh v1.0`
5. Upload `huh_1.0_all.deb`
6. Publish release

### Step 3: Users Install

Users can then install with:
```bash
# Download the .deb file
wget https://github.com/Wellz26/enhanced-ls/releases/download/v1.0/huh_1.0_all.deb

# Install it
sudo dpkg -i huh_1.0_all.deb

# Run it
huh
```

---

## Option 2: Using a PPA (Ubuntu/Debian)

### Create a Launchpad PPA

1. **Create Launchpad Account**
   - Go to https://launchpad.net
   - Sign up / Log in

2. **Create a PPA**
   - Go to your profile
   - Click "Create a new PPA"
   - Name: `enhanced-ls`
   - Display name: `CyberSecWithWellz Enhanced LS`
   - Description: `Advanced interactive directory listing tool`

3. **Upload GPG Key**
   ```bash
   # Generate GPG key (if you don't have one)
   gpg --gen-key

   # Upload to Ubuntu keyserver
   gpg --send-keys YOUR_KEY_ID
   ```

4. **Build Source Package**
   ```bash
   # Install build tools
   sudo apt install devscripts debhelper

   # Create source package
   debuild -S -sa

   # Upload to PPA
   dput ppa:yourusername/enhanced-ls huh_1.0_source.changes
   ```

### Users Install from PPA

```bash
sudo add-apt-repository ppa:wellz26/enhanced-ls
sudo apt update
sudo apt install huh
```

---

## Option 3: Self-Hosted Repository

### Create Your Own APT Repository

1. **Build the package** (on Linux):
   ```bash
   ./build-deb.sh
   ```

2. **Create repository structure**:
   ```bash
   mkdir -p repo/debian
   cp huh_1.0_all.deb repo/debian/
   cd repo
   ```

3. **Generate Packages file**:
   ```bash
   dpkg-scanpackages debian /dev/null | gzip -9c > debian/Packages.gz
   ```

4. **Host on GitHub Pages or your server**:
   - Push `repo/` to a `gh-pages` branch
   - Or host on your own server

5. **Users add your repository**:
   ```bash
   echo "deb [trusted=yes] https://wellz26.github.io/enhanced-ls/repo debian/" | sudo tee /etc/apt/sources.list.d/enhanced-ls.list
   sudo apt update
   sudo apt install huh
   ```

---

## Option 4: Homebrew (macOS)

### Create Homebrew Tap

1. **Create a tap repository**:
   ```bash
   # Create repo: homebrew-tap
   # Add file: huh.rb
   ```

2. **Formula** (huh.rb):
   ```ruby
   class Huh < Formula
     desc "Advanced interactive directory listing tool"
     homepage "https://github.com/Wellz26/enhanced-ls"
     url "https://github.com/Wellz26/enhanced-ls/archive/refs/tags/v1.0.tar.gz"
     sha256 "CALCULATE_THIS"
     license "MIT"

     def install
       bin.install "huh"
     end

     test do
       system "#{bin}/huh", "--version"
     end
   end
   ```

3. **Users install**:
   ```bash
   brew tap wellz26/tap
   brew install huh
   ```

---

## Recommended Approach

**For now, use GitHub Releases (Option 1)**:
- Easy to set up
- No infrastructure needed
- Users can download and install with one command

**Later, consider PPA (Option 2)**:
- Native `apt install` experience
- Automatic updates
- Professional distribution

---

## Quick Start (GitHub Releases)

1. Build on Linux: `./build-deb.sh`
2. Create GitHub release
3. Upload `huh_1.0_all.deb`
4. Users install with:
   ```bash
   wget https://github.com/Wellz26/enhanced-ls/releases/download/v1.0/huh_1.0_all.deb
   sudo dpkg -i huh_1.0_all.deb
   ```
