<p align="center">
  <img src="https://raw.githubusercontent.com/turkishdelightmu/TermLife/main/Github%20cover.png" alt="cmdLife Banner" width="100%"/>
</p>
 
<h1 align="center">cmdLife</h1>
 
<p align="center">
  <strong>terminal-inspired productivity · built in public · currently: day 7 of 100</strong>
</p>
 
<p align="center">
  <img src="https://img.shields.io/badge/status-building%20in%20public-f0c040?style=flat-square" alt="Status: Building in Public"/>
  <img src="https://img.shields.io/badge/day-7%20of%20100-f0c040?style=flat-square" alt="Day 7 of 100"/>
  <img src="https://img.shields.io/badge/iOS-17%2B-f0c040?style=flat-square&logo=apple&logoColor=white" alt="iOS 17+"/>
  <img src="https://img.shields.io/badge/Swift-5-f0c040?style=flat-square&logo=swift&logoColor=white" alt="Swift 5"/>
  <img src="https://img.shields.io/badge/SwiftUI-SwiftData-f0c040?style=flat-square" alt="SwiftUI"/>
  <img src="https://img.shields.io/badge/license-MIT-f0c040?style=flat-square" alt="License"/>
</p>
 
<br/>
 
```
user@life % today
 
  cmdlife v1.0 — terminal-inspired productivity
  ──────────────────────────────────────────────
  tasks    [####------]  4/10 complete
  habits   [######----]  3/5 complete   🔥 streak: 12 days
  focus    [##########]  25 min session done
  journal  encrypted · biometric locked
 
  type 'help' to see all commands.
 
user@life % _
```
 
<br/>
 
## What is cmdLife?
 
cmdLife is a **privacy-first productivity app** for iPhone that wraps your tasks, habits, focus timer, and encrypted journal inside a clean terminal interface. You type commands — the app responds. No tabs, no icons, no noise. Just you and your system.
 
It's for developers, power users, and anyone who thinks the command line is the most honest UI ever designed.
 
> Building from zero iOS experience — I architect the system, own every product and technical decision, and use Claude as the execution engine to close the gap between vision and shipped code. Following Paul Hudson's 100 Days of SwiftUI to build real, independent understanding alongside a real product. Currently on **Day 7**. Every commit is documented.
 
<br/>
 
## Features
 
```
user@life % help
 
  COMMANDS AVAILABLE
  ──────────────────
  today       daily overview — tasks + habits + focus snapshot
  tasks       manage your task list with priorities
  add         add task:  add "ship v1.1" --priority high
  complete    mark done: complete 3
  habits      view all habits and streaks
  check       log habit: check "morning run"
  focus       start 25-min pomodoro timer with ASCII progress
  journal     encrypted private journal — FaceID locked
  dashboard   neofetch-style system overview
  stats       weekly productivity metrics  [PREMIUM]
  help        this screen
```
 
### Core
 
- **Task Manager** — priority-tagged tasks (`HIGH / MED / LOW`), list and complete via command
- **Habit Tracker** — streak counters, daily check-ins, consistent ASCII progress bars
- **Focus Timer** — Pomodoro-style timer with live ASCII bar and local notification on completion
- **Journal** — AES-encrypted with CryptoKit, key stored in iOS Keychain only, optionally gated behind FaceID/TouchID
- **Dashboard** — `neofetch`-style daily snapshot combining all four modules
- **Stats** — weekly productivity metrics *(Premium)*
- **Home Screen Widget** — aggregate stats on your lock screen, no sensitive data shown *(Premium)*
 
### Design principles
 
- Dark `#0a0a0a` background, amber `#f0c040` prompt
- Monospace font throughout — no system UI chrome
- ASCII progress bars: `[###-------]` format
- Zero emoji anywhere in the interface
- `user@life %` prompt — always visible, always ready
 
<br/>
 
## Privacy & Security
 
cmdLife was designed security-first, not security-after.
 
| Guarantee | Implementation |
|-----------|----------------|
| **Fully offline** | Zero `URLSession` calls. Works in Airplane Mode. Always. |
| **Encrypted journal** | CryptoKit AES-GCM. Encrypted before SwiftData write. |
| **Keychain-only key** | Encryption key never touches `UserDefaults`. |
| **Biometric gate** | `LocalAuthentication` — FaceID / TouchID, opt-in. |
| **No CloudKit** | SwiftData local-only. iCloud sync is off by design. |
| **Widget safety** | Only non-sensitive aggregate data. Journal content never rendered in widget. |
 
