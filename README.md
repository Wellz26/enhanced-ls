# CyberSecWithWellz Enhanced LS

An advanced, interactive directory listing tool that supercharges the traditional `ls` command with a cybersecurity-themed interface and powerful features.

![Version](https://img.shields.io/badge/version-1.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Platform](https://img.shields.io/badge/platform-Linux%20%7C%20macOS%20%7C%20Windows-lightgrey)

## Features

- **Interactive Menu System** - Choose from 15+ powerful operations
- **Cyber-Themed Interface** - Professional neon color scheme with ASCII art
- **Cross-Platform Support** - Works on Linux, macOS, and Windows (Git Bash/WSL)
- **Advanced Filtering** - Sort by size, time, type, and more
- **Security Tools** - SUID/SGID file scanning for Linux/macOS
- **Statistics** - Directory analytics and file counting
- **Pattern Matching** - Wildcard search capabilities
- **Tree View** - Hierarchical directory visualization

## Screenshots

```
  ╔═══════════════════════════════════════════════════════════╗
  ║                                                           ║
  ║   ██████╗██╗   ██╗██████╗ ███████╗██████╗ ███████╗███████╗║
  ║  ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝║
  ║  ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝███████╗█████╗  ║
  ║  ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗╚════██║██╔══╝  ║
  ║  ╚██████╗   ██║   ██████╔╝███████╗██║  ██║███████║███████╗║
  ║   ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝║
  ║                                                           ║
  ║              CyberSecWithWellz - Enhanced LS              ║
  ║                    Advanced Directory Scanner             ║
  ╚═══════════════════════════════════════════════════════════╝
```

## Installation

### 🐧 Linux

**Method 1: System-wide installation (Recommended)**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Copy to system path
sudo cp la /usr/local/bin/la

# Verify installation
la
```

**Method 2: Add to PATH**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls
chmod +x la

# Add to ~/.bashrc
echo "export PATH=\"\$PATH:\$HOME/enhanced-ls\"" >> ~/.bashrc
source ~/.bashrc

# Verify installation
la
```

**Method 3: Create Alias**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls
chmod +x la

# Add alias to ~/.bashrc
echo "alias la=\"\$HOME/enhanced-ls/la\"" >> ~/.bashrc
source ~/.bashrc

# Verify installation
la
```

---

### 🍎 macOS

**Method 1: System-wide installation (Recommended)**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Copy to system path
sudo cp la /usr/local/bin/la

# Verify installation
la
```

**Method 2: Add to PATH (for zsh users)**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls
chmod +x la

# Add to ~/.zshrc
echo "export PATH=\"\$PATH:\$HOME/enhanced-ls\"" >> ~/.zshrc
source ~/.zshrc

# Verify installation
la
```

**Method 3: Create Alias (for zsh users)**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls
chmod +x la

# Add alias to ~/.zshrc
echo "alias la=\"\$HOME/enhanced-ls/la\"" >> ~/.zshrc
source ~/.zshrc

# Verify installation
la
```

---

### 🪟 Windows (Git Bash)

**Method 1: Copy to system path**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Copy to user bin
mkdir -p ~/bin
cp la ~/bin/la

# Add to PATH in ~/.bashrc
echo "export PATH=\"\$PATH:\$HOME/bin\"" >> ~/.bashrc
source ~/.bashrc

# Verify installation
la
```

**Method 2: Direct copy to /usr/bin**
```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable and copy
chmod +x la
cp la /usr/bin/la

# Verify installation
la
```

---

### 🐧 Windows (WSL - Windows Subsystem for Linux)

```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Copy to system path
sudo cp la /usr/local/bin/la

# Verify installation
la
```

---

### 📦 Manual Installation (No Git)

1. Download the script directly:
   ```bash
   curl -o la https://raw.githubusercontent.com/Wellz26/enhanced-ls/main/la
   chmod +x la
   ```

2. Move to a directory in your PATH:
   ```bash
   sudo mv la /usr/local/bin/la
   ```

---

### ❌ Uninstallation

**If installed to /usr/local/bin:**
```bash
sudo rm /usr/local/bin/la
```

**If using PATH or alias:**
- Remove the line from `~/.bashrc` or `~/.zshrc`
- Run: `source ~/.bashrc` or `source ~/.zshrc`

## Usage

Simply run the command:

```bash
la              # List current directory
la /path/to/dir # List specific directory
```

### Available Operations

| Option | Feature | Description |
|--------|---------|-------------|
| **01** | All Files | Show all files including hidden |
| **02** | Detailed View | Long format with complete metadata |
| **03** | Sort by Size | Largest files first |
| **04** | Sort by Time | Newest files first |
| **05** | Tree Structure | Hierarchical directory view |
| **06** | Directories Only | Filter only directories |
| **07** | Files Only | Filter only regular files |
| **08** | Human-Readable Sizes | Display in KB/MB/GB format |
| **09** | Recursive Scan | Deep directory listing |
| **10** | Pattern Search | Wildcard matching (*.txt, *.sh) |
| **11** | Permission Analysis | Show octal permissions with ownership |
| **12** | Group by Type | Categorize files and directories |
| **13** | Security Scan | Find SUID/SGID files (Linux/macOS only) |
| **14** | File Count Stats | Directory statistics and analytics |
| **15** | Recent Files | Files modified in last 24 hours |

## Requirements

### All Platforms
- Bash 4.0 or higher
- Standard Unix utilities (ls, find, awk, sed, grep)

### Optional
- `tree` command for enhanced tree view (Option 05)

### Platform-Specific

**Linux:**
- All features fully supported

**macOS:**
- All features fully supported
- Uses BSD `ls` (colors handled automatically)

**Windows (Git Bash/WSL):**
- Most features supported
- SUID/SGID scanning disabled (not applicable)
- Requires Git Bash or Windows Subsystem for Linux

## Compatibility

- ✅ Linux (all distributions)
- ✅ macOS (10.x and above)
- ✅ Windows 10/11 (via Git Bash or WSL)
- ✅ BSD systems
- ✅ ChromeOS (via Linux container)

## Examples

### List all files with hidden files
```bash
la
# Select option: 01
```

### Find large files in a directory
```bash
la /var/log
# Select option: 03
```

### Security audit for SUID files
```bash
la /usr/bin
# Select option: 13
```

### Search for specific file types
```bash
la ~/Documents
# Select option: 10
# Enter pattern: *.pdf
```

## Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation

## Security Features

The Security Scan feature (Option 13) helps identify potentially dangerous SUID/SGID files. This is useful for:

- System hardening
- Security audits
- Privilege escalation detection
- General system security assessment

**Note:** This feature is only available on Linux and macOS systems.

## License

MIT License - see LICENSE file for details

## Author

**CyberSecWithWellz**
- GitHub: [@Wellz26](https://github.com/Wellz26)

## Acknowledgments

Built for the cybersecurity and Linux community to enhance productivity and system exploration.

## Support

If you find this tool useful, consider:
- ⭐ Starring the repository
- 🐛 Reporting bugs
- 💡 Suggesting new features
- 📢 Sharing with others

---

**Made with ❤️ by CyberSecWithWellz**
