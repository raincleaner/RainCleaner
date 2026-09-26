# Changelog

All notable changes to Rain Cleaner. The same list, in six languages, is at https://raincleaner.eu/changelog .

## 2.9.2 — 2026-09-26

- Stronger licence checks: every Pro feature now verifies the server-signed licence itself, so a tampered copy of the program no longer unlocks Pro. Nothing changes for paying users.
- Recommended update. 171 automated tests.

## 2.9.1 — 2026-09-25

- New Pro prices: €9.99 a month, €59.99 a year (half price) or €99.99 once. No trial — the free version shows what Pro would do before you pay.
- Clear refund rules: a full refund within 14 days while the key is not activated; after activation only if Pro does not work on your PC.
- Redesigned Pro screen: it fits without scrolling, with bigger prices, new buttons and shorter feature cards.

## 2.9.0 — 2026-09-24

- Rain Cleaner Pro is here: Fix My PC, Make My PC Faster, Never Run Out of Space, Update Everything and Undo Anything.
- Undo from the history: DNS, network settings, boost, startup entries and quarantined files go back with one click.
- The free version keeps everything the website lists as free. Installing every driver at once and the scheduled autopilot, open until now, are now part of Pro.
- Licence activation fixed: keys activated again (the server signed its answers with the product's old name).
- The menu fits without a scrollbar. 167 tests.

## 2.8.0 — 2026-09-24

- Action history: every change Rain Cleaner makes — cleaning, DNS, network settings, boost, drivers, startup entries, uninstalls, quarantine — is written down with what it was before, what it became and whether it can be undone. Export it as HTML or JSON; user names, the computer name, serial numbers, MAC and IP addresses are always left out.
- Every number now says where it came from: measured by Rain Cleaner, reported by Windows, reported by the device, estimated, or no data. A missing value is shown as “no data”, never as “0” or “fine”.
- Crash reports from the last 14 days are called out before cleaning: deleting them removes the evidence of why something crashed.
- My computer: the reliability counters a drive reports (wear, power-on hours, read and write errors) shown raw, with their source, and free space in its own group. No invented health scores.
- Command line: raincmd history, and raincmd doctor — crashes and unexpected shutdowns next to Rain Cleaner's own changes, in time order, without claiming causes.
- 154 tests (30 new).

## 2.7.2 — 2026-09-24

- Browser caches are now cleaned for every Chrome, Edge and Brave profile, not only the first one (“Default”). The list of profiles comes from the browser's own file, and only the cache folders inside each profile can be touched — never cookies, passwords or history.
- Path safety hardening: before anything is deleted, every folder on the way to it is checked. If one of them is a junction or a symbolic link, nothing behind it is touched. Before, only the last part of the path was checked.
- 124 tests, 22 of them new for these two changes.

## 2.7.1 — 2026-08-28

- The protection screen used to print “Nothing worrying.” directly above a red alarm. The line belongs to the list, and the list also carries the journal — so it appeared every time the page was opened after an alarm.
- The check now reports what it itself found, instead of a bare “Found: 0” under a list that contains an alarm.
- 102 tests, two of them written for exactly this.

## 2.7.0 — 2026-08-27

- The program now checks for a new version by itself, once a day when it starts, and says so in a thin bar at the bottom of the window.
- It deliberately does not download or install anything — the button opens the download page in your browser. An unsigned program that fetches and runs an installer on its own is exactly what antivirus software is right to distrust.
- “Not now” is remembered: that version is never mentioned again, and only a newer one brings the bar back. The whole thing can be switched off in Settings, and then the server is not asked at all.
- 91 tests became 100.

## 2.6.0 — 2026-08-27

- Three sentences the program used to say that were not true are gone: a boost it had not performed, an all-clear printed over an alarm the background service had seen, and a disk snapshot it had not taken.
- The protection screen now reads the background service's own journal, so what it shows is what was actually seen.
- The decoy files are named in English instead of transliterated Bulgarian, and the ones an older version left behind are cleared away.
- 82 tests became 91.

## 2.5.9 — 2026-08-26

- Everything now points at raincleaner.eu: licences, the update check and the links in Programs and Features. The old fairymu.net addresses keep working for machines that already have an older build.
- Mail from the new domain is signed (SPF, DKIM, DMARC).

## 2.5.8 — 2026-08-26

- A debug run found and fixed five faults that were invisible in normal use, among them a journal chain that broke when the program and the service wrote at the same time, and weights that sat exactly on the thresholds they had to cross.

## 2.5.6 — 2026-08-26

- Protection against ransomware: a lattice of decoy files, entropy paired with each file's own signature, a score that explains itself, and a journal chained by hashes.
- A guard for BitLocker, an Internet screen that only claims what it can measure, real numbers on the dashboard, and drivers from the manufacturer's own channel when it is newer than Windows Update.

## 2.4.0 — 2026-08-26

- Pro became "coming soon", so every gate is open until there is something to buy. Boost works from a single press without asking for a game. The installer asks which language the program should start in.

## 2.2.0 — 2026-08-25

- Autopilot, emergency drivers for a machine with no network, gaming runtimes through winget, and a hardware inventory that says "no reading" instead of inventing a number.
- A portable version was added, because the installer is what SmartScreen stops.

## 2.1.0 — 2026-08-25

- A game booster written from scratch. It never suspends or kills a process — that technique is the core of the attacks that freeze antivirus software, and the gain over simply lowering priorities is small.
- Everything it changes is written down before it changes it, so a power cut during a game costs nothing.

## 1.0.0 — 2026-08-25

- The first working version: twelve categories of cleaning with an explanation for each, drivers through Windows Update with a restore point and a copy of the driver store, startup entries, installed programs, a scheduling service and an MSI installer.
