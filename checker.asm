
_checker:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "types.h"
#include "user.h"

int main() {
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	push   -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	51                   	push   %ecx
   e:	83 ec 20             	sub    $0x20,%esp
    schedlog(10000);
  11:	68 10 27 00 00       	push   $0x2710
  16:	e8 e4 00 00 00       	call   ff <schedlog>
    char *empty = {"\0"};
    char *argv[] = {"shutdown", empty};
  1b:	c7 45 f0 07 01 00 00 	movl   $0x107,-0x10(%ebp)
  22:	c7 45 f4 10 01 00 00 	movl   $0x110,-0xc(%ebp)
    exec("shutdown", argv);
  29:	83 c4 08             	add    $0x8,%esp
  2c:	8d 45 f0             	lea    -0x10(%ebp),%eax
  2f:	50                   	push   %eax
  30:	68 07 01 00 00       	push   $0x107
  35:	e8 45 00 00 00       	call   7f <exec>
    exit();
  3a:	e8 08 00 00 00       	call   47 <exit>

0000003f <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
  3f:	b8 01 00 00 00       	mov    $0x1,%eax
  44:	cd 40                	int    $0x40
  46:	c3                   	ret    

00000047 <exit>:
SYSCALL(exit)
  47:	b8 02 00 00 00       	mov    $0x2,%eax
  4c:	cd 40                	int    $0x40
  4e:	c3                   	ret    

0000004f <wait>:
SYSCALL(wait)
  4f:	b8 03 00 00 00       	mov    $0x3,%eax
  54:	cd 40                	int    $0x40
  56:	c3                   	ret    

00000057 <pipe>:
SYSCALL(pipe)
  57:	b8 04 00 00 00       	mov    $0x4,%eax
  5c:	cd 40                	int    $0x40
  5e:	c3                   	ret    

0000005f <read>:
SYSCALL(read)
  5f:	b8 05 00 00 00       	mov    $0x5,%eax
  64:	cd 40                	int    $0x40
  66:	c3                   	ret    

00000067 <write>:
SYSCALL(write)
  67:	b8 10 00 00 00       	mov    $0x10,%eax
  6c:	cd 40                	int    $0x40
  6e:	c3                   	ret    

0000006f <close>:
SYSCALL(close)
  6f:	b8 15 00 00 00       	mov    $0x15,%eax
  74:	cd 40                	int    $0x40
  76:	c3                   	ret    

00000077 <kill>:
SYSCALL(kill)
  77:	b8 06 00 00 00       	mov    $0x6,%eax
  7c:	cd 40                	int    $0x40
  7e:	c3                   	ret    

0000007f <exec>:
SYSCALL(exec)
  7f:	b8 07 00 00 00       	mov    $0x7,%eax
  84:	cd 40                	int    $0x40
  86:	c3                   	ret    

00000087 <open>:
SYSCALL(open)
  87:	b8 0f 00 00 00       	mov    $0xf,%eax
  8c:	cd 40                	int    $0x40
  8e:	c3                   	ret    

0000008f <mknod>:
SYSCALL(mknod)
  8f:	b8 11 00 00 00       	mov    $0x11,%eax
  94:	cd 40                	int    $0x40
  96:	c3                   	ret    

00000097 <unlink>:
SYSCALL(unlink)
  97:	b8 12 00 00 00       	mov    $0x12,%eax
  9c:	cd 40                	int    $0x40
  9e:	c3                   	ret    

0000009f <fstat>:
SYSCALL(fstat)
  9f:	b8 08 00 00 00       	mov    $0x8,%eax
  a4:	cd 40                	int    $0x40
  a6:	c3                   	ret    

000000a7 <link>:
SYSCALL(link)
  a7:	b8 13 00 00 00       	mov    $0x13,%eax
  ac:	cd 40                	int    $0x40
  ae:	c3                   	ret    

000000af <mkdir>:
SYSCALL(mkdir)
  af:	b8 14 00 00 00       	mov    $0x14,%eax
  b4:	cd 40                	int    $0x40
  b6:	c3                   	ret    

000000b7 <chdir>:
SYSCALL(chdir)
  b7:	b8 09 00 00 00       	mov    $0x9,%eax
  bc:	cd 40                	int    $0x40
  be:	c3                   	ret    

000000bf <dup>:
SYSCALL(dup)
  bf:	b8 0a 00 00 00       	mov    $0xa,%eax
  c4:	cd 40                	int    $0x40
  c6:	c3                   	ret    

000000c7 <getpid>:
SYSCALL(getpid)
  c7:	b8 0b 00 00 00       	mov    $0xb,%eax
  cc:	cd 40                	int    $0x40
  ce:	c3                   	ret    

000000cf <sbrk>:
SYSCALL(sbrk)
  cf:	b8 0c 00 00 00       	mov    $0xc,%eax
  d4:	cd 40                	int    $0x40
  d6:	c3                   	ret    

000000d7 <sleep>:
SYSCALL(sleep)
  d7:	b8 0d 00 00 00       	mov    $0xd,%eax
  dc:	cd 40                	int    $0x40
  de:	c3                   	ret    

000000df <uptime>:
SYSCALL(uptime)
  df:	b8 0e 00 00 00       	mov    $0xe,%eax
  e4:	cd 40                	int    $0x40
  e6:	c3                   	ret    

000000e7 <yield>:
SYSCALL(yield)
  e7:	b8 16 00 00 00       	mov    $0x16,%eax
  ec:	cd 40                	int    $0x40
  ee:	c3                   	ret    

000000ef <shutdown>:
SYSCALL(shutdown)
  ef:	b8 17 00 00 00       	mov    $0x17,%eax
  f4:	cd 40                	int    $0x40
  f6:	c3                   	ret    

000000f7 <nicefork>:
SYSCALL(nicefork)
  f7:	b8 18 00 00 00       	mov    $0x18,%eax
  fc:	cd 40                	int    $0x40
  fe:	c3                   	ret    

000000ff <schedlog>:
SYSCALL(schedlog)
  ff:	b8 19 00 00 00       	mov    $0x19,%eax
 104:	cd 40                	int    $0x40
 106:	c3                   	ret    
