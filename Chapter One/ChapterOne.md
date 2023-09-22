### Chapter One Commands

----

- *Always run powershell as adminstrator to access the full properities of the program you want to work with on powershell* 

--- 

### Exercises

1. How would you get a listing of files and folders from a current folder? 
    
    - **Dir**

<br>

---
2. Fille out the following table of commands. 

<br>

| Task      | Cmd.exe Command |
| ----------- | ----------- |
| Copy a file to a different location      | Copy     |
| Change Directories   | Cd        |
| Moving a file to a new location    | Move     |
| Rename an existing file   | Ren        |
| Create a new directory    | MkDir     |
| Remove an empty directory   | RmDir        |
| Create a new directory    | MkDir     |
| Delete a file   | Del        |
| Delete the contents of a txt file    | Type     |

---
<br>

3. How can you pipe into a long directory? 

    - **Dir | More**


<br>

- **Pipeline:** Is a series of commands connected by pipeline operators (|) (ASCII 124). It essentially sends results of the preceding command to next command. 

<br>

4. How would you stop a long task

    - **CTRL C**

<br>

5. How would you move back a directory? 

    - **cd ..**

<br>

### End of Exercises

--- 

### Defintions & Notes

1. **The File System**: is a hierarchical database.

<br>

- **Note:** Windows contains lots of other hierarchical databases-the registry comes to mind, as does Active Directory. Can we use the following commands to manage said databases?

<br>

1. Run cd hkcu : to change the **HKEY_CURRENT_USER** registry hive.
2. Run dir to get a list of keys in that hive 
3. Run cd software to change to the Software Key. 
4. Run dir to get a list of subkeys


<br>

<img src="https://media.discordapp.net/attachments/948733123804418088/1152039231829585931/Screen_Shot_2023-09-14_at_5.28.02_PM.png?width=1440&height=598">

<br>

2. **PSDrives**: Is a mapping between the shell and some kind of data store-the filesystem, the registry, or even Active Directory. 


- **Note**: The shell always starts with PSDrives mapped. You can run the command Get-PSDrive to see them. There should be HKEY_CURRENT_USER (HKCU) and HKEY_LOCAL_MAHCINE (HKLM) registry hives, one for each local disk, while the other one is for global/environmental variables, and the final one would be for PowerShell's function, variable, and alias storage.

- **Note**: You can map new drives by using the New-PSDrive command. 


- **Note**: Unlike old MS-DOS-style drive names that were limited to a single letter, PSDrives can have longer names, such as **HKCU:** and **HKLM:**, therefore when you map drives, the progarmmer shuold take the opportunity to make their names more meaningful, like **DEMO:** or **USER:** or **FILES:** rather than just **X:**, **Y:**, and **Z:**

<br>

### Mapping a New-PSDrive Example

---

- New-PSDrive -name DEMO -psprovider FileSystem -root "\\\Server\share\Folder"

---

### Industry Terminology 
---

*Verb-Nouns*

- Get = view file 
- install = put a new feature onto a machine
- Add = install a new feature onto an application/package add -windows feature essentaily same command as install (it must already exist)
- set = manipulate settings 
