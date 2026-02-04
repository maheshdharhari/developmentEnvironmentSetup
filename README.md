# Development Environment Setup

This repository contains configuration files and scripts to automate the setup of a development environment. It leverages package managers like `winget` and `choco` to install essential software and tools.

---

## Files in the Repository

### `app.json`
This file defines the configuration for installing software and managing WPF-related tweaks and features.

#### Structure:
1. **`WPFTweaks`**:
   - Reserved for specifying any tweaks or customizations related to WPF (Windows Presentation Foundation).
   - Currently empty.

2. **`Install`**:
   - A list of software applications to be installed.
   - Each entry specifies the application name and its respective installation commands for:
     - `winget` (Windows Package Manager)
     - `choco` (Chocolatey)

3. **`WPFInstall`**:
   - A list of identifiers for WPF-related installation tasks.
   - These identifiers can be used in scripts or automation tools to trigger specific installations.

4. **`WPFFeature`**:
   - Reserved for specifying WPF-related features.
   - Currently empty.

---

## Getting Started

To set up your development environment using the configurations in this repository:

1. **Install the necessary package managers**:
   - **`winget`**: Follow the [official guide](https://docs.microsoft.com/en-us/windows/package-manager/winget/?tabs=cmd) to install Winget.
   - **`choco`**: Follow the [Chocolatey installation guide](https://chocolatey.org/install) to install Chocolatey.

2. **Automate software installation**:
   - Use the `app.json` file to automate the installation of software.
   - Run a script or tool that reads the `Install` section and installs the listed applications using `winget` or `choco`.

3. **Customize WPF configurations**:
   - Modify the `WPFTweaks` and `WPFFeature` sections as needed for your WPF-related configurations.

---

## Software Included

The following software is configured for installation:

| Software                  | Winget Identifier                     | Chocolatey Identifier       |
|---------------------------|---------------------------------------|-----------------------------|
| 7-Zip                     | `7zip.7zip`                          | `7zip`                      |
| WinRAR                    | `RARLab.WinRAR`                      | `winrar`                    |
| Visual Studio 2022        | `Microsoft.VisualStudio.2022.Community` | `visualstudio2022community` |
| Microsoft Teams           | `Microsoft.Teams`                    | `microsoft-teams`           |
| qBittorrent               | `qBittorrent.qBittorrent`            | `qbittorrent`               |
| Ditto Clipboard Manager   | `Ditto.Ditto`                        | `ditto`                     |
| Mozilla Firefox           | `Mozilla.Firefox`                    | `firefox`                   |
| Git                       | `Git.Git`                            | `git`                       |
| Brave Browser             | `Brave.Brave`                        | `brave`                     |
| Notepad++                 | `Notepad++.Notepad++`                | `notepadplusplus`           |
| VLC Media Player          | `VideoLAN.VLC`                       | `vlc`                       |
| Google Chrome             | `Google.Chrome`                      | `googlechrome`              |
| Flameshot Screenshot Tool | `Flameshot.Flameshot`                | `flameshot`                 |

---

## Contributing

Feel free to contribute by:
- Adding new software to the `Install` section.
- Defining WPF tweaks or features in the `WPFTweaks` and `WPFFeature` sections.
- Improving the automation process.

---

## License

This project is open-source and available under the [MIT License](LICENSE).

---

## Author

Created by [Mahesh Dharhari](https://github.com/maheshdharhari).
