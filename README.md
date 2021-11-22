# The Stoned Virus (Historical Malware)

| Reference      | Link         |
|----------------|--------------|
| Wikipedia      | [link](https://en.wikipedia.org/wiki/Stoned_\(computer_virus\)) |
| Malware Wiki   | [link](https://malwiki.org/index.php?title=Stoned) |
| BBS text file  | [stoned1.txt](stoned1.txt) |

Here is the original, de-compiled source code for the *Stoned* virus, a historical [virus](https://en.wikipedia.org/wiki/Computer_virus) released into the wild in 1987. 

| Version          | File                         |
|------------------|------------------------------|
| Original (A)     | [stoned-a.asm](stoned-a.asm) |
| Variant (B)      | [stoned-b.asm](stoned-b.asm) |
| Variant (Bloody) | [bloody.asm](bloody.asm)     |

When working with all malware (old or new), exercise caution before running any potentially malicious code. This repository is not intended for any malicious use, but simply to act as an educational reference for malware researchers, educators, InfoSec students, and anyone interested in historical code.

From the original *.txt file found on BBS systems:
> The following code is the entire boot sector of a 5.25" DSDD
> floppy disk using a dummy start address of 1000 and an
> offset of 0100. The code was identified as the Stoned virus
> by McAfee's VirusScan v86B and disassembled using a Quick
> Basic disassembly utility.

Excerpt from Wikipedia:
> Stoned is a boot sector computer virus created in 1987. It is one of the first viruses and is thought to have been written by a student in Wellington, New Zealand By 1989 it had spread widely in New Zealand and Australia, and variants became very common worldwide in the early 1990s.
> 
> A computer infected with the original version had a one in eight probability that the screen would declare: "Your PC is now Stoned!", a phrase found in infected boot sectors of infected floppy disks and master boot records of infected hard disks, along with the phrase "Legalise Marijuana". Later variants produced a range of other messages.
