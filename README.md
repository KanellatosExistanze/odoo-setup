# 🚀 Odoo Setup Script

This script automates the process of setting up Odoo repositories for multiple versions.

---

## 📌 Usage

To run the script directly from GitHub, execute the following command in your terminal:

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/KanellatosExistanze/odoo-setup/main/odoo_setup.sh)"
```

This command will:
✅ Create a directory structure for Odoo repositories.
✅ Clone or update `core`, `enterprise`, and `themes` repositories for Odoo versions **13.0 to 18.0**.

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

---

## 🚀 Running the Script After Installation

Once added to the path, you can run the script from anywhere using:

```sh
odoo_setup
```

---

## ✅ Requirements

- 🖥️ **macOS** with Git installed
- 🔑 **SSH keys configured** (for private repositories like `odoo-enterprise` on Bitbucket)

---

