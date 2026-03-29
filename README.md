# Hercules-LFS Progress Tracker

## Build Profile
- LFS version: 13.0
- Build mode: Clean start
- Primary target: Bare metal
- Validation strategy: Complete one full run in a VM first, then repeat on bare metal
- Recommended host distro for VM build: Ubuntu 24.04 LTS (minimal install)

## Current Position
- Phase: Preparation
- Book location: Chapters 1-4
- Immediate focus: Choose safest build environment strategy before deep work

## Current Tasks
- Decide build environment strategy: live USB with persistence vs VM-first on host
- Choose isolation method that protects productive laptop (disk, bootloader, and host packages)
- Pick final VM host distro choice (default: Ubuntu 24.04 LTS, alternative: Debian 12)
- Skim LFS book through Chapter 4 (focus on goals and checkpoints, not every detail)
- Use mentor-led Q&A after each section to confirm understanding
- Check current `/bin/sh` symlink target and reconfigure it to Bash if needed
- Re-run Ubuntu shell reconfiguration and choose Bash for `/bin/sh`
- Re-run `version-check.sh` and confirm all checks are OK
- Answer setup checkpoint questions:
  - Host distro and version
  - Host requirements check result (Chapter 2)
  - Planned `$LFS` storage target (VM disk first, then bare metal)
  - Exact current section in Chapter 4

## Completed
- Selected LFS version 13.0
- Decided to start clean
- Chosen approach: VM validation first, bare metal target
- Reading plan decided: skim Chapter 1, start actionable reading in Chapter 2
- Ran `version-check.sh` successfully and collected current host-status report
- Installed/fixed host dependencies: `bison` and `texinfo`
- Confirmed alias/tool checks now pass for `awk` and `yacc`
- Clarified that interactive shell (`fish`) is separate from system `/bin/sh` used by scripts
- Diagnosed root cause: `/bin/sh` currently points to `dash`
- Evaluated safe host options and narrowed recommendation to Ubuntu LTS or Debian stable in VM

## Next Milestones
- Finish quick skim of Chapter 1.1 (How to Build an LFS System)
- Complete Chapter 2 host validation
- Complete Chapter 3 package and patch preparation
- Complete Chapter 4 final preparations
- Start Chapter 5 temporary toolchain

## Risks To Watch
- Mixing instructions from different LFS versions
- Incorrect or inconsistent `$LFS` value
- Reusing old build artifacts from previous attempts
- Incomplete host prerequisites causing downstream toolchain failures
