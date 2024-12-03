# 🌟 Webhook Server in Ruby 🌟

Welcome to the **Webhook Server** app built with Ruby and Sinatra! This project demonstrates how to implement a simple webhook that responds to POST requests with a personalized message, including a name and phone number. 🚀✨

---

## 🛠️ Features

- 🌍 Responds to POST requests at the `/webhook` endpoint.
- 📥 Reads JSON payload from the request body.
- 📝 Dynamically responds with:
  - A friendly greeting.
  - Name and phone number, if provided.
  - A prompt for the phone number, if missing.

---

## 🚀 Quick Start

### Requirements

- Install Ruby on your system.
- Install the required dependencies using Bundler.

### Required Dependencies

To ensure the app runs correctly, you need to install the following gems:

1. Sinatra:
   ```bash
   gem install sinatra 
   ```