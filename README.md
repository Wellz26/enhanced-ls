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

### Linux / macOS

```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Copy to system path
sudo cp la /usr/local/bin/la
```

### Windows (Git Bash / WSL)

```bash
# Clone the repository
git clone https://github.com/Wellz26/enhanced-ls.git
cd enhanced-ls

# Make it executable
chmod +x la

# Add to your PATH or copy to a directory in PATH
cp la /usr/bin/la
```

### Alternative: Manual Setup

Add to your shell configuration (`~/.bashrc`, `~/.zshrc`, or `~/.bash_profile`):

```bash
# CyberSecWithWellz Enhanced LS
export PATH="$PATH:/path/to/enhanced-ls"
alias la='/path/to/enhanced-ls/la'
```

Then reload your shell:
```bash
source ~/.bashrc  # or source ~/.zshrc
```

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
- GitHub: [https://github.com/Wellz26]

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
