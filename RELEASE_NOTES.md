# TCL Unbranded Boot Animation v1.0.0

Replaces the US Cellular Android startup animation on a rooted TCL 4058L / TCL Flip 2 with the stock unbranded TCL 4058G animation through a reversible Magisk overlay.

## Compatibility

- Target: TCL 4058L (`Gflip6_USCC`), build `PJ3R`, Android 11
- Source: TCL 4058G (`Gflip6_NA_OM`), build `UPEJ`, Android 11
- Requires Magisk 30.7 or compatible

## Verified Digests

- Release ZIP: `7dcbd73ff2e1739c9f35bd37084a4f9db754a50214a785fbdaaa1f88292cb73a`
- Embedded animation: `dc95c9372c15785ea7bf4884a638de21b4eb62bc22457f5c7d50a5209767c025`

## Rollback

Disable or remove the module in Magisk and reboot. The original firmware animation was not overwritten.

## Verification Caveat

The module installed successfully and staged the expected payload on the target. Post-reboot command-line verification remained pending because the phone requested USB-debugging authorization again. Confirm the visible animation and authorize ADB before completing health checks.
