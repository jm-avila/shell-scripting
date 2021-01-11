# File Permissions in Linux/Unix

Linux divides authorization into 2 levels.

1. Ownership
2. Permission

## Ownership

- User
	- A user is the owner of the file.
	- By default, the person who created a file becomes its owner. 
- Group
	- A user- group can contain multiple users.
	- All users belonging to a group will have the same access permissions to the file. 
- Other
	- Any other user who has access to a file. 
	- This user has neither created the file, nor he belongs to a usergroup who could own the file.

Linux distinguish between these three user types to define user behavior. This is where Permissions set in.

## Permissions

Every file and directory has following 3 permissions defined for all the 3 owners discussed above.

- Read
	- File: open and read a file.
	- Directory: lists its content.
- Write
	- File: modify the contents of a file.
	- Directory: add, remove and rename files stored in the directory. 
- Execute
	- File: run it.

## File type and Access Permissions:

- r
	- read permission
- w 
	- write permission
- x
	- execute permission
- - 
	- no permission

Permits follow a 10 position system where:

- First position indicates whether it's a file or a directory.
	- -r--r--r-- 
		- the first '-' implies a file.
	- dr--r--r--
		- the 'd' implies a directory.

After the first position, groups of 3 positions represent the permits by ownership.

- First group: User
- Second group: Group
- Third group: Other

## Changing file/directory permissions with 'chmod'

The 'chmod' command stands for 'change mode'. Using the command, we can set permissions (read, write, execute) on a file/directory for the owner, group and others.

e.g.
```shell
chmod permissions filename
```

## Absolute(Numeric) Mode

In this mode, file permissions are not represented as characters but a three-digit octal number.

| Number | Number                | Symbol |
|--------|-----------------------|--------|
|    0   |     No Permission     |   ---  |
|    1   |        Execute        |   --x  |
|    2   |         Write         |   -w-  |
|    3   |    Execute + Write    |   -wx  |
|    4   |          Read         |   r--  |
|    5   |     Read + Execute    |   r-x  |
|    6   |      Read +Write      |   rw-  |
|    7   | Read + Write +Execute |   rwx  |


