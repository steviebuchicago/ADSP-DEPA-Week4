<!--
README.md for MS Applied Data Science Data Engineering Class 31012, Module 4
Focus: Vibe Coding with Sakila Dataset on Google Cloud
-->

# Data Engineering Practice with Sakila & Gemini Code Assist

## Course: MS Applied Data Science - Data Engineering (Class 31012)

In the modern data landscape, the ability to bridge the gap between theoretical database management and scalable cloud infrastructure is a foundational pillar of Data Science. This repository serves as a rigorous academic laboratory for the MS Applied Data Science program, focusing on the orchestration of managed relational databases within the Google Cloud ecosystem.

By utilizing the industry-standard **Sakila dataset** on **Google Cloud SQL**, students will master the complexities of database provisioning, automated schema deployment, and cloud-native security. This module emphasizes the transition from local development to professional cloud environments, ensuring students develop the technical fluency required for high-stakes data engineering roles.

## 🌟 The Pedagogy of "Vibe Coding"

"Vibe Coding" in this context refers to an interactive, exploratory, and assisted approach to learning and practicing data engineering concepts. Instead of rigid, pre-defined solutions, we encourage a more fluid and iterative process, leveraging AI assistance to:
*   **Explore:** Quickly understand new datasets, SQL schemas, and shell scripts.
*   **Experiment:** Rapidly prototype queries, test commands, and iterate on solutions.
*   **Learn:** Gain deeper insights into errors, optimize code, and discover best practices with real-time guidance.
*   **Boost Productivity:** Spend less time on syntax and more time on data engineering logic and problem-solving.

Gemini Code Assist acts as your intelligent co-pilot, helping
you with everything from explaining shell commands and SQL queries to generating code snippets and debugging issues in real-time. It's about empowering you to learn by doing, with smart assistance every step of the way.

## 🚀 Project Overview

This repository provides a hands-on environment to practice core data engineering tasks:
1.  **Environment Setup:** Configuring Google Cloud APIs and services.
2.  **Database Provisioning:** Deploying a managed MySQL database (Google Cloud SQL).
3.  **Data Loading:** Populating a database with the classic Sakila sample dataset.
4.  **Data Exploration & Analysis:** Running sample SQL analytics queries against the loaded data.
5.  **AI-Assisted Learning:** Leveraging Gemini Code Assist for guidance and efficiency throughout the process.

## 📋 Prerequisites

Before you begin, ensure you have the following:
*   **Google Cloud Project:** An active Google Cloud Project where you have Owner or Editor permissions. The scripts are configured to use `adsp-capstone-robotics` by default, but you can change this in the scripts.
*   **`gcloud` CLI:** The Google Cloud SDK and `gcloud` command-line tool installed and authenticated on your local machine, or preferably, use **Google Cloud Shell**, which comes with `gcloud` pre-installed and authenticated.
*   **Cloud Shell Editor:** For the best experience with Gemini Code Assist, we recommend using the Cloud Shell Editor.

## 📂 File Structure & Setup Flow

This diagram illustrates the core components and how they interact within your Google Cloud environment:

```
.
├── README.md
├── DEPA-Gemini-Setup.sh
└── sakila-setup.sh

+---------------------------------------------------------------------------------------------------+
|                                      Google Cloud Platform                                        |
|                                                                                                   |
|  +---------------------------------------------------------+    +-------------------------------+ |
|  |             Cloud Shell Editor (Your Workspace)         |    |   Google Cloud SQL (MySQL 5.7)| |
|  |                                                         |    |   Instance: 'treasure-hunt2'  | |
|  |   .                                                     |    |                               | |
|  |   ├── README.md                                         |    |   +-------------------------+ | |
|  |   ├── DEPA-Gemini-Setup.sh (Enables Gemini APIs)        |    |   |     Sakila Database     | | |
|  |   └── sakila-setup.sh (Deploys Cloud SQL & Sakila)      |----->  | (schema, tables, data)  | | |
|  |       (These scripts are executed from Cloud Shell)     |    |   +-------------------------+ | |
|  |                                                         |    |                               | |
|  |   (MySQL Client commands connect from Cloud Shell)      |<-----> (Accessible via IP Address)  | |
|  |                                                         |    |                               | |
|  +---------------------------------------------------------+    +-------------------------------+ |
|                                                                                                   |
|   Interaction:                                                                                    |
|   - You run shell scripts in Cloud Shell.                                                         |
|   - `DEPA-Gemini-Setup.sh` configures Gemini Code Assist for your project.                        |
|   - `sakila-setup.sh` provisions Cloud SQL, downloads Sakila files, and loads them into the DB.   |
|   - You use the `mysql` client (within Cloud Shell) to interact with the Cloud SQL instance.      |
|                                                                                                   |
-----------------------------------------------------------------------------------------------------+
```

