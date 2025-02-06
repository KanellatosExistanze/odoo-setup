mkdir -p Development/odoo/upstream/{core,enterprise,themes} && cd Development/odoo/upstream

for v in 13.0 14.0 15.0 16.0 17.0 18.0; do
    for repo in "core odoo https://github.com/odoo/odoo.git" \
                "enterprise odoo-enterprise git@bitbucket.org:existanze/odoo-enterprise.git" \
                "themes design-themes https://github.com/odoo/design-themes.git"; do
        read dir name url <<< "$repo"
        mkdir -p $dir/$v
        if [ -d $dir/$v/$name ]; then
            echo "Updating existing repository: $dir/$v/$name"
            git -C $dir/$v/$name pull
        else
            echo "Cloning new repository: $dir/$v/$name"
            git clone --branch $v --depth 1 $url $dir/$v/$name
        fi
    done
done
