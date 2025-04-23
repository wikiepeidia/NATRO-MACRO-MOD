import configparser
import os
import sys
import argparse
from collections import defaultdict

try:
    from colorama import init, Fore, Style
    COLORS_AVAILABLE = True
    init()  # Initialize colorama
except ImportError:
    COLORS_AVAILABLE = False

def compare_ini_files(file1, file2, case_sensitive=True):
    """
    Compare two INI files and return their differences.
    
    Args:
        file1 (str): Path to the first INI file
        file2 (str): Path to the second INI file
        case_sensitive (bool): Whether to treat keys as case sensitive
    
    Returns:
        dict: Dictionary of differences organized by section
    """
    config1 = configparser.ConfigParser()
    config2 = configparser.ConfigParser()
    
    try:
        config1.read(file1)
        config2.read(file2)
        
        if not config1.sections() and os.path.exists(file1):
            print(f"Warning: {file1} exists but couldn't be parsed as an INI file")
        if not config2.sections() and os.path.exists(file2):
            print(f"Warning: {file2} exists but couldn't be parsed as an INI file")
            
    except configparser.Error as e:
        print(f"Error parsing INI files: {e}")
        return {}
    
    all_sections = set(config1.sections()).union(set(config2.sections()))
    differences = defaultdict(list)
    
    for section in all_sections:
        if section not in config1:
            differences[section].append({
                "type": "section_added",
                "message": f"Section exists only in {os.path.basename(file2)}"
            })
        elif section not in config2:
            differences[section].append({
                "type": "section_removed",
                "message": f"Section exists only in {os.path.basename(file1)}"
            })
        else:
            keys1 = set(config1[section].keys())
            keys2 = set(config2[section].keys())
            
            if not case_sensitive:
                # Create case-insensitive mappings
                keys1_lower = {k.lower(): k for k in keys1}
                keys2_lower = {k.lower(): k for k in keys2}
                all_keys_lower = set(keys1_lower.keys()).union(set(keys2_lower.keys()))
                
                for key_lower in all_keys_lower:
                    original_key1 = keys1_lower.get(key_lower)
                    original_key2 = keys2_lower.get(key_lower)
                    
                    if not original_key1:
                        differences[section].append({
                            "type": "key_added",
                            "key": original_key2,
                            "message": f"Key exists only in {os.path.basename(file2)}"
                        })
                    elif not original_key2:
                        differences[section].append({
                            "type": "key_removed",
                            "key": original_key1,
                            "message": f"Key exists only in {os.path.basename(file1)}"
                        })
                    else:
                        value1 = config1[section][original_key1]
                        value2 = config2[section][original_key2]
                        if value1 != value2:
                            differences[section].append({
                                "type": "value_changed",
                                "key": original_key1,
                                "value1": value1,
                                "value2": value2,
                                "message": f"Key '{original_key1}' has different values: '{value1}' vs '{value2}'"
                            })
            else:
                # Case sensitive comparison
                all_keys = keys1.union(keys2)
                
                for key in all_keys:
                    if key not in keys1:
                        differences[section].append({
                            "type": "key_added",
                            "key": key,
                            "message": f"Key exists only in {os.path.basename(file2)}"
                        })
                    elif key not in keys2:
                        differences[section].append({
                            "type": "key_removed",
                            "key": key,
                            "message": f"Key exists only in {os.path.basename(file1)}"
                        })
                    else:
                        value1 = config1[section][key]
                        value2 = config2[section][key]
                        if value1 != value2:
                            differences[section].append({
                                "type": "value_changed",
                                "key": key,
                                "value1": value1,
                                "value2": value2,
                                "message": f"Key '{key}' has different values: '{value1}' vs '{value2}'"
                            })
    
    return differences

def print_differences(differences, file1, file2):
    """Print differences with colors if available"""
    if not differences:
        print("The INI files are identical.")
        return
    
    sections_with_diffs = 0
    total_diffs = 0
    
    for section, diffs in differences.items():
        if diffs:
            sections_with_diffs += 1
            total_diffs += len(diffs)
            
            # Print section header
            if COLORS_AVAILABLE:
                print(f"\n{Fore.CYAN}{Style.BRIGHT}[{section}]{Style.RESET_ALL}")
            else:
                print(f"\n[{section}]")
                
            # Print differences in this section
            for diff in diffs:
                diff_type = diff["type"]
                
                if COLORS_AVAILABLE:
                    if diff_type == "section_added":
                        print(f"{Fore.GREEN}[+] {diff['message']}{Style.RESET_ALL}")
                    elif diff_type == "section_removed":
                        print(f"{Fore.RED}[-] {diff['message']}{Style.RESET_ALL}")
                    elif diff_type == "key_added":
                        print(f"{Fore.GREEN}[+] {diff['key']}: {diff['message']}{Style.RESET_ALL}")
                    elif diff_type == "key_removed":
                        print(f"{Fore.RED}[-] {diff['key']}: {diff['message']}{Style.RESET_ALL}")
                    elif diff_type == "value_changed":
                        print(f"{Fore.YELLOW}[*] {diff['key']}: {diff['message']}")
                        print(f"    {Fore.RED}- {os.path.basename(file1)}: {diff['value1']}")
                        print(f"    {Fore.GREEN}+ {os.path.basename(file2)}: {diff['value2']}{Style.RESET_ALL}")
                else:
                    if diff_type == "section_added":
                        print(f"[+] {diff['message']}")
                    elif diff_type == "section_removed":
                        print(f"[-] {diff['message']}")
                    elif diff_type == "key_added":
                        print(f"[+] {diff['key']}: {diff['message']}")
                    elif diff_type == "key_removed":
                        print(f"[-] {diff['key']}: {diff['message']}")
                    elif diff_type == "value_changed":
                        print(f"[*] {diff['key']}: {diff['message']}")
                        print(f"    - {os.path.basename(file1)}: {diff['value1']}")
                        print(f"    + {os.path.basename(file2)}: {diff['value2']}")
    
    # Print summary
    print("\nSummary:")
    print(f"- Sections with differences: {sections_with_diffs}")
    print(f"- Total differences found: {total_diffs}")

def main():
    parser = argparse.ArgumentParser(description='Compare two INI files and show their differences')
    parser.add_argument('file1', nargs='?', default="nm_config.ini", help='First INI file')
    parser.add_argument('file2', nargs='?', default="nm_configOLD.ini", help='Second INI file')
    parser.add_argument('-i', '--ignore-case', action='store_true', help='Ignore case when comparing keys')
    args = parser.parse_args()
    
    file1 = args.file1
    file2 = args.file2
    
    # Check if files exist
    if not os.path.exists(file1):
        print(f"Error: File not found: {file1}. plese check your file name/make sure it is in the same LOC as this script")
        return 1
    if not os.path.exists(file2):
        print(f"Error: File not found: {file2}. plese check your file name/make sure it is in the same LOC as this script")
        return 1
    
    print(f"Comparing '{os.path.basename(file1)}' with '{os.path.basename(file2)}'...")
    if args.ignore_case:
        print("Case-insensitive comparison enabled")
        
    differences = compare_ini_files(file1, file2, not args.ignore_case)
    print_differences(differences, file1, file2)
    
    return 0

if __name__ == "__main__":
    sys.exit(main())