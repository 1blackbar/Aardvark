# OpenBOR WebAssembly (WASM) Port - Super Doginals

Welcome to the **OpenBOR-WASM** repository! This project provides an unofficial WebAssembly port of OpenBOR (Build 4.0, Revision 7533) to bring your OpenBOR games to the web. 
The repository includes the wasm build of the engine, the **Super Doginals** game as an example and guides you through the steps needed to launch your own OpenBOR game as a web app OR as a "Doginals inscription".

---

## Table of Contents
1. [Project Overview](#project-overview)
2. [Getting Started](#getting-started)
3. [Super Doginals Game](#super-doginals-game)
3. [Using OpenBOR-WASM](#using-openbor-wasm)
   - [Web Application Setup](#web-application-setup)
   - [Doginals Inscription Setup](#doginals-inscription-setup)
4. [Configuring your game](#configuring-your-game)
7. [OpenBOR License](#openbor-license)
8. [Super Doginals Asset License](#super-doginals-asset-license)
9. [Additional Resources](#additional-resources)
10. [Additional Notes](#additional-notes)

---

## Overview

This project is a full port and pre-compiled WASM of the OpenBOR 4.0 engine, allowing you to run OpenBOR games directly in a browser, making them compatible with pcs, macs, mobiles and tablets. While our port is **not an official OpenBOR release**, it serves as a convenient way to provide access to your OpenBOR game on the web. 

Changes list compared to OpenBOR 4.0 build 7533 is available [here](CHANGE.md).

OpenBOR WASM can be deployed on any web server and served as a standard HTML/JavaScript page. We have also inscribed it as a Doginal on Dogecoin. If you're unfamiliar with Doginals or are only interested in standard web usage, you can ignore any mentions of Doginals in this repository.

**Links to official OpenBOR resources**:
- [Official OpenBOR Repository](https://github.com/DCurrent/openbor)
- [OpenBOR Wiki](https://chronocrash.com/obor/wiki/)
- [OpenBOR Forum](https://www.chronocrash.com)

---

## Super Doginals Game

Super Doginals is our own OpenBOR game that runs very well with this WASM build of OpenBOR engine. You can play it directly as a doginal by looking for its inscription ID 9653cfcfe14a00a7203137513827a218e9a468214d2ec92205582aa8814d62d8i0 on any doginals explorer.

For convenience, here’s a direct link to our game as a Doginal on Doggy.market: https://cdn.doggy.market/content/9653cfcfe14a00a7203137513827a218e9a468214d2ec92205582aa8814d62d8i0

Just like Super Doginals, you can use our OpenBOR port for any of your OpenBOR games.

Feel free to use our game assets to create your own projects, please check [Super Doginals game License](#super-doginals-game-license). 

Contributions to improve our game and its assets are very welcome and we would gladly inscribe a new version in the near future! 

---

## Getting Started

### Requirements

- Knowledge of OpenBOR games development (refer to OpenBOR [resources](#additional-resources)).
- Your OpenBOR game assets, either as `.zip` (recommended) or `.pak` files.
- Optional: Know how to inscribe doginals if you want to deploy doginal games.

---

## Using OpenBOR-WASM

You can run your own game in one of two ways:
1. **As a normal web application** — Suitable if you want to deploy your game on any webserver.
2. **As a doginals inscription** — Specially prepared to make your game a doginal, leveraging on-chain digital assets.

### Web Application Setup

1. Clone or download this repository.
2. Configure game.html (instructions below).
3. Optional: Adapt mobile.js, game.css, buttons.zip if you want a different mobile overlay or need to configure more mobile buttons in your game.
4. Open `game.html` in a browser to run your game.

### Doginals Inscription Setup
We provide the inscriptions IDs of the files already written as doginals and our own game "Super doginals" as reference.
You should inscribe your own assets / modifications by yourself (how to inscribe doginals is out of the scope of this repo). 

1. Configure game.html (instructions below) with the inscriptions IDs of your game assets or modified files if any.
2. Inscribe game.html as a doginal inscription.
3. Play on any doginal explorer with your game.html inscription ID

> **Note**: Inscribing large content is costly and not recommended. Keep your Doginals games lightweight.

---

## Configuring your game

To adapt `game.html` for your game:

1. **Update Game Title**:
   - `<title>Your Game Name</title>`

2. **Set Asset Paths**:
   - Replace `assetsPaths: [contentPath + 'game.zip']` with your game’s assets files or doginals inscription Id. Multiple `.zip` files or inscriptions Ids can be listed for patching; content will be added / overwritten in the order listed.

3. **Set Asset Type**:
   - Set `assetType: 'zip'` for `.zip` assets (recommended for better compression and flexibility).
   - Set `assetType: 'pak'` if using a single `.pak` file. Note: You can only provide a single `.pak` file (.pak is the standard assets packaging in OpenBOR, but not a necessity). 

4. **Configure Canvas Resolution**:
   - Set `baseWidth` and `baseHeight` to match your game’s base resolution, e.g.:
     ```javascript
     baseWidth: 320,
     baseHeight: 240,
     ```

> **Note**: Essentially, the only mandatory changes you need to make are specifying your game title and the path to your game.zip. You can also build on top of our game by adding your modifications as additional .zip files or doginal IDs.


> **Tip**: Using `.zip` over `.pak` is encouraged as it allows asset patching for enhanced flexibility. This is especially useful for avoiding the need to reinscribe all your assets as Doginals, making them easily reusable and shareable.


For the asset pack, we recommend zipping both the `data` folder of your OpenBOR game but also the `Saves` folder which contains default configuration files for your game (e.g., pre-configured game controllers or video options). Your configuration .cfg file name should match the game name you set here: `<title>Your Game Name</title>`.


> **Note**: `main.js` automatically resizes the game canvas to fit your device's viewport, adjusting based on your game’s resolution with scaling factors that try to preserve pixel art quality.

---

## OpenBOR License

This project complies with the OpenBOR license, available [here](OPENBOR-LICENSE).

When distributing games created with this port, please mention something like "Powered by OpenBOR" in your game and include its license (included in `OpenBOR.zip`).

---

## Super Doginals game License

We encourage you to reuse our **Super Doginals** game assets, which are licensed under **CC BY 4.0**. Feel free to improve, add content or make your own games with it. Please credit us (@minidogeart) when reusing our work.

Important mention, if you intend to use Mini Doge-branded assets (such as mini doge characters), you must first seek our approval by sending a DM on X to @minidogeart, especially for commercial games. Using our assets for financial scams or harmful content is strictly forbidden.

You can find more license info [here](SUPERDOGINALS-LICENSE).


---

## Additional Resources

For more guidance on creating and customizing your OpenBOR games, refer to:
- [OpenBOR Wiki](https://chronocrash.com/obor/wiki/)
- [OpenBOR Forum](https://www.chronocrash.com)

---

## Additional Notes

- Common sense tip: Make sure you do not publish copyrighted content without consent, especially if your inscribe it as doginals.


- The code for our OpenBOR WASM port is not included in this repository, as it is intended solely to demonstrate how to use the wasm build. We may provide the source code in the future, but we would prefer to see instead an official port supported in OpenBOR repository to keep the engine code centralized, and will first try to request official WASM support there.


- When making your own game, it would be more efficient to test it first with official OpenBOR 4.0 to avoid zipping your assets everytime. Just keep in mind our few fixes and additions mentioned [here](CHANGE.md) and test with this port only major modifications to your game.   


- Please report here only bugs that would be specific to our build. Bugs that also exists in official OpenBOR 4.0 should be reported in official the OpenBOR repo.


- As of today, iPhones do not support programmable fullscreen resolution buttons. The fullscreen button on mobile will only work on other devices. However, users can work around this by manually setting the game to fullscreen.


- The game should perform well on most modern devices.


- Just like the original OpenBOR license, we do not provide any warranty of any kind for using this software.

**Enjoy building your own game!**
