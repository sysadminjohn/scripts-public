echo integrity > /sys/kernel/security/lockdown
sysctl -w kernel.kexec_load_disabled=1
sysctl -w kernel.kptr_restrict=2
sysctl -w kernel.dmesg_restrict=1
sysctl -w kernel.printk='3 3 3 3'
sysctl -w net.core.bpf_jit_harden=2
sysctl -w dev.tty.ldisc_autoload=1
sysctl -w dev.tty.ldisc_autoload=0
sysctl -w vm.unprivileged_userfaultfd=0
sysctl -w kernel.sysrq=4
sysctl -w net.ipv6.conf.all.accept_ra=0
sysctl -w net.ipv6.conf.default.accept_ra=0
sysctl -w net.ipv4.tcp_sack=0
sysctl -w net.ipv4.tcp_dsack=0
sysctl -w net.ipv4.tcp_fack=0
sysctl -w kernel.yama.ptrace_scope=2
sysctl -w kernel.core_pattern=/bin/false
sysctl -w fs.suid_dumpable=0
