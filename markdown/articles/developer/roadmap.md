---
title: Developer Roadmap
permalink: developer/roadmap.html
summary: View the status of the project, learn where to contribute, and more!
---
## Roadmap
Here are some helpful development milestones for new contributors and seasoned expert developers looking to enhance the dahliaOS experience. 

Tables are formatted as follows:
* Idea - The basic concept of a specific aspect of a project
* Description - Should be self-describing, really ;)
* Starting point - A handy place to start looking when implementing an idea
* Assignee - Current person working on the idea, preferably by Github username
* Status - OPEN, CLOSED, or BLOCKED. Blocked ideas are limited by technical limitations within third-party libraries or superseded by other issues.
### Repository List
Not all repositories are shown, and they are listed in alphabetical order.

### Buildroot - Tool to configure and build dahliaOS Linux-based builds
<table>
    <thead>
        <tr>
            <th>Idea</th>
            <th>Description</th>
            <th>Starting Points</th>
            <th>Assignee</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Single build that supports both EFI and Legacy PCs</td>
            <td>Builds currently require two images, EFI and Legacy. Ideally, these could be merged into a single image file, simplifying distribution.</td>
            <td><a href="https://github.com/dahliaOS/buildroot/tree/master/fs/iso9660">Legacy ISO image config</a>
            <p></p>
            <a href="https://github.com/dahliaOS/buildroot/tree/master/board/dahliaos">EFI board configuration files</a>
            </td>
            <td></td>
            <td>OPEN</td>
        </tr>
         <tr>
            <td>XOrg Improvements/Wayland Migration</td>
            <td>Currently, XOrg on dahliaOS is *extremely* janky, failing its startup service, then manually needing to be configured and restarted using .profile. Wayland may provide a more convenient and faster platform for displaying Pangolin, and may also make the migration to a standalone Pangolin Desktop environment easier.</td>
            <td><a href="https://github.com/dahliaOS/buildroot/blob/master/dahliaOS-overlays/root/.profile">XOrg initialization script</a>
            <p></p>
            <a href="https://github.com/dahliaOS/buildroot/tree/master/package/wayland">Wayland package, set with BR2_PACKAGE_WAYLAND=y</a>
            </td>
            <td></td>
            <td>OPEN</td>
        </tr>
        <tr>
            <td>Improve desktop session startup</td>
            <td>Currently Pangolin is started by some terminal startup scripts rather than system services. It should be passed through a display manager, and started that way.</td>
            <td><a href="https://github.com/dahliaOS/buildroot/blob/master/dahliaOS-overlays/etc/X11/xinit/xinitrc">Profile script that starts Pangolin</a>
            <p></p>
            </td>
            <td></td>
            <td>OPEN</td>
        </tr>
    </tbody>
</table>

### Calculator - Calculator app for dahliaOS
### Clock - Clock app for dahliaOS
### dap - Experimental Dart-based package manager
### Documentation - Information about dahliaOS
### Files - dahliaOS File manager
### Fimage - Portable Fuchsia Emulator
### Graft - Virtualization tool for dahliaOS
### Pangolin Desktop/Backend - Main user interface for dahliaOS
### Pangolin Display Manager - Lock Screen and account management tool
### System Logs - Error logging and reporting app
### System Recovery - System repair tool, and initial setup OOBE
### Terminal - Terminal emulator in Flutter
### Text editor - Text editor for dahliaOS
### Utopia - Window manager for Pangolin
### Website - Official dahliaOS website
### Welcome - dahliaOS Welcome Application
