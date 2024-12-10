# Recipe App

A sleek and user-friendly recipe app built using Flutter, designed to provide an intuitive interface for exploring recipes, managing favorites, planning meals, and customizing settings. This README outlines the progress made so far in the development of the app.

## Table of Contents
- [Project Overview](#project-overview)
- [Features Implemented](#features-implemented)
- [Development Details](#development-details)
- [Future Enhancements](#future-enhancements)
- [Getting Started](#getting-started)

## Project Overview

This app is a recipe management tool that allows users to:
- Browse a wide range of recipes.
- Save their favorite recipes for quick access.
- Plan meals efficiently.
- Customize app settings according to their preferences.

Currently, the app's foundational structure is in place, including navigation and design.

---

## Features Implemented

### 1. **App Main Screen**
- **BottomNavigationBar**:
    - Includes tabs for `Home`, `Favorites`, `Meal Plan`, and `Settings`.
    - Dynamically switches between active and inactive states for icons and labels.
- **Dynamic State Management**:
    - Utilizes the `StatefulWidget` to track and update the selected tab.

### 2. **Styling and Design**
- Colors are centralized in a `constraints.dart` file for consistency:
    - `kbackgroundColor`: Background color for the app.
    - `kprimaryColor`: Primary color used for highlighting active elements.
    - `kBannerColor`: Reserved for banners or promotional highlights.

---

## Development Details

### 1. **BottomNavigationBar**
The `BottomNavigationBar` is implemented within the `AppMainScreen` widget to provide seamless navigation across the app. Each tab dynamically updates the state to show the selected icon and label.

**Code Snippet:**
```dart
BottomNavigationBar(
  currentIndex: selectedIndex,
  onTap: (value) {
    setState(() {
      selectedIndex = value;
    });
  },
  items: [
    BottomNavigationBarItem(
      icon: Icon(selectedIndex == 0 ? Iconsax.home5 : Iconsax.home_1),
      label: "Home",
    ),
    // Additional tabs...
  ],
);
```

### 2. Color Constants
All reusable color codes are stored in constraints.dart for better maintainability and consistency.

Code Snippet:
```
const kbackgroundColor = Color(0xffeff1f7);
const kprimaryColor = Color(0xff568A9f);
const kBannerColor = Color(0xff579f8c);
```

## Future Enhancements
### Short-Term Goals
Page Integration:

- Add corresponding screens (HomePage, FavoritePage, etc.) and link them to BottomNavigationBar. 
- Improved Navigation
  - Implement PageView for smooth transitions between tabs.

### Long-Term Goals
Recipe Database:

- Integrate a database (e.g., Firebase) to store and retrieve recipes.
- Search Functionality:
  - Add a search bar for easy recipe discovery.
  
- User Accounts:
  - Enable user login to save preferences and sync data across devices.

## Getting Started
### Prerequisites
1. Install Flutter
2. Set up a code editor (e.g., VS Code, Android Studio).
3. Run the App
4. Clone the repository:
```git clone <git@github.com:karanm645/Recipe-Vault.git>```
5. Navigate to the project directory:
```cd recipe_app```
6. Install dependencies:
```flutter pub get```
7. Run the app:
```flutter run```
