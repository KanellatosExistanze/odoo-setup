# 🚀 Odoo Setup Script

This script automates the process of setting up Odoo repositories for multiple versions.

---

## ✅ Requirements

- 🖥️ **macOS** with Git installed
- 🔑 [**SSH keys configured**](https://existanze.atlassian.net/wiki/spaces/DEVELOPERS/pages/55641038/Public+Keys) (for private repositories like `odoo-enterprise` on Bitbucket)

---

## 📌 Usage

To run the script straight from GitHub, just type this command in your terminal while you're in your home directory:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KanellatosExistanze/odoo-setup/main/odoo_setup.sh)"
```

This command will:
✅ Create a directory structure for Odoo repositories.
✅ Clone or update `core`, `enterprise`, and `themes` repositories for Odoo versions **13.0 to 18.0**.

---

## 📅 Scheduling the Script to Run Every Day

1️⃣ Launch the terminal and enter this command to modify the cron jobs:

```sh
crontab -e
```

2️⃣ Insert this line to schedule the script to execute at 10:00 AM daily:

```sh
0 10 * * * /bin/bash /usr/local/bin/odoo_setup
```

3️⃣ To save and exit, hit CTRL + X, then Y to confirm, and press Enter to complete the process.

---

## 🔗 Adding to System Path

To make the script globally accessible, follow these steps:

1️⃣ **Download and save the script to `/usr/local/bin/`**:
   ```sh
   curl -fsSL https://raw.githubusercontent.com/KanellatosExistanze/odoo-setup/main/odoo_setup.sh -o /usr/local/bin/odoo_setup
   ```
2️⃣ **Make it executable**:
   ```sh
   chmod +x /usr/local/bin/odoo_setup
   ```
3️⃣ **Ensure `/usr/local/bin/` is in your `$PATH`**:
   ```sh
   echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc && source ~/.zshrc
   ```
   *(For Bash users, replace `~/.zshrc` with `~/.bash_profile`.)*

## 🚀 Running the Script After Installation

Once added to the path, you can run the script from anywhere using:

```sh
odoo_setup
```

---