<br/>
 
## Tech Stack
 
| Layer | Technology |
|-------|-----------|
| Language | Swift 5 |
| UI | SwiftUI |
| Persistence | SwiftData (local, no CloudKit) |
| Encryption | CryptoKit (AES-GCM) |
| Monetisation | StoreKit 2 (auto-renewable subscriptions) |
| Auth | LocalAuthentication (FaceID / TouchID) |
| Notifications | UNUserNotificationCenter |
| Widgets | WidgetKit + App Group shared container |
| Min target | iOS 17 |
 
### Architecture
 
Every architectural decision — CommandRouter design, encryption strategy, freemium gates — was made by me, implemented with Claude's assistance.
 
```
TerminalView
    └── CommandParser
            └── CommandRouter
                    ├── TaskCommand      → TaskManager (SwiftData)
                    ├── HabitCommand     → HabitManager (SwiftData)
                    ├── FocusCommand     → FocusTimer
                    ├── JournalCommand   → JournalManager (CryptoKit + SwiftData)
                    ├── DashboardCommand → aggregates all managers
                    └── StatsCommand     → StatsManager [PREMIUM]
```
 
<br/>
 
## Pricing
 
cmdLife is free to download with a generous free tier.
 
| | Free | Premium |
|--|------|---------|
| Tasks | Up to 5 | Unlimited |
| Habits | Up to 3 | Unlimited |
| Journal | 7-day history | Unlimited |
| Stats command | — | ✓ |
| Home screen widget | — | ✓ |
| Themes | Default | Multiple |
| FaceID journal lock | ✓ | ✓ |
| **Price** | **Free** | **$1.99/mo · $14.99/yr** |
 
The yearly plan works out to ~$1.25/month. No dark patterns. Cancel any time from iOS Settings → Apple ID → Subscriptions.
 
<br/>
 
## Built in Public
 
This app is being built from scratch — zero prior iOS experience — following Paul Hudson's 100 Days of SwiftUI. I define the architecture, make every product decision, and use Claude as the tool that makes it possible to ship at this pace. Claude wasn't just the fastest option — it was the only tool that could explain its own output well enough for me to actually learn from it. Every session, every commit, every mistake is documented in real time.
 
**Follow the build:**
 
