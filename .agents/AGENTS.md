# Agent Rules & Guidelines

## UI & Layout
- **Responsive Design**: All screens must be responsive to fit any kind of device screen and pixel count. Never use hard-coded absolute widths/heights that might overflow on smaller screens. Use `LayoutBuilder`, `MediaQuery`, `FittedBox`, or GetX responsive utilities to ensure elements scale appropriately.

## Architecture
- **State Management**: Use `GetX`.
- **Structure**: Every screen folder must have `view` (short and clean), `controller` (logic), `widget` (UI components), and `bindings` (dependency injection).

## Code Cleanliness & Best Practices
- **No Raw Strings or Assets in Views**: Do not hardcode raw text strings, asset URLs, or other raw values directly in the `view` files. Maintain them separately in the `core/constants/` directory (e.g., `app_strings.dart`, `app_assets.dart`).
