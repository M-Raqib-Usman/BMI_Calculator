# BMI Calculator

A Flutter project which calculates body mass index

## Getting Started

The BMI Calculator App is a cross-platform mobile application built with Flutter that calculates Body Mass Index (BMI) based on user-provided weight and height inputs. It offers a user-friendly interface to compute BMI and display the corresponding health category (Underweight, Normal, Overweight, or Obese).
Features

Input fields for weight (in kilograms) and height (in meters or centimeters).
Real-time BMI calculation with instant results.
Displays BMI value and health category (Underweight, Normal, Overweight, Obese).
Cross-platform support for Android and iOS.
Clean, responsive UI with Flutter's Material Design.
Lightweight and efficient performance.

Usage

Launch the app on your Android or iOS device/emulator.
Enter your weight in kilograms (e.g., 70).
Enter your height in meters (e.g., 1.75) or centimeters (e.g., 175).
Tap the "Calculate BMI" button.
View your BMI result and health category displayed on the screen.

BMI Calculation
The app calculates BMI using the formula:
BMI = weight (kg) / (height (m) * height (m))

The result is categorized as follows:

Underweight: BMI < 18.5
Normal: 18.5 ≤ BMI < 25
Overweight: 25 ≤ BMI < 30

Project Structure
bmi-calculator-flutter/
├── android/                # Android-specific files
├── ios/                    # iOS-specific files
├── lib/                    # Main Flutter source code
│   ├── main.dart           # App entry point
│   ├── splash_screens            # UI screen (e.g.,Splash Screen)
├── pubspec.yaml            # Dependencies and project configuration
└── README.md               # This file


