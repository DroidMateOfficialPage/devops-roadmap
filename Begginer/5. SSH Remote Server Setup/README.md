# SSH Remote Server Setup

## Overview
This project demonstrates how to configure SSH access using multiple SSH keys and SSH configuration aliases on a Linux-like environment.

## What was done

- Generated two SSH key pairs locally
- Configured a local SSH server environment (Remote Login)
- Added both public keys to authorized_keys
- Verified SSH access using both keys
- Connected using IP and hostname
- Configured SSH aliases using ~/.ssh/config

## SSH Access Examples

### Direct access
ssh -i ~/.ssh/devops_key_1 ivanaculibrk@ivanas-macbook-pro.local
ssh -i ~/.ssh/devops_key_2 ivanaculibrk@ivanas-macbook-pro.local

### Alias access
ssh local-dev
ssh local-dev-2

## Outcome
Successfully implemented secure SSH authentication with multiple keys and simplified developer access using SSH configuration.