## 🚶‍♀️ Getting Started: Your Vibe Coding Journey

Follow these steps to set up your environment and database. We highly recommend performing these steps within **Google Cloud Shell** for a seamless experience.

### Step 1: Clone the Repository

If you haven't already, clone this repository to your Cloud Shell environment:

```bash
git clone <YOUR_REPO_URL>
cd <YOUR_REPO_DIRECTORY>
```
*(Replace `<YOUR_REPO_URL>` and `<YOUR_REPO_DIRECTORY>` with your actual repository information)*

### Step 2: Enable Gemini Code Assist APIs

This script will enable the necessary APIs for Gemini Code Assist within your Google Cloud project. This is crucial for experiencing "Vibe Coding".

```bash
chmod +x DEPA-Gemini-Setup.sh
./DEPA-Gemini-Setup.sh
```

**What this script does:**
*   Sets your current `gcloud` project.
*   Enables `cloudaicompanion.googleapis.com` and related service APIs.
*   Provides instructions on how to activate and use Gemini Code Assist in Cloud Shell and the Cloud Shell Editor.

After running this, look for the **Gemini icon (sparkle/diamond)** in your Cloud Shell or Cloud Shell Editor to start interacting with it!

### Step 3: Set up Sakila Database on Cloud SQL

This script automates the deployment of a Cloud SQL MySQL instance, downloads the Sakila dataset, and loads it into your new database.

```bash
chmod +x sakila-setup.sh
./sakila-setup.sh
```

**Important Considerations:**
*   **`PROJECT_ID`**: The script uses `adsp-capstone-robotics` by default. **Verify or change this** at the top of `sakila-setup.sh` to match your Google Cloud Project ID if different.
*   **`ROOT_PASSWORD`**: The script uses `RootRoot1!`. **For a real-world scenario, choose a strong, unique password.** For this class exercise, it's simplified.
*   **Costs**: Running a Cloud SQL instance incurs costs. The script includes options to `STOP` or `DELETE` the instance at the end. **It is highly recommended to stop or delete your instance after completing your work to avoid unexpected charges.**

**What this script does:**
1.  **API Enablement:** Ensures required APIs like `sqladmin.googleapis.com` are enabled.
2.  **Cloud SQL Instance Creation:** Provisions a `db-f1-micro` MySQL 5.7 instance named `treasure-hunt2` in `us-central1`.
3.  **Database Creation:** Creates the `sakila` database within the instance.
4.  **Sakila Download & Load:** Downloads the `sakila-db.zip`, unzips it, and loads `sakila-schema.sql` and `sakila-data.sql` into the database.
5.  **Analytics Queries:** Executes 10 predefined analytical SQL queries to demonstrate basic data interaction and verify the data load. The results will be printed to your terminal.
6.  **Cleanup Options:** Prompts you to stop or delete the Cloud SQL instance, which is crucial for cost management.

## 💡 What You'll Learn & Practice

*   **Google Cloud SQL:** Provisioning, managing, and connecting to a managed relational database service.
*   **Shell Scripting:** Automating infrastructure setup and data operations.
*   **SQL Fundamentals:** Working with the Sakila dataset, querying data, and performing basic analytics.
*   **Data Loading:** Understanding the process of importing data into a database.
*   **Gemini Code Assist:** Enhancing your development workflow with AI-powered assistance.

## 💰 Cost Management

Google Cloud SQL instances incur charges as long as they are running. The `sakila-setup.sh` script provides options to stop or delete the instance at the end.

**Always remember to:**
*   **Stop the instance:** `gcloud sql instances patch treasure-hunt2 --activation-policy=NEVER`
*   **Delete the instance:** `gcloud sql instances delete treasure-hunt2 --quiet`

This will help you manage your costs effectively during this class module.

## ➡️ Next Steps & Exploration Ideas

Once the Sakila database is set up and you're comfortable with Gemini Code Assist:
*   **Write Your Own Queries:** Use the `mysql` client from Cloud Shell (or another tool) to write and execute more complex queries against the Sakila database.
*   **Ask Gemini for Help:** If you get stuck on a SQL query, need to understand a shell command, or want to explore advanced `gcloud` options, just ask Gemini! For example:
    *   "Write a SQL query to find the top 5 customers who rented the most 'Comedy' films."
    *   "Explain what `gcloud sql instances create` command does."
    *   "How can I export data from a Cloud SQL table to a CSV file in Google Cloud Storage?"
*   **Explore Cloud Console:** Navigate to the Cloud SQL section in the Google Cloud Console to visually inspect your `treasure-hunt2` instance, its databases, and users.