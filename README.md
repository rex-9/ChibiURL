<a name="readme-top"></a>

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 \[React on Rails\] ](#-react-on-rails-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
    - [Video Presentation ](#video-presentation-)
    - [Screenshots ](#screenshots-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
      - [1. Navigate to the location of the folder in your machine:](#1-navigate-to-the-location-of-the-folder-in-your-machine)
      - [2. Install the gems:](#2-install-the-gems)
      - [3. Set up the database with your credentials:](#3-set-up-the-database-with-your-credentials)
      - [4. Create the databases:](#4-create-the-databases)
      - [5. Migrate the databases:](#5-migrate-the-databases)
      - [6. Seed the dummy data: (Optional)](#6-seed-the-dummy-data-optional)
      - [6. Install NPM packages:](#6-install-npm-packages)
      - [7. Build and Watch Tailwindcss:](#7-build-and-watch-tailwindcss)
    - [Usage](#usage)
      - [7. Run the server:](#7-run-the-server)
    - [Run tests](#run-tests)
  - [👥 Authors ](#-authors-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [❓ FAQ ](#-faq-)
  - [📝 License ](#-license-)

# 📖 Chibi URL <a name="about-project"></a>

**Chibi Url** - the Url shortening service.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **Display URLs (including how many times the link is clicked)**
    - **My URLs**
    - **Public URLs**
- **Copy URLs**
- **Create URLs (with Error Handling)**
- **Delete Owned URLs**
- **Sign In**
- **Sign Up**
- **Sign Out**

### Video Presentation <a name="video-presentation"></a>

- [Video Demo](https://www.loom.com/share/13be355568724ca6b5d8948f1ad2b7e9)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Screenshots <a name="screenshots"></a>

- **Public URLs Page**
- [Public URLs Page](./app/assets/images/public.png)

- **Sign In Page**
- [Sign In Page](./app/assets/images/sign-in.png)

- **Sign Up Page**
- [Public URL](./app/assets/images/sign-up.png)

- **Create Chibi URL Page**
- [Public URL](./app/assets/images/create.png)

- **My URLs Page**
- [Public URL](./app/assets/images/my.png)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```sh
 gem install rails
```

### Setup

Clone this repository to your desired folder:

```sh
  cd my-folder
  git clone https://github.com/rex-9/ChibiURL.git
```

### Install

#### 1. Navigate to the location of the folder in your machine:

```
you@your-Pc-name:~$ cd <ChibiURL>
```

#### 2. Install the gems:

```
bundle install
```

#### 3. Set up the database with your credentials:

- setup the database environment in
```
config/database.yml
```

#### 4. Create the databases:

```
rails db:create
```

#### 5. Migrate the databases:

```
rails db:migrate
```

#### 6. Seed the dummy data: (Optional)

```
rails db:seed
```

#### 6. Install NPM packages:

```
npm i
```

#### 7. Build and Watch Tailwindcss:

```
rails tailwindcss:watch
```

### Usage

To run the project, execute the following command:

#### 7. Run the server:

```
rails server
```
### Run tests

To run tests, run the following command:


Example command:

```sh
  bin/rails rspec spec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 👥 Authors <a name="authors"></a>

👤 **Rex**

- Github: [@rex-9](https://github.com/rex-9/)
- Medium: [@rex9](https://medium.com/rex9/)
- LinkedIn: [@rex9](https://www.linkedin.com/in/rex9/)
- Facebook: [@htetnaing0814](https://www.facebook.com/htetnaing0814)
- Angelist: [@rex9](https://angel.co/u/rex9)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project, please kindly offer me opportunities for further contributions.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank **Helpjuice** for giving the Inspiration and Opportunity to build this project.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ❓ FAQ <a name="faq"></a>

- **How did you create this Chibi URL step by step?**

  - You can check my commit history. I did as simple as I could. If it's hard to understand, you can easily reach out to me.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