- 📺 [YouTube](https://www.youtube.com/@cmdLife_app) — build log vlogs
- 🎵 [TikTok](https://www.tiktok.com/@cmdlife.app) — short-form build clips
- 📸 [Instagram](https://www.instagram.com/cmdlife.app/) — behind the scenes
- 🐦 [X / Twitter](https://x.com/cmdlife_app) — thoughts and updates
 
The full build guide (architecture decisions, StoreKit setup, CryptoKit integration, App Store submission checklist) is documented in [`BUILDGUIDE.md`](BUILDGUIDE.md).
 
<br/>
 
## Build Roadmap
 
100 days of SwiftUI. One app. Here's where things stand.
 
Each Swift concept maps directly to a product decision — learning the language through the app, not alongside it. This is a session-based build: progress moves when sessions happen, not on a fixed calendar.
 
**Phase 1 — Swift + Terminal UI Shell** *(Days 1–15)*
- [x] Day 1–2 — Variables, booleans, string interpolation
- [x] Day 3–4 — Arrays, enums → `Priority.swift`
- [x] Day 5–6 — Conditionals and loops
- [ ] Day 7–8 — Functions + error handling → `TerminalUtils.swift` ← **currently here**
- [ ] Day 9 — Closures
- [ ] Day 10–11 — Structs → data models (`Task`, `Habit`, `JournalEntry`)
- [ ] Day 12–15 — Protocols, optionals → `TerminalView` + `CommandParser` on iPhone
- [ ] 🏁 **Milestone: Terminal UI shell running on iPhone**
 
**Phase 2 — Tasks, Habits + SwiftData Persistence** *(Days 16–30)*
- [ ] SwiftUI basics, `@State`, `@StateObject`
- [ ] `TaskManager` + `HabitManager` with SwiftData
- [ ] Streak tracking, date formatting
- [ ] `CommandRouter` wiring all commands end to end
- [ ] 🏁 **Milestone: Tasks and habits save to disk — works in Airplane Mode**
 
**Phase 3 — Focus Timer, Dashboard, Journal + Encryption** *(Days 31–50)*
- [ ] `FocusTimer` with animated ASCII progress bar
- [ ] `DashboardCommand` (neofetch-style)
- [ ] `JournalManager` with CryptoKit AES-GCM encryption
- [ ] `StatsCommand` with weekly metrics
- [ ] 🏁 **Milestone: Journal entries encrypted at rest on device**
 
**Phase 4 — Freemium + Biometric Lock** *(Days 51–65)*
- [ ] `PremiumManager` with StoreKit 2 subscriptions ($1.99/mo · $14.99/yr)
- [ ] `PaywallView` + `PremiumGate` modifier
- [ ] Feature limits enforced (5 tasks, 3 habits, 7-day journal on free)
- [ ] FaceID / TouchID journal lock
- [ ] `cmdLifeWidget` home screen widget
- [ ] 🏁 **Milestone: Purchase + FaceID both work on TestFlight**
 
**Phase 5 — Polish + App Store Submission** *(Days 66–80)*
- [ ] `OnboardingView` (first launch)
- [ ] Command autocomplete bar
- [ ] Full security audit
- [ ] Accessibility labels + privacy policy
- [ ] App Store screenshots + metadata
- [ ] 🏁 **Milestone: Submitted to App Store**
 
**Phase 6 — Review Buffer + Launch** *(Days 81–100)*
- [ ] Apple review buffer
- [ ] Fix any rejections
- [ ] 🏁 **Milestone: cmdLife live on the App Store**
 
<br/>
 
You can also:
 
- ⭐ **Star this repo** — it genuinely helps with discoverability while the app is being built
- 📣 **Share it** — recommend it to someone who'd love a terminal productivity app
- 💬 **Open an issue** — ideas, suggestions, and feedback welcome at any stage of the build
- 📺 **Follow the build** — watch it happen in real time on YouTube and TikTok
 
**Find cmdLife online:**
 
<p>
  <a href="https://www.youtube.com/@cmdLife_app"><img src="https://img.shields.io/badge/YouTube-@cmdLife__app-f0c040?style=flat-square&logo=youtube&logoColor=white"/></a>
  <a href="https://www.tiktok.com/@cmdlife.app"><img src="https://img.shields.io/badge/TikTok-@cmdlife.app-f0c040?style=flat-square&logo=tiktok&logoColor=white"/></a>
  <a href="https://www.instagram.com/cmdlife.app/"><img src="https://img.shields.io/badge/Instagram-@cmdlife.app-f0c040?style=flat-square&logo=instagram&logoColor=white"/></a>
  <a href="https://x.com/cmdlife_app"><img src="https://img.shields.io/badge/X-@cmdlife__app-f0c040?style=flat-square&logo=x&logoColor=white"/></a>
</p>
 
<br/>
 
## Getting Started (Development)
 
```bash
git clone https://github.com/yourusername/cmdlife.git
cd cmdlife
open cmdLife.xcodeproj
```
 
> Requires Xcode 16+, iOS 17+ device or simulator. A physical iPhone is recommended for testing biometric and StoreKit sandbox flows.
 
No external dependencies. No package manager. Pure Swift.
 
<br/>
 
## Contributing
 
Issues and PRs are welcome. Please read [`CONTRIBUTING.md`](CONTRIBUTING.md) before opening a pull request.
 
For bug reports, include: iOS version, device model, steps to reproduce, and the exact terminal output you saw.
 
<br/>
 
## License
 
MIT License — see [`LICENSE`](LICENSE) for details.
 
Journal encryption and biometric logic may not be repurposed in apps that weaken or bypass security guarantees described in this README.
 
<br/>
 
---
 
<p align="center">
  <code>user@life %</code> &nbsp;·&nbsp; built by Ilayda &nbsp;·&nbsp; terminal-inspired productivity
</p>
 
<p align="center">
  <a href="https://www.youtube.com/@cmdLife_app">YouTube</a> &nbsp;·&nbsp;
  <a href="https://www.tiktok.com/@cmdlife.app">TikTok</a> &nbsp;·&nbsp;
  <a href="https://www.instagram.com/cmdlife.app/">Instagram</a> &nbsp;·&nbsp;
  <a href="https://x.com/cmdlife_app">X</a> &nbsp;·&nbsp;
</p>
