# Flutter Blog App

A Flutter application for displaying a list of blogs from an external API and allowing users to view individual blog details. Users can also download blog content to their device.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [State Management](#state-management)
- [API Integration](#api-integration)
- [Screenshots](#screenshots)


## Introduction

This Flutter application provides a simple way to view and download blogs. It includes a list of blogs on the main screen, and users can tap on a blog to view its details. The blog details screen allows users to download the blog content. The app retrieves blog data from an external API and uses Riverpod for state management.

## Features

- Display a list of blogs with titles and images.
- View detailed information about a blog.
- Utilizes Riverpod for efficient state management.
- Integrates with an external API to fetch blog data.

## Getting Started

### Prerequisites

- [Flutter](https://flutter.dev/) installed on your machine.

### Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/yourusername/flutter-blog-app.git
2.Navigate to the project directory:

  ```shell
  cd flutter-blog-app
```
3.Install dependencies:
```shell
flutter pub get
```
4.Install Dependencies:
```shell
flutter pub get
```

## State Management
This app uses Riverpod for state management. State providers and notifiers are used to manage and update the app's state efficiently.

## API Integration
The app integrates with an external API to fetch blog data. API calls are made using the http package or any other preferred package for making HTTP requests. Be sure to provide the API endpoint in your code.

## Screenshots
![Simulator Screenshot - iPhone 14 Pro Max - 2023-10-04 at 05 05 37](https://github.com/WrathOP/blog_app/assets/72385500/8a44a9db-f6cc-4b3e-ba46-1de625725202)

![Simulator Screenshot - iPhone 14 Pro Max - 2023-10-04 at 05 05 44](https://github.com/WrathOP/blog_app/assets/72385500/ec8b0ba4-0dd7-4df4-a108-25a8c2d666dd)



