# Development Environment Setup

This repository contains configuration files and scripts to automate the setup of a development environment. It leverages package managers like `choco` to install essential software and tools.

---

## Files in the Repository

### `packages.config`
This file defines a list of software packages to be installed using Chocolatey, a Windows package manager. It simplifies the process of setting up a development environment by automating the installation of required tools.

#### Structure:
- Each `<package>` element specifies a software package to be installed.
- The `id` attribute corresponds to the Chocolatey package name.

#### Example:
```
<packages>
  <package id="git"/>
  <package id="notepadplusplus"/>
  <package id="vlc"/>
</packages>
```

#### Usage:
1. **Install Chocolatey**:
   - Follow the [Chocolatey installation guide](https://chocolatey.org/install).

2. **Run the Installation Command**:
   - Open a terminal and navigate to the directory containing `packages.config`.
   - Run:
     ```powershell
     choco install packages.config -y
     ```

3. **Update or Uninstall Packages**:
   - To update all packages:
     ```powershell
     choco upgrade packages.config -y
     ```
   - To uninstall all packages:
     ```powershell
     choco uninstall packages.config -y
     ```

---

## Getting Started

To set up your development environment using the configurations in this repository:

1. **Install Chocolatey**:
   - Follow the [Chocolatey installation guide](https://chocolatey.org/install).

2. **Automate software installation**:
   - Use the `packages.config` file to automate the installation of software using Chocolatey.

---

## Software Included

The following software is configured for installation:

| Software                  | Chocolatey Identifier       |
|---------------------------|-----------------------------|
| Git                       | `git`                      |
| 7-Zip                     | `7zip`                     |
| WinRAR                    | `winrar`                   |
| Visual Studio 2026        | `visualstudio2026enterprise` |
| Microsoft Teams           | `microsoft-teams`          |
| qBittorrent               | `qbittorrent`              |
| Ditto Clipboard Manager   | `ditto`                    |
| Mozilla Firefox           | `firefox`                  |
| Brave Browser             | `brave`                    |
| Notepad++                 | `notepadplusplus`          |
| VLC Media Player          | `vlc`                      |
| Google Chrome             | `googlechrome`             |
| Flameshot Screenshot Tool | `flameshot`                |
| LINQPad                   | `linqpad`                  |
| SumatraPDF                | `sumatrapdf`               |

---

## Contributing

Feel free to contribute by:
- Adding new software to the `packages.config` file.
- Improving the automation process.

---

## License

This project is open-source and available under the [MIT License](LICENSE).

---

## Author

Created by [Mahesh Dharhari](https://github.com/maheshdharhari).
