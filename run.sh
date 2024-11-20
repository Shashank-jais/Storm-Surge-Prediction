#!/bin/bash


declare -A required_libraries=(
    ["numpy"]="1.24.3"
    ["pandas"]="2.0.3"
    ["matplotlib"]="3.7.2"
    ["scikit-learn"]="1.3.0"
    ["torch"]="2.4.1"
    ["torchaudio"]="2.4.1"
    ["torchvision"]="0.20.0"
)


check_conda() {
    if command -v conda &> /dev/null; then
        echo "conda"
    else
        echo "pip"
    fi
}


is_library_installed() {
    library=$1
    version=$2
    pip show "$library" &> /dev/null
    if [ $? -eq 0 ]; then
        installed_version=$(pip show "$library" | grep "Version:" | awk '{print $2}')
        if [ "$installed_version" == "$version" ]; then
            return 0
        fi
    fi
    return 1
}

install_library() {
    manager=$1
    library=$2
    version=$3
    if [ "$manager" == "conda" ]; then
        if [ -n "$version" ]; then
            conda install -y "${library}=${version}"
        else
            conda install -y "$library"
        fi
    else
        if [ -n "$version" ]; then
            pip install "${library}==${version}"
        else
            pip install "$library"
        fi
    fi
}

package_manager=$(check_conda)

echo "Using package manager: $package_manager"

for library in "${!required_libraries[@]}"; do
    version=${required_libraries[$library]}
    echo "Checking $library (version $version)..."
    if is_library_installed "$library" "$version"; then
        echo "$library (version $version) is already installed."
    else
        echo "$library (version $version) is not installed. Installing..."
        install_library "$package_manager" "$library" "$version"
    fi
done

echo "All required libraries are checked and installed."
